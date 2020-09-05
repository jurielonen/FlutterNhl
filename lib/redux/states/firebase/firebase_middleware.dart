import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/firebase/firebase_actions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class FirebaseMiddleware extends MiddlewareClass<AppState> {
  @override
  Future<Null> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is FirebaseInitializingAction) {
      try {
        FirebaseApp app = await Firebase.initializeApp();
        next(FirebaseInitializedAction(app));
        next(FirebaseRequestingAction());
        Crashlytics.instance.enableInDevMode = true;
        FlutterError.onError = Crashlytics.instance.recordFlutterError;

        //FirebaseAuth.instance.signOut();
        FirebaseAuth.instance.authStateChanges().listen((event) {
          print('Auth: $event');
        });
        User user = FirebaseAuth.instance.currentUser;
        if (user == null) {
          next(FirebaseNotSignedInAction());
        } else {
          next(FirebaseSignInSucceededAction(user));
        }
      } catch (error, stack) {
        //Crashlytics.instance.recordError(error, stack);
        next(FirebaseInitializationErrorAction(error));
      }
    } else if (action is FirebaseAnonymousSignInAction) {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.signInAnonymously();
        next(FirebaseSignInSucceededAction(userCredential.user));
      } catch (error) {
        next(FirebaseSignInErrorAction(error));
      }
    }
  }
}

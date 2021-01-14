import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/firebase/firebase_actions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import 'package:flutter/foundation.dart' show kDebugMode;

class FirebaseMiddleware extends MiddlewareClass<AppState> {
  @override
  Future<Null> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is FirebaseInitializingAction) {
      try {
        FirebaseApp app = await Firebase.initializeApp();
        next(FirebaseInitializedAction(app));
        if(kDebugMode){
          FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
        } else {
          FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
          FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
        }

      } catch (error) {
        next(FirebaseInitializationErrorAction(error));
      }

      try {
        next(FirebaseRequestingAction());
        User user = FirebaseAuth.instance.currentUser;
        print(user);
        if (user == null) {
          next(FirebaseNotSignedInAction());
        } else {
          await user.reload();
          if(user == null)
            next(FirebaseNotSignedInAction());
          else
            next(FirebaseSignInSucceededAction(user));
        }
      } catch(error){
        print(error);
        next(FirebaseSignInErrorAction(error));
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

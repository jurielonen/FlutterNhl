import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseInitializingAction extends FirebaseAction {}

class FirebaseRequestingAction extends FirebaseAction {}

class FirebaseInitializedAction extends FirebaseAction {
  final FirebaseApp app;

  FirebaseInitializedAction(this.app);
}

class FirebaseNotSignedInAction extends FirebaseAction {}

class FirebaseAnonymousSignInAction extends FirebaseAction {}

class FirebaseSignInSucceededAction extends FirebaseAction {
  final User user;
  FirebaseSignInSucceededAction(this.user);
}

class FirebaseInitializationErrorAction extends FirebaseAction {
  final Exception error;
  FirebaseInitializationErrorAction(this.error);
}

class FirebaseSignInErrorAction extends FirebaseAction {
  final Exception error;
  FirebaseSignInErrorAction(this.error);
}

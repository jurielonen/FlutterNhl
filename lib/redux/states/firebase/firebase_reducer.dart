import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/firebase/firebase_actions.dart';
import 'package:FlutterNhl/redux/states/firebase/firebase_state.dart';

FirebaseState firebaseReducer(FirebaseState state, dynamic action) {
  if (action is FirebaseInitializingAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if (action is FirebaseRequestingAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if (action is FirebaseInitializedAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.SUCCESS, app: action.app);
  } else if (action is FirebaseNotSignedInAction) {
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS, user: null);
  } else if (action is FirebaseAnonymousSignInAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if (action is FirebaseSignInSucceededAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.SUCCESS, user: action.user);
  } else if (action is FirebaseInitializationErrorAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.ERROR,
        error: action.error,
        app: null,
        user: null);
  } else if (action is FirebaseSignInErrorAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.ERROR, error: action.error, user: null);
  }
  return state;
}

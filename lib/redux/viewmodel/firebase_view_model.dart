import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/firebase/firebase_actions.dart';
import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';

class FirebaseViewModel {
  final LoadingStatus loadingStatus;
  final Exception error;
  final bool signedIn;
  final VoidCallback signIn;

  FirebaseViewModel(
      {@required this.loadingStatus,
      @required this.error,
      @required this.signedIn,
      @required this.signIn});

  static FirebaseViewModel fromStore(Store<AppState> store) {
    return FirebaseViewModel(
        loadingStatus: store.state.firebaseState.loadingStatus,
        error: store.state.firebaseState.error,
        signedIn: store.state.firebaseState.user != null,
        signIn: () => store.dispatch(FirebaseAnonymousSignInAction()));
  }

  @override
  int get hashCode =>
      loadingStatus.hashCode ^ error.hashCode ^ signedIn.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FirebaseViewModel &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          error == other.error &&
          signedIn == other.signedIn;
}

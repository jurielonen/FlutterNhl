import 'package:FlutterNhl/redux/enums.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

@immutable
class FirebaseState {
  final FirebaseApp app;
  final LoadingStatus loadingStatus;
  final Exception error;
  final User user;

  FirebaseState(
      {@required this.app,
      @required this.loadingStatus,
      @required this.error,
      @required this.user});

  factory FirebaseState.initial() {
    return FirebaseState(
      app: null,
      loadingStatus: LoadingStatus.IDLE,
      error: null,
      user: null,
    );
  }

  FirebaseState copyWith({
    FirebaseApp app,
    LoadingStatus loadingStatus,
    Exception error,
    User user,
  }) {
    return FirebaseState(
      app: app ?? this.app,
      loadingStatus: loadingStatus ?? this.loadingStatus,
      error: error ?? this.error,
      user: user ?? this.user,
    );
  }
}

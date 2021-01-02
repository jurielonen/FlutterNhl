import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:flutter/material.dart';

@immutable
class StarredState {
  final LoadingStatus loadingStatus;
  final List<Player> starredPlayers;
  final Exception error;

  StarredState(
      {@required this.loadingStatus,
      @required this.starredPlayers,
      @required this.error});

  factory StarredState.initial() {
    return StarredState(
        loadingStatus: LoadingStatus.IDLE, starredPlayers: [], error: null);
  }

  StarredState copyWith({
    LoadingStatus loadingStatus,
    List<Player> starredPlayers,
    Exception error,
  }) {
    return StarredState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        starredPlayers: starredPlayers ?? this.starredPlayers,
        error: error ?? this.error);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StarredState &&
          loadingStatus == other.loadingStatus &&
          starredPlayers == other.starredPlayers &&
          error == other.error;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^ starredPlayers.hashCode ^ error.hashCode;
}

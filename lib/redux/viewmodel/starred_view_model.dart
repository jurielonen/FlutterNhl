import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/starred/starred_action.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class StarredViewModel {
  final LoadingStatus loadingStatus;
  final Exception error;
  final List<Player> starredPlayers;
  final Function(Player player) deleteStar;

  StarredViewModel(
      {@required this.loadingStatus,
      @required this.error,
      @required this.starredPlayers,
      @required this.deleteStar});

  static StarredViewModel fromStore(Store<AppState> store) {
    return StarredViewModel(
        loadingStatus: store.state.starredState.loadingStatus,
        error: store.state.starredState.error,
        starredPlayers: store.state.starredState.starredPlayers,
        deleteStar: (Player player) =>
            store.dispatch(StarredDeletePlayerAction(player)));
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StarredViewModel &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          error == other.error &&
          starredPlayers == other.starredPlayers;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^ error.hashCode ^ starredPlayers.hashCode;
}

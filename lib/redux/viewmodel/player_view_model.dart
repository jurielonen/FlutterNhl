import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/player/player_action.dart';
import 'package:FlutterNhl/redux/states/player/player_selectors.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class PlayerViewModel {
  final LoadingStatus loadingStatus;
  final PlayerPage player;
  final String selectedStat;
  final GameLogParams selectedParams;
  final List<String> displayItems;
  final Exception error;
  final Function(String) getStats;
  final Function(GameLogParams) getGameLogs;

  PlayerViewModel(
      {@required this.loadingStatus,
      @required this.player,
      @required this.selectedStat,
      @required this.selectedParams,
      @required this.displayItems,
      @required this.error,
      @required this.getStats,
      @required this.getGameLogs});

  static PlayerViewModel fromStore(Store<AppState> store) {
    return PlayerViewModel(
        loadingStatus: store.state.playerState.loadingStatus,
        player: selectedPlayerSelector(store.state),
        selectedStat: store.state.playerState.selectedStat,
        selectedParams: store.state.playerState.gameLogParams,
        displayItems: statTypes(store.state),
        error: store.state.playerState.error,
        getStats: (String stat) =>
            store.dispatch(PlayerStatsChangedAction(stat)),
        getGameLogs: (GameLogParams params) =>
            store.dispatch(PlayerGetGameLogsAction(params)));
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is PlayerViewModel &&
              runtimeType == other.runtimeType &&
              loadingStatus == other.loadingStatus &&
              error == other.error &&
              selectedParams == other.selectedParams &&
              displayItems == other.displayItems &&
              selectedStat == other.selectedStat &&
              player == other.player;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      error.hashCode ^
      selectedParams.hashCode ^
      selectedStat.hashCode ^
      displayItems.hashCode ^
      player.hashCode;
}

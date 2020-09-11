import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/player/player_action.dart';
import 'package:FlutterNhl/redux/states/player/player_selectors.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class PlayerAppBarViewModel {
  final VoidCallback getStats;
  final VoidCallback getGameLogs;

  PlayerAppBarViewModel({
    @required this.getStats,
    @required this.getGameLogs});

  static PlayerAppBarViewModel fromStore(Store<AppState> store){
    return PlayerAppBarViewModel(
        getStats: () =>
            store.dispatch(PlayerStatsTabChangedAction()),
        getGameLogs: () =>
            store.dispatch(PlayerGameLogTabChangedAction()));
  }

  @override
  bool operator ==(Object other) => true;

  @override
  int get hashCode => getStats.hashCode ^ getGameLogs.hashCode;
}

class PlayerViewModel {
  final LoadingStatus loadingStatus;
  final PlayerPage player;
  final PlayerStatParams selectedStat;
  final GameLogParams selectedParams;
  final List<String> displayItems;
  final Exception error;
  final Function(PlayerStatParams) getStats;
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
        getStats: (PlayerStatParams stat) =>
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
              selectedStat == other.selectedStat;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      error.hashCode ^
      selectedParams.hashCode ^
      selectedStat.hashCode;
}

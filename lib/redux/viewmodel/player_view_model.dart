import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/player/player_action.dart';
import 'package:FlutterNhl/redux/states/player/player_selectors.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class PlayerViewModel {
  final LoadingStatus loadingStatus;
  final PlayerPage player;
  final String selectedStat;
  final String error;
  final Function(String) getStats;
  final Function() getGameLogs;

  PlayerViewModel(
      {@required this.loadingStatus,
      @required this.player,
      @required this.selectedStat,
      @required this.error,
      @required this.getStats,
      @required this.getGameLogs});

  static PlayerViewModel fromStore(Store<AppState> store) {
    return PlayerViewModel(
        loadingStatus: store.state.playerState.loadingStatus,
        player: selectedPlayerSelector(store.state),
        selectedStat: store.state.playerState.selectedStat,
        error: store.state.playerState.errorMsg,
        getStats: (String stat) =>
            store.dispatch(PlayerStatsChangedAction(stat)),
        getGameLogs: () => store.dispatch(PlayerGetGameLogsAction()));
  }
}

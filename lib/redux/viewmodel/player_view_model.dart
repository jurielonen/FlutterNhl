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
  final String selectedYear;
  final List<String> displayItems;
  final String error;
  final Function(String) getStats;
  final Function(String) getGameLogs;

  PlayerViewModel(
      {@required this.loadingStatus,
      @required this.player,
      @required this.selectedStat,
      @required this.selectedYear,
      @required this.displayItems,
      @required this.error,
      @required this.getStats,
      @required this.getGameLogs});

  static PlayerViewModel fromStore(Store<AppState> store) {
    return PlayerViewModel(
        loadingStatus: store.state.playerState.loadingStatus,
        player: selectedPlayerSelector(store.state),
        selectedStat: store.state.playerState.selectedStat,
        selectedYear: store.state.playerState.selectedYear,
        displayItems: statTypes(store.state),
        error: store.state.playerState.errorMsg,
        getStats: (String stat) =>
            store.dispatch(PlayerStatsChangedAction(stat)),
        getGameLogs: (String year) =>
            store.dispatch(PlayerGetGameLogsAction(year)));
  }
}

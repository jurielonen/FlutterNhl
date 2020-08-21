import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/team/team_action.dart';
import 'package:FlutterNhl/redux/states/team/team_selectors.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class TeamViewModel {
  final LoadingStatus loadingStatus;
  final TeamPage team;
  final String selectedStat;
  final GameLogParams selectedParams;
  final List<String> displayItems;
  final String error;
  final Function(String) getStats;
  final Function(GameLogParams) getGameLogs;
  final Function() getPlayers;

  TeamViewModel(
      {@required this.loadingStatus,
      @required this.team,
      @required this.selectedStat,
      @required this.selectedParams,
      @required this.displayItems,
      @required this.error,
      @required this.getStats,
      @required this.getGameLogs,
      @required this.getPlayers});

  static TeamViewModel fromStore(Store<AppState> store){
    return TeamViewModel(
      loadingStatus: store.state.teamState.loadingStatus,
      team: selectedTeamSelector(store.state),
        selectedStat: store.state.teamState.selectedStat,
      selectedParams: store.state.teamState.selectedParams,
      displayItems: store.state.config.getStatTypes(StatType.TEAM),
      error: store.state.teamState.errorMsg,
      getStats: (String stat) => store.dispatch(TeamStatsChangedAction(stat)),
      getGameLogs: (GameLogParams date) => store.dispatch(TeamDateChangedAction(date)),
      getPlayers: () => store.dispatch(TeamDownloadRoster()),
    );
  }
}

import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/team/team_action.dart';
import 'package:FlutterNhl/redux/states/team/team_selectors.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class TeamAppBarViewModel {
  final VoidCallback getStats;
  final VoidCallback getGameLogs;
  final VoidCallback getPlayers;

  TeamAppBarViewModel(
      {@required this.getStats,
      @required this.getGameLogs,
      @required this.getPlayers});

  static TeamAppBarViewModel fromStore(Store<AppState> store) {
    return TeamAppBarViewModel(
        getStats: () => store.dispatch(TeamStatsTabChangedAction()),
        getGameLogs: () => store.dispatch(TeamGameLogTabChangedAction()),
        getPlayers: () => store.dispatch(TeamRosterTabChangedAction()));
  }

  @override
  bool operator ==(Object other) => true;

  @override
  int get hashCode =>
      getStats.hashCode ^ getGameLogs.hashCode ^ getPlayers.hashCode;
}

class TeamViewModel {
  final LoadingStatus loadingStatus;
  final TeamPage team;
  final PageStatParams selectedStat;
  final PageGameLogParams selectedParams;
  final List<String> displayItems;
  final Exception error;
  final Function(PageStatParams) getStats;
  final Function(PageGameLogParams) getGameLogs;
  final VoidCallback getPlayers;

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

  static TeamViewModel fromStore(Store<AppState> store) {
    return TeamViewModel(
      loadingStatus: store.state.teamState.loadingStatus,
      team: selectedTeamSelector(store.state),
      selectedStat: store.state.teamState.selectedStat,
      selectedParams: store.state.teamState.selectedParams,
      displayItems: store.state.config.getStatTypes(StatType.TEAM),
      error: store.state.teamState.error,
      getStats: (PageStatParams stat) =>
          store.dispatch(TeamStatsChangedAction(stat)),
      getGameLogs: (PageGameLogParams date) =>
          store.dispatch(TeamDateChangedAction(date)),
      getPlayers: () => store.dispatch(TeamDownloadRoster()),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamViewModel &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          error == other.error &&
          selectedParams == other.selectedParams &&
          selectedStat == other.selectedStat &&
          displayItems == other.displayItems &&
          team == other.team;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      error.hashCode ^
      selectedParams.hashCode ^
      selectedStat.hashCode ^
      displayItems.hashCode ^
      team.hashCode;
}

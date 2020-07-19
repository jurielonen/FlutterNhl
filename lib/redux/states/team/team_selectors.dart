import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_selectors.dart';
import 'package:kt_dart/kt.dart';
import 'package:reselect/reselect.dart';

final selectedTeamIdSelector = (AppState state) => state.teamState.teamId;
final teamMapSelector = (AppState state) => state.teamState.teams;
final selectedStatSelector = (AppState state) => state.teamState.selectedStat;

final selectedTeamSelector =
    createSelector2(selectedTeamIdSelector, teamMapSelector, _getTeam);

TeamPage _getTeam(int teamId, KtMap<int, TeamPage> teams) {
  if (teams.containsKey(teamId))
    return teams[teamId];
  else
    return null;
}

final teamFilterTypeSelector =
    createSelector2(configSelector, selectedStatSelector, _getTeamFilterList);

List<String> _getTeamFilterList(Config config, String selectedStat) {
  return config.getFilterItems(StatType.TEAM, selectedStat);
}

import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/team/team_action.dart';
import 'package:FlutterNhl/redux/states/team/team_state.dart';
import 'package:kt_dart/collection.dart';

TeamState teamReducer(TeamState state, dynamic action) {
  print('TEAMSTATE: ${action.runtimeType}');
  if (action is TeamEntered) {
    return state.copyWith(
        teamId: action.teamId,
        selectedStat: 'summary',
        selectedDate: Config().regularSeasonEndDate);
  } else if (action is TeamRequestingAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if (action is TeamReceivedBioAction) {
    final teams = state.teams.toMutableMap();
    teams[action.team.id] = action.team;
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS, teams: teams);
  } else if (action is TeamStatsChangedAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.IDLE, selectedStat: action.stat);
  } else if (action is TeamStatsAlreadyDownloaded) {
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS);
  } else if (action is TeamReceivedStatAction) {
    final teams = state.teams.toMutableMap();
    teams[state.teamId].addStat(state.selectedStat, action.stats);
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS, teams: teams);
  } else if (action is TeamDateChangedAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.IDLE, selectedDate: action.date);
  } else if (action is TeamDateAlreadyDownloaded) {
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS);
  } else if (action is TeamReceivedDateAction) {
    final teams = state.teams.toMutableMap();
    teams[state.teamId].addGameLog(state.selectedDate, action.games);
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS, teams: teams);
  } else if (action is TeamDownloadRoster) {
    return state.copyWith(loadingStatus: LoadingStatus.IDLE);
  } else if (action is TeamRosterAlreadyDownloaded) {
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS);
  } else if (action is TeamReceivedRosterAction) {
    final teams = state.teams.toMutableMap();
    teams[state.teamId].rosterStats = action.players;
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS, teams: teams);
  } else if (action is TeamErrorAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.ERROR, errorMsg: action.error);
  }
  return state;
}

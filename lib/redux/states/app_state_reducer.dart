import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/award/award_reducer.dart';
import 'package:FlutterNhl/redux/states/draft/draft_reducer.dart';
import 'package:FlutterNhl/redux/states/game/game_reducer.dart';
import 'package:FlutterNhl/redux/states/player/player_reducer.dart';
import 'package:FlutterNhl/redux/states/playoffs/playoffs_reducer.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_reducer.dart';
import 'package:FlutterNhl/redux/states/search/search_reducer.dart';
import 'package:FlutterNhl/redux/states/standings/standings_reducer.dart';
import 'package:FlutterNhl/redux/states/stats/stats_reducer.dart';
import 'package:FlutterNhl/redux/states/team/team_reducer.dart';

///TODO: config to static
AppState appReducer(AppState state, dynamic action) {
  if (action is DownloadAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if (action is ConfigReceived) {
    return state.copyWith(
        loadingStatus: LoadingStatus.SUCCESS,
        statsState: statsReducer(state.statsState, action),
        config: Config());
  } else if (action is SeasonConfigReceived) {
    return state.copyWith(
        loadingStatus: LoadingStatus.SUCCESS,
        scheduleState: scheduleReducer(state.scheduleState, action),
        //TODO: add statsState to handle getting current season
        draftState: draftReducer(state.draftState, action),
        playoffsState: playoffsReducer(state.playoffsState, action),
        config: Config());
  } else if (action is PageChangedAction) {
    return state.copyWith(currentPage: action.page);
  } else if (action is ScheduleAction) {
    return state.copyWith(
      scheduleState: scheduleReducer(state.scheduleState, action),
    );
  } else if (action is StatsAction) {
    return state.copyWith(
      statsState: statsReducer(state.statsState, action),
    );
  } else if (action is PlayerAction) {
    return state.copyWith(
      playerState: playerReducer(state.playerState, action),
    );
  } else if (action is TeamAction) {
    return state.copyWith(teamState: teamReducer(state.teamState, action));
  } else if (action is DraftAction) {
    return state.copyWith(draftState: draftReducer(state.draftState, action));
  } else if (action is AwardAction) {
    return state.copyWith(awardState: awardReducer(state.awardState, action));
  } else if (action is GameAction) {
    return state.copyWith(gameState: gameReducer(state.gameState, action));
  } else if (action is ShowSnackBar) {
    return state.copyWith(showSnackBar: action.snackBarNotification);
  } else if (action is CloseSnackBar) {
    SnackBarNotification s = state.showSnackBar;
    s.show = false;
    return state.copyWith(showSnackBar: s);
  } else if (action is StandingsAction) {
    return state.copyWith(
        standingsState: standingsReducer(state.standingsState, action));
  } else if (action is SearchAction) {
    return state.copyWith(
        searchState: searchReducer(state.searchState, action));
  } else if (action is ErrorAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.ERROR, error: action.error);
  } else if(action is PlayoffsAction){
    return state.copyWith(playoffsState: playoffsReducer(state.playoffsState, action));
  }
  return state;
}

import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/playoffs/playoffs_action.dart';
import 'package:FlutterNhl/redux/states/playoffs/playoffs_state.dart';
import 'package:kt_dart/collection.dart';

PlayoffsState playoffsReducer(PlayoffsState state, dynamic action){
  if(action is PlayoffsRequestingAction){
    return state.copyWith(loadingStatus: LoadingStatus.LOADING, error: null);
  } else if(action is PlayoffsDownloadedAction){
    final playoffs = state.playoffs.toMutableMap();
    playoffs[action.playoff.season] = action.playoff;
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS, playoffs: playoffs, error: null);
  } else if(action is PlayoffsAlreadyDownloadedAction){
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS, error: null);
  } else if(action is PlayoffsError){
    return state.copyWith(loadingStatus: LoadingStatus.ERROR, error: action.error);
  } else if(action is PlayoffsEntered){
    if(state.selectedSeason == null){
      return state.copyWith(selectedSeason: Config.getCurrentSeason);
    }
  } else if(action is PlayoffsSeasonChangedAction){
    return state.copyWith(loadingStatus: LoadingStatus.IDLE, selectedSeason: action.season);
  } else if(action is SeasonConfigReceived){
    return state.copyWith(selectedSeason: Config.getCurrentSeason);
  }
  return state;
}
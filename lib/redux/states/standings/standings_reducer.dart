import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/states/standings/standings_action.dart';
import 'package:FlutterNhl/redux/states/standings/standings_state.dart';
import 'package:kt_dart/collection.dart';

StandingsState standingsReducer(StandingsState state, dynamic action){
  print('STANDINGSSTATE: ${action.runtimeType}');
  if(action is StandingsSeasonChangedAction){
    if(action.season != null){
      return state.copyWith(loadingStatus: LoadingStatus.IDLE, selectedSeason: action.season);
    } else {
      return state.copyWith(loadingStatus: LoadingStatus.IDLE, selectedSeason: Config.getCurrentSeason);
    }
  } else if(action is StandingsRequestingAction){
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if(action is StandingsAlreadyDownloadedAction){
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS);
  } else if(action is StandingsDownloaded){
    final standings = state.standings.toMutableMap();
    standings[action.standing.season] = action.standing;
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS, standings: standings);
  } else if(action is StandingsError){
    return state.copyWith(loadingStatus: LoadingStatus.ERROR, errorMsg: action.error);
  }
  return state;
}
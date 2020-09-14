import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/playoffs/series/series_action.dart';
import 'package:FlutterNhl/redux/states/playoffs/series/series_state.dart';

SeriesState seriesReducer(SeriesState state, dynamic action) {
  if (action is SeriesEntered) {
    return state.copyWith(
        loadingStatus: LoadingStatus.IDLE,
        selectedSeries: action.selectedSeries,
        error: null);
  } else if (action is SeriesExited) {
    return state.copyWith(
        loadingStatus: LoadingStatus.IDLE, selectedSeries: null, error: null);
  } else if (action is SeriesRequestingAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if (action is SeriesDownloadedGamesAction) {
    final series = state.selectedSeries;
    series.games = action.games;
    return state.copyWith(
        loadingStatus: LoadingStatus.SUCCESS, selectedSeries: series);
  } else if (action is SeriesAlreadyDownloadedGamesAction) {
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS);
  } else if (action is SeriesErrorAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.ERROR, error: action.error);
  }
  return state;
}

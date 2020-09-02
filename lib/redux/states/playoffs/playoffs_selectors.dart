import 'package:FlutterNhl/redux/models/playoffs/playoffs.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:kt_dart/kt.dart';
import 'package:reselect/reselect.dart';

final selectedSeasonSelector = (AppState state) => state.playoffsState.selectedSeason;
final playoffsSelector = (AppState state) => state.playoffsState.playoffs;

final selectedPlayoffsSelector = createSelector2(selectedSeasonSelector, playoffsSelector, _getPlayoffs);

Playoff _getPlayoffs(String season, KtMap<String, Playoff> playoffs){
  if(playoffs.containsKey(season))
    return playoffs[season];
  return null;
}
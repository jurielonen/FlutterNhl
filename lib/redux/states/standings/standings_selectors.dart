import 'package:FlutterNhl/redux/models/standings/standings.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:kt_dart/collection.dart';
import 'package:reselect/reselect.dart';

final selectedSeasonSelector = (AppState state) => state.standingsState.selectedSeason;
final standingsSelector = (AppState state) => state.standingsState.standings;

final selectedStandingSelector = createSelector2(selectedSeasonSelector, standingsSelector, _getStanding);

Standing _getStanding(String season, KtMap<String, Standing> standings){
  if(standings.containsKey(season))
    return standings[season];
  return null;
}
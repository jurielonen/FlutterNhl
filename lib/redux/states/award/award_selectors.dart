import 'package:FlutterNhl/redux/models/award/award.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:kt_dart/kt.dart';
import 'package:reselect/reselect.dart';

final awardsMapSelector = (AppState state) => state.awardState.awards;
final selectedAwardIdSelector = (AppState state) => state.awardState.selectedAward;

final selectedAwardSelector = createSelector2(awardsMapSelector, selectedAwardIdSelector, _getAward);

AwardTableSource _getAward(KtMap<int, AwardTableSource> awards, int selectedAward){
  if(awards.containsKey(selectedAward)){
    return awards[selectedAward];
  } else {
    return null;
  }
}
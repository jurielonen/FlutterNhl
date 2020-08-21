import 'package:FlutterNhl/redux/models/draft/draft.dart';
import 'package:FlutterNhl/redux/models/draft/draft_table_source.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:kt_dart/collection.dart';
import 'package:reselect/reselect.dart';

final draftsMapSelector = (AppState state) => state.draftState.drafts;
final selectedYearSelector = (AppState state) => state.draftState.selectedYear;

final selectedDraftSelector = createSelector2(draftsMapSelector, selectedYearSelector, _getDraft);

DraftTableSource _getDraft(KtMap<int, DraftTableSource> drafts, int year){
  if(drafts.containsKey(year)){
    return drafts[year];
  } else {
    return null;
  }
}
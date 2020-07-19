import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/draft/draft.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/draft/draft_action.dart';
import 'package:FlutterNhl/redux/states/draft/draft_selectors.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class DraftViewModel {
  final LoadingStatus loadingStatus;
  final Draft selectedDraft;
  final int selectedYear;
  final String errorMsg;
  final Function(int) getYear;

  DraftViewModel(
      {@required this.loadingStatus,
      @required this.selectedDraft,
      @required this.selectedYear,
      @required this.errorMsg,
      @required this.getYear});

  static DraftViewModel fromStore(Store<AppState> store) {
    return DraftViewModel(
        loadingStatus: store.state.draftState.loadingStatus,
        selectedDraft: selectedDraftSelector(store.state),
        selectedYear: store.state.draftState.selectedYear,
        errorMsg: store.state.draftState.errorMsg,
        getYear: (int year) => store.dispatch(DraftChangedAction(year)));
  }
}

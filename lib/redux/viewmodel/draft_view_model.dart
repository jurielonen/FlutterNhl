import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/draft/draft_table_source.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/draft/draft_action.dart';
import 'package:FlutterNhl/redux/states/draft/draft_selectors.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class DraftViewModel {
  final LoadingStatus loadingStatus;
  final DraftTableSource selectedDraft;
  final int selectedYear;
  final Exception error;
  final Function(int) getYear;

  DraftViewModel(
      {@required this.loadingStatus,
      @required this.selectedDraft,
      @required this.selectedYear,
      @required this.error,
      @required this.getYear});

  static DraftViewModel fromStore(Store<AppState> store) {
    return DraftViewModel(
        loadingStatus: store.state.draftState.loadingStatus,
        selectedDraft: selectedDraftSelector(store.state),
        selectedYear: store.state.draftState.selectedYear,
        error: store.state.draftState.error,
        getYear: (int year) => store.dispatch(DraftChangedAction(year)));
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is DraftViewModel &&
              runtimeType == other.runtimeType &&
              loadingStatus == other.loadingStatus &&
              error == other.error &&
              selectedYear == other.selectedYear;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      error.hashCode ^
      selectedYear.hashCode;
}

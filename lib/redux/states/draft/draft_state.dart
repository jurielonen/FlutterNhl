import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/draft/draft.dart';
import 'package:FlutterNhl/redux/models/draft/draft_table_source.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/collection.dart';

@immutable
class DraftState {
  final LoadingStatus loadingStatus;
  final KtMap<int, DraftTableSource> drafts;
  final int selectedYear;
  final String errorMsg;

  DraftState(
      {@required this.loadingStatus,
      @required this.drafts,
      @required this.selectedYear,
      @required this.errorMsg});

  factory DraftState.initial() {
    return DraftState(
        loadingStatus: LoadingStatus.IDLE,
        drafts: emptyMap(),
        selectedYear: DateTime.now().year,
        errorMsg: '');
  }

  DraftState copyWith(
      {LoadingStatus loadingStatus,
      KtMap<int, DraftTableSource> drafts,
      int selectedYear,
      String errorMsg}) {
    return DraftState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        drafts: drafts ?? this.drafts,
        selectedYear: selectedYear ?? this.selectedYear,
        errorMsg: errorMsg ?? this.errorMsg);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DraftState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          drafts == other.drafts &&
          selectedYear == other.selectedYear &&
          errorMsg == other.errorMsg;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      drafts.hashCode ^
      selectedYear.hashCode ^
      errorMsg.hashCode;
}

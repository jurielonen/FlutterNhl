import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/draft/draft_table_source.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/collection.dart';

@immutable
class DraftState {
  final LoadingStatus loadingStatus;
  final KtMap<int, DraftTableSource> drafts;
  final int selectedYear;
  final Exception error;

  DraftState(
      {@required this.loadingStatus,
      @required this.drafts,
      @required this.selectedYear,
      @required this.error});

  factory DraftState.initial() {
    return DraftState(
        loadingStatus: LoadingStatus.IDLE,
        drafts: emptyMap(),
        selectedYear: DateTime.now().year,
        error: null);
  }

  DraftState copyWith(
      {LoadingStatus loadingStatus,
      KtMap<int, DraftTableSource> drafts,
      int selectedYear,
      Exception error}) {
    return DraftState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        drafts: drafts ?? this.drafts,
        selectedYear: selectedYear ?? this.selectedYear,
        error: error ?? this.error);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DraftState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          drafts == other.drafts &&
          selectedYear == other.selectedYear &&
          error == other.error;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      drafts.hashCode ^
      selectedYear.hashCode ^
      error.hashCode;
}

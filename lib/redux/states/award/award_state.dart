import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/award/award.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/collection.dart';

@immutable
class AwardState {
  final LoadingStatus loadingStatus;
  final KtMap<int, AwardTableSource> awards;
  final int selectedAward;
  final String errorMsg;

  AwardState(
      {@required this.loadingStatus,
      @required this.awards,
      @required this.selectedAward,
      @required this.errorMsg});

  factory AwardState.initial() {
    return AwardState(
        loadingStatus: LoadingStatus.IDLE,
        awards: emptyMap(),
        selectedAward: null,
        errorMsg: '');
  }

  AwardState copyWith(
      {LoadingStatus loadingStatus,
      KtMap<int, AwardTableSource> awards,
      int selectedAward,
      String errorMsg}) {
    return AwardState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        awards: awards ?? this.awards,
        selectedAward: selectedAward ?? this.selectedAward,
        errorMsg: errorMsg ?? this.errorMsg);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AwardState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          awards == other.awards &&
          selectedAward == other.selectedAward &&
          errorMsg == other.errorMsg;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      awards.hashCode ^
      selectedAward.hashCode ^
      errorMsg.hashCode;
}

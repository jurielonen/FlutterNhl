import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/playoffs/playoffs.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';

@immutable
class PlayoffsState {
  final LoadingStatus loadingStatus;
  final KtMap<String, Playoff> playoffs;
  final String selectedSeason;
  final Exception error;

  PlayoffsState(
      {@required this.loadingStatus,
      @required this.playoffs,
      @required this.selectedSeason,
      @required this.error});

  factory PlayoffsState.initial() {
    return PlayoffsState(
        loadingStatus: LoadingStatus.IDLE,
        playoffs: emptyMap(),
        selectedSeason: null,
        error: null);
  }

  PlayoffsState copyWith(
      {LoadingStatus loadingStatus,
      KtMap<String, Playoff> playoffs,
      String selectedSeason,
      Exception error}) {
    return PlayoffsState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        playoffs: playoffs ?? this.playoffs,
        selectedSeason: selectedSeason ?? this.selectedSeason,
        error: error ?? this.error);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayoffsState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          playoffs == other.playoffs &&
          selectedSeason == other.selectedSeason &&
          error == other.error;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      playoffs.hashCode ^
      selectedSeason.hashCode ^
      error.hashCode;
}

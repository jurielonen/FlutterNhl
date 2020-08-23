import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/standings/standings.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/collection.dart';

@immutable
class StandingsState {
  final LoadingStatus loadingStatus;
  final KtMap<String, Standing> standings;
  final String selectedSeason;
  final Exception error;

  StandingsState({@required this.loadingStatus, @required this.standings, @required this.selectedSeason, @required this.error});

  factory StandingsState.initial(){
    return StandingsState(loadingStatus: LoadingStatus.IDLE, standings: emptyMap(), selectedSeason: null, error: null);
  }

  StandingsState copyWith(
      {LoadingStatus loadingStatus,
        KtMap<String, Standing> standings,
        String selectedSeason,
        Exception errorMsg}) {
    return StandingsState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        standings: standings ?? this.standings,
        selectedSeason: selectedSeason ?? this.selectedSeason,
        error: error ?? this.error);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is StandingsState &&
              runtimeType == other.runtimeType &&
              loadingStatus == other.loadingStatus &&
              standings == other.standings &&
              selectedSeason == other.selectedSeason &&
              error == other.error;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      standings.hashCode ^
      selectedSeason.hashCode ^
      error.hashCode;
}
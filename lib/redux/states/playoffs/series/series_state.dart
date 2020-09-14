import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/playoffs/playoffs.dart';
import 'package:flutter/foundation.dart';

@immutable
class SeriesState {
  final LoadingStatus loadingStatus;
  final Series selectedSeries;
  final Exception error;

  SeriesState(
      {@required this.loadingStatus,
      @required this.selectedSeries,
      @required this.error});

  factory SeriesState.initial() {
    return SeriesState(
      loadingStatus: LoadingStatus.IDLE,
      selectedSeries: null,
      error: null,
    );
  }

  SeriesState copyWith({
    LoadingStatus loadingStatus,
    Series selectedSeries,
    Exception error,
  }) {
    return SeriesState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        selectedSeries: selectedSeries ?? this.selectedSeries,
        error: error ?? this.error);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeriesState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          selectedSeries == other.selectedSeries &&
          error == other.error;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^ selectedSeries.hashCode ^ error.hashCode;
}

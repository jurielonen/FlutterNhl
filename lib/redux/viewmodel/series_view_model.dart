import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/playoffs/playoffs.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class SeriesViewModel {
  final LoadingStatus loadingStatus;
  final Series series;
  final Exception error;

  SeriesViewModel(
      {@required this.loadingStatus,
      @required this.series,
      @required this.error});

  static SeriesViewModel fromStore(Store<AppState> store) {
    return SeriesViewModel(
        loadingStatus: store.state.seriesState.loadingStatus,
        series: store.state.seriesState.selectedSeries,
        error: store.state.seriesState.error);
  }

  @override
  int get hashCode => loadingStatus.hashCode ^ series.hashCode ^ error.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeriesViewModel &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          series == other.series &&
          error == other.error;
}

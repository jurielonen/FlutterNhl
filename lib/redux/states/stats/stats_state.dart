import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/stats/stats_table_source.dart';
import 'package:meta/meta.dart';

@immutable
class StatsState {
  StatsState(
      {@required this.loadingStatus,
      @required this.selectedParams,
      @required this.error,
      @required this.downloadedStats});

  final LoadingStatus loadingStatus;
  final StatParameters selectedParams;
  final StatTableSource downloadedStats;
  final Exception error;

  factory StatsState.initial() {
    return StatsState(
      loadingStatus: LoadingStatus.IDLE,
      selectedParams: StatParameters.initial(),
      downloadedStats: null,
      error: null,
    );
  }

  StatsState copyWith(
      {LoadingStatus loadingStatus,
      StatParameters selectedParams,
      StatTableSource downloadedStats,
      Exception error}) {
    return StatsState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      selectedParams: selectedParams ?? this.selectedParams,
      downloadedStats: downloadedStats ?? this.downloadedStats,
      error: error ?? this.error,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatsState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          selectedParams == other.selectedParams &&
          downloadedStats == other.downloadedStats &&
          error == other.error;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      selectedParams.hashCode ^
      downloadedStats.hashCode ^
      error.hashCode;
}

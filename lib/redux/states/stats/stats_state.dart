import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/stats/stats_table_source.dart';
import 'package:meta/meta.dart';

@immutable
class StatsState {
  StatsState(
      {@required this.loadingStatus,
      @required this.selectedParams,
      @required this.errorMsg,
      @required this.downloadedStats});

  final LoadingStatus loadingStatus;
  final StatParameters selectedParams;
  final StatTableSource downloadedStats;
  final String errorMsg;

  factory StatsState.initial() {
    return StatsState(
      loadingStatus: LoadingStatus.IDLE,
      selectedParams: StatParameters.initial(),
      downloadedStats: null,
      errorMsg: '',
    );
  }

  StatsState copyWith(
      {LoadingStatus loadingStatus,
      StatParameters selectedStat,
      StatTableSource downloadedStats,
      String errorMsg}) {
    return StatsState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      selectedParams: selectedStat ?? this.selectedParams,
      downloadedStats: downloadedStats ?? this.downloadedStats,
      errorMsg: errorMsg ?? this.errorMsg,
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
          errorMsg == other.errorMsg;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      selectedParams.hashCode ^
      downloadedStats.hashCode ^
      errorMsg.hashCode;
}

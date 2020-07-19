import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/stats/stats_table_source.dart';
import 'package:meta/meta.dart';

@immutable
class StatsState {
  StatsState(
      {@required this.loadingStatus,
      //@required this.parameters,
      @required this.selectedParams,
      @required this.errorMsg,
      @required this.downloadedStats});

  final LoadingStatus loadingStatus;
  //final KtMap<ParamType, StatParameters> parameters;
  final StatParameters selectedParams;
  final StatsTableSource downloadedStats;
  final String errorMsg;

  factory StatsState.initial() {
    return StatsState(
        loadingStatus: LoadingStatus.IDLE,
        //parameters: emptyMap(),
        selectedParams: StatParameters.initial(),
        downloadedStats: null,
        errorMsg: '');
  }

  StatsState copyWith(
      {LoadingStatus loadingStatus,
      //KtMap<ParamType, StatParameters> parameters,
      StatParameters selectedStat,
      StatsTableSource downloadedStats,
      String errorMsg}) {
    return StatsState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      //parameters: parameters ?? this.parameters,
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
          //parameters == other.parameters &&
          selectedParams == other.selectedParams &&
          downloadedStats == other.downloadedStats &&
          errorMsg == other.errorMsg;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      //parameters.hashCode ^
      selectedParams.hashCode ^
      downloadedStats.hashCode ^
      errorMsg.hashCode;
}

import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_selectors.dart';
import 'package:FlutterNhl/redux/states/stats/stats_action.dart';
import 'package:FlutterNhl/redux/states/stats/stats_selectors.dart';
import 'package:FlutterNhl/redux/states/stats/stats_table_source.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';

class StatsAppBarViewModel {
  final Function(StatType) typeChanged;
  final StatType type;

  StatsAppBarViewModel({@required this.typeChanged, @required this.type});

  static StatsAppBarViewModel fromStore(Store<AppState> store) {
    return StatsAppBarViewModel(
        typeChanged: (StatType type) => store.dispatch(
            StatsParamTypeChangedAction(
                configSelector(store.state).checkParamType(type))),
        type: store.state.statsState.selectedParams.paramType.type);
  }

  @override
  int get hashCode => type.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatsAppBarViewModel &&
          runtimeType == other.runtimeType &&
          type == other.type;
}

class StatFilterBarViewModel {
  final StatParameters selectedParams;
  final List<String> statTypes;
  final Function() nextPage;
  final Function() previousPage;
  final Function(String) statChanged;
  final Function(StatParameters) paramsChanged;

  StatFilterBarViewModel({
    @required this.selectedParams,
    @required this.statTypes,
    @required this.statChanged,
    @required this.paramsChanged,
    @required this.nextPage,
    @required this.previousPage,
  });

  static StatFilterBarViewModel fromStore(Store<AppState> store) {
    return StatFilterBarViewModel(
        selectedParams: store.state.statsState.selectedParams,
        statTypes: statTypesSelector(store.state),
        statChanged: (String stat) => store.dispatch(
            StatsParamTypeChangedAction(configSelector(store.state)
                .getParamType(selectedParamType(store.state).type, stat))),
        paramsChanged: (StatParameters statParameters) =>
            store.dispatch(StatsParametersChangedAction(statParameters)),
        nextPage: () => store.dispatch(StatsNextAction()),
        previousPage: () => store.dispatch(StatsPreviousAction()));
  }

  @override
  int get hashCode => selectedParams.hashCode ^ statTypes.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatFilterBarViewModel &&
          runtimeType == other.runtimeType &&
          selectedParams == other.selectedParams &&
          statTypes == other.statTypes;
}

class StatsBodyViewModel {
  final LoadingStatus loadingStatus;
  final Exception error;
  final StatParameters selectedParams;
  final StatTableSource downloadedStats;
  final Function(StatParameters) paramsChanged;

  StatsBodyViewModel(
      {@required this.loadingStatus,
      @required this.error,
      @required this.selectedParams,
      @required this.downloadedStats,
      @required this.paramsChanged});

  static StatsBodyViewModel fromStore(Store<AppState> store) {
    return StatsBodyViewModel(
        loadingStatus: store.state.statsState.loadingStatus,
        error: store.state.statsState.error,
        selectedParams: store.state.statsState.selectedParams,
        downloadedStats: store.state.statsState.downloadedStats,
        paramsChanged: (StatParameters statParameters) =>
            store.dispatch(StatsParametersChangedAction(statParameters)));
  }

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      error.hashCode ^
      selectedParams.hashCode ^
      downloadedStats.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatsBodyViewModel &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          error == other.error &&
          selectedParams == other.selectedParams &&
          downloadedStats == other.downloadedStats;
}

class StatsViewModel {
  final LoadingStatus loadingStatus;
  final StatParameters selectedParams;
  final StatTableSource downloadedStats;
  final List<String> displayItems;
  final List<String> statTypes;
  final Exception error;
  final Function(StatType) typeChanged;
  final Function(String) statChanged;
  final Function(StatParameters) paramsChanged;
  final Function() nextPage;
  final Function() previousPage;
  final StatType selectedStatType;

  StatsViewModel(
      {@required this.loadingStatus,
      @required this.selectedParams,
      @required this.downloadedStats,
      @required this.displayItems,
      @required this.statTypes,
      @required this.error,
      @required this.typeChanged,
      @required this.statChanged,
      @required this.paramsChanged,
      @required this.nextPage,
      @required this.previousPage,
      @required this.selectedStatType});

  static StatsViewModel fromStore(Store<AppState> store) {
    return StatsViewModel(
      loadingStatus: store.state.statsState.loadingStatus,
      selectedParams: store.state.statsState.selectedParams,
      downloadedStats: store.state.statsState.downloadedStats,
      displayItems: filterTypeSelector(store.state),
      statTypes: statTypesSelector(store.state),
      error: store.state.statsState.error,
      typeChanged: (StatType type) => store.dispatch(
          StatsParamTypeChangedAction(
              configSelector(store.state).checkParamType(type))),
      statChanged: (String stat) => store.dispatch(StatsParamTypeChangedAction(
          configSelector(store.state)
              .getParamType(selectedParamType(store.state).type, stat))),
      paramsChanged: (StatParameters statParameters) =>
          store.dispatch(StatsParametersChangedAction(statParameters)),
      nextPage: () => store.dispatch(StatsNextAction()),
      previousPage: () => store.dispatch(StatsPreviousAction()),
      selectedStatType: selectedStatTypeSelector(store.state),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatsViewModel &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          error == other.error &&
          selectedParams == other.selectedParams &&
          displayItems == other.displayItems &&
          downloadedStats == other.downloadedStats;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      error.hashCode ^
      selectedParams.hashCode ^
      displayItems.hashCode ^
      downloadedStats.hashCode;
}

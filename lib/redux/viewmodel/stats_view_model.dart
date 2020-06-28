import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_selectors.dart';
import 'package:FlutterNhl/redux/states/stats/stats_action.dart';
import 'package:FlutterNhl/redux/states/stats/stats_selectors.dart';
import 'package:FlutterNhl/redux/states/stats/stats_table_source.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';

class StatsViewModel {
  final LoadingStatus loadingStatus;
  final StatParameters selectedParams;
  final StatsTableSource downloadedStats;
  final List<String> displayItems;
  final List<String> statTypes;
  final String errorMsg;
  final Function(StatType) typeChanged;
  final Function(String) statChanged;
  final Function(StatParameters) paramsChanged;
  final Function() nextPage;
  final Function() previousPage;

  StatsViewModel(
      {@required this.loadingStatus,
      @required this.selectedParams,
      @required this.downloadedStats,
      @required this.displayItems,
      @required this.statTypes,
      @required this.errorMsg,
      @required this.typeChanged,
      @required this.statChanged,
      @required this.paramsChanged,
      @required this.nextPage,
      @required this.previousPage});

  static StatsViewModel fromStore(Store<AppState> store) {
    return StatsViewModel(
      loadingStatus: store.state.statsState.loadingStatus,
      selectedParams: store.state.statsState.selectedParams,
      downloadedStats: store.state.statsState.downloadedStats,
      displayItems: filterTypeSelector(store.state),
      statTypes: statTypesSelector(store.state),
      errorMsg: store.state.statsState.errorMsg,
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
    );
  }
}

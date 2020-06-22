import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/stats/stats_action.dart';
import 'package:FlutterNhl/redux/states/stats/stats_middleware.dart';
import 'package:FlutterNhl/redux/states/stats/stats_selectors.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';

class StatsViewModel {
  final LoadingStatus loadingStatus;
  final StatParameters selectedParams;
  final StatsTableSource downloadedStats;
  final List<String> displayItems;
  final String errorMsg;
  final Function(ParamType) paramsChanged;
  final Function() nextPage;
  final Function() previousPage;

  StatsViewModel(
      {@required this.loadingStatus,
      @required this.selectedParams,
      @required this.downloadedStats,
      @required this.displayItems,
      @required this.errorMsg,
      @required this.paramsChanged,
      @required this.nextPage,
      @required this.previousPage});

  static StatsViewModel fromStore(Store<AppState> store) {
    return StatsViewModel(
      loadingStatus: store.state.statsState.loadingStatus,
      selectedParams: store.state.statsState.selectedParams,
      downloadedStats: store.state.statsState.downloadedStats,
      displayItems: filterTypeSelector(store.state),
      errorMsg: store.state.statsState.errorMsg,
      paramsChanged: (ParamType paramType) =>
          store.dispatch(StatChangedAction(paramType)),
      nextPage: () => store.dispatch(StatsNextAction()),
      previousPage: () => store.dispatch(StatsPreviousAction()),
    );
  }
}

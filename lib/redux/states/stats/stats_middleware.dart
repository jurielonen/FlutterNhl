import 'package:FlutterNhl/redux/api/nhl_api.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/stats/stats_action.dart';
import 'package:FlutterNhl/redux/states/stats/stats_selectors.dart';
import 'package:FlutterNhl/redux/states/stats/stats_table_source.dart';
import 'package:redux/redux.dart';

class StatsMiddleware extends MiddlewareClass<AppState> {
  final NHLApi api;
  StatsMiddleware(this.api);

  @override
  Future<Null> call(Store<AppState> store, action, next) async {
    next(action);
    if (action is StatsEntered) {
      if (store.state.config.isEmpty()) {
        next(DownloadAction());
        await getConfig(store, next, api);
      }
      _getStats(store, next);
    } else if (action is StatsParamTypeChangedAction ||
        action is StatsParametersChangedAction ||
        action is StatsPreviousAction ||
        action is StatsNextAction) {
      await _getStats(store, next);
    }
  }

  Future<Null> _getStats(Store<AppState> store, NextDispatcher next) async {
    if (store.state.statsState.loadingStatus != LoadingStatus.LOADING) {
      next(StatsRequestingAction());
      try {
        StatParameters statParameters = store.state.statsState.selectedParams;
        StatResponse tStats = await api.fetchStats(statParameters);
        next(
          StatsReceived(
              StatTableSource(
                  type: statParameters.paramType.type,
                  displayItems: filterTypeSelector(store.state),
                  stats: tStats.stats,
                  startIndex: store.state.statsState.selectedParams.start,
                sortColumn: store.state.statsState.selectedParams.getSortColumn,
                ascending: store.state.statsState.selectedParams.getAscending,),
              tStats.total),
        );
      } catch (e) {
        next(StatsErrorAction(e));
      }
    }
  }
}

Future<Null> getConfig(
    Store<AppState> store, NextDispatcher next, NHLApi api) async {
  if (store.state.statsState.loadingStatus != LoadingStatus.LOADING) {
    next(StatsRequestingAction());
    try {
      await api.fetchConfig();
      next(ConfigReceived());
      StatParameters statParameters = store.state.statsState.selectedParams;
      StatResponse tStats = await api.fetchStats(statParameters);
      next(
        StatsReceived(
            StatTableSource(
                type: statParameters.paramType.type,
                displayItems: filterTypeSelector(store.state),
                stats: tStats.stats,
                startIndex: store.state.statsState.selectedParams.start,
              sortColumn: store.state.statsState.selectedParams.getSortColumn,
              ascending: store.state.statsState.selectedParams.getAscending,
            ),
            tStats.total),
      );
    } catch (e) {
      next(StatsErrorAction(e));
    }
  }
}

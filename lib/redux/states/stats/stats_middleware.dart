import 'package:FlutterNhl/redux/api/nhl_api.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
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
      if (store.state.statsState.config.isEmpty()) {
        _getConfig(store, next);
      }
      _getStats(store, next);
    } else if (action is StatsParamTypeChangedAction ||
        action is StatsParametersChangedAction ||
        action is StatsPreviousAction ||
        action is StatsNextAction) {
      _getStats(store, next);
    }
  }

  Future<Null> _getConfig(Store<AppState> store, NextDispatcher next) async {
    if (store.state.statsState.loadingStatus != LoadingStatus.LOADING) {
      next(StatsRequestingAction());
      try {
        Config temp = await api.fetchConfig();
        next(StatsConfigReceived(temp));
        StatParameters statParameters = store.state.statsState.selectedParams;
        List<dynamic> tStats = await api.fetchStats(statParameters);
        next(StatsReceived(StatsTableSource.fromData(
            statParameters.paramType.type,
            tStats,
            filterTypeSelector(store.state))));
      } catch (e) {
        next(StatsErrorAction(e.toString()));
      }
    }
  }

  Future<Null> _getStats(Store<AppState> store, NextDispatcher next) async {
    if (store.state.statsState.loadingStatus != LoadingStatus.LOADING) {
      next(StatsRequestingAction());
      try {
        StatParameters statParameters = store.state.statsState.selectedParams;
        List<dynamic> tStats = await api.fetchStats(statParameters);

        next(StatsReceived(StatsTableSource.fromData(
            statParameters.paramType.type,
            tStats,
            filterTypeSelector(store.state))));
      } catch (e) {
        next(StatsErrorAction(e.toString()));
      }
    }
  }
}

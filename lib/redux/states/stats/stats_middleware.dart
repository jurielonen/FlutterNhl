import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/nhl_api.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/constants.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/stats/stats_action.dart';
import 'package:FlutterNhl/redux/states/stats/stats_selectors.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class StatsTableSource {
  final List<DataColumn> columns;
  final List<DataRow> rows;

  StatsTableSource(this.columns, this.rows);

  factory StatsTableSource.initial() {
    return StatsTableSource([], []);
  }

  factory StatsTableSource.fromData(
      List<dynamic> stats, List<String> displayItems) {
    List<DataColumn> tColumns = [];

    tColumns.add(DataColumn(
        label: Text('Player', style: TextStyle(fontStyle: FontStyle.italic))));
    displayItems.forEach((element) {
      //if(element != 'playerId' && element != 'skaterFullName' && element != 'seasonId' && element != 'teamAbbrevs' && element != 'shootsCatches' && element != 'positionCode')
      tColumns.add(DataColumn(
          label: Text(getColumnAbb(element),
              style: TextStyle(fontStyle: FontStyle.italic)),
          tooltip: getColumnTooltip(element)));
    });
    List<DataRow> tRows = [];

    stats.forEach((statRow) {
      if (statRow is Map<String, dynamic>) {
        List<DataCell> tCells = [];
        tCells.add(DataCell(Text.rich(TextSpan(
            text: getJsonString('skaterFullName', statRow),
            //style: Styles.playerTableText,
            children: <TextSpan>[
              TextSpan(
                  text: ' ' + getJsonString('teamAbbrevs', statRow),
                  style: Styles.playerTableTeamText)
            ]))));
        displayItems.forEach((element) {
          if (statRow.containsKey(element)) {
            tCells.add(DataCell(Text(statRow[element].toString())));
          }
        });
        assert(tCells.length == tColumns.length);
        tRows.add(DataRow(cells: tCells));
      }
    });

    return StatsTableSource(tColumns, tRows);
  }
}

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
    } else if (action is StatChangedAction ||
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
        List<dynamic> tStats =
            await api.fetchStats(store.state.statsState.selectedParams);
        next(StatsReceived(StatsTableSource.fromData(
            tStats, filterTypeSelector(store.state))));
      } catch (e) {
        next(StatsErrorAction(e.toString()));
      }
    }
  }

  Future<Null> _getStats(Store<AppState> store, NextDispatcher next) async {
    if (store.state.statsState.loadingStatus != LoadingStatus.LOADING) {
      next(StatsRequestingAction());
      try {
        List<dynamic> tStats =
            await api.fetchStats(store.state.statsState.selectedParams);

        next(StatsReceived(StatsTableSource.fromData(
            tStats, filterTypeSelector(store.state))));
      } catch (e) {
        next(StatsErrorAction(e.toString()));
      }
    }
  }
}

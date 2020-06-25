import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/constants.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:flutter/material.dart';

class StatsTableSource {
  final List<DataColumn> columns;
  final List<DataRow> rows;

  StatsTableSource(this.columns, this.rows);

  factory StatsTableSource.initial() {
    return StatsTableSource([], []);
  }

  factory StatsTableSource.fromData(
      StatType type, List<dynamic> stats, List<String> displayItems) {
    List<DataColumn> tColumns = [];
    tColumns.add(DataColumn(
        label: Text(statTypeToString(type),
            style: TextStyle(fontStyle: FontStyle.italic))));
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
        tCells.add(DataCell(Text.rich(
            TextSpan(text: getJsonString(statTypeNameKey(type), statRow),
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

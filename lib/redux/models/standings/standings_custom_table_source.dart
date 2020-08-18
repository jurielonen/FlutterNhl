import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/standings/standings.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:flutter/material.dart';

class StandingsTableSource extends CustomDataTableSource {
  static const List<String> columnNames = [
    'gamesPlayed',
    'wins',
    'losses',
    'otLosses',
    'points',
    'regulationAndOtWins',
    'homeRecord',
    'awayRecord',
    'soRecord',
    'l10Record',
    'streak'
  ];

  DataColumnSortCallback _dataColumnSortCallback =
      (int columnIndex, bool ascending) =>
      print('Pressed $columnIndex $ascending');
  DataRowTapCallBack _dataRowTapCallBack =
      (args, route) => print('pressed row: $args, $route');
  final List<StandingsTeam> teams;
  final String corner;
  List<DataColumn> _columns = [];
  List<DataRow> _rows = [];
  List<Widget> _firstColumn = [];

  StandingsTableSource(this.teams, this.corner);

  @override
  List<DataRow> get rows {
    if (_rows != null && _rows.isNotEmpty) return _rows;

    _setRows();

    return _rows;
  }

  void _setRows() {
    teams.asMap().forEach((index, team) {
      _firstColumn.add(CustomDataTableSource.createTableFirstColumn(Row(
        children: <Widget>[
          SizedBox(
              width: 20,
              child: Text('${index + 1}',
                  style: CustomDataTableSource.firstColumnStyle)),
          Styles.buildTeamSvgImage(team, size: 20),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Text(
                team.abb,
                style: CustomDataTableSource.firstColumnStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ],
      )));

      _rows.add(DataRow(
          cells:
              team.cells.map((e) => CustomDataTableSource.createTableCell(e)).toList()));
    });
  }

  @override
  List<Widget> get firstColumn {
    if (_firstColumn != null && _firstColumn.isNotEmpty) return _firstColumn;

    _setRows();

    return _firstColumn;
  }

  @override
  List<DataColumn> get columns {
    if (_columns != null && _columns.isNotEmpty) return _columns;

    _setColumns();

    return _columns;
  }

  void _setColumns() {
    _columns.addAll(columnNames
        .map((column) => CustomDataTableSource.createTableColumn(
            getColumnAbb(column), getColumnTooltip(column)))
        .toList());
  }

  @override
  void callback(int columnIndex, bool ascending) {}

  @override
  set setRowCallBack(dataRowTapCallBack) {
    _dataRowTapCallBack = dataRowTapCallBack;
  }

  @override
  bool get sortAscending => false;

  @override
  Widget get tableCorner {
    return CustomDataTableSource.createTableCorner(corner);
  }

  @override
  set setColumnSortCallBack(dataColumnSortCallback) {
    _dataColumnSortCallback = dataColumnSortCallback;
  }
}

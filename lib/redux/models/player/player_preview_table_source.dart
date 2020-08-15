import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerPreviewTableSource extends CustomDataTableSource {
  List<PlayerGame> players;
  final StatType type;
  DataColumnSortCallback _dataColumnSortCallback =
      (int columnIndex, bool ascending) =>
          print('Pressed $columnIndex $ascending');
  DataRowTapCallBack _dataRowTapCallBack =
      (args, route) => print('pressed row: $args, $route');
  //int _sortColumn = 0;
  bool _sortAscending = true;
  List<DataColumn> _column = [];
  List<DataRow> _rows = [];
  List<Widget> _firstColumn = [];

  PlayerPreviewTableSource({@required this.type, @required this.players}) {
    _setRows();
    _setColumns();
  }

  @override
  List<DataColumn> get columns {
    if (_column != null && _column.isNotEmpty) return _column;

    _setColumns();

    return _column;
  }

  void _setColumns() {
    _column = [];
    _column.addAll(_keys
        .map(
          (key) => DataColumn(
            label: Container(
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 3))),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  getColumnAbb(key),
                  style: CustomDataTableSource.headerRowStyle,
                ),
              ),
            ),
            onSort: (c, a) => _dataColumnSortCallback(c, a),
          ),
        )
        .toList());
  }

  @override
  List<Widget> get firstColumn {
    if (_firstColumn != null && _firstColumn.isNotEmpty) return _firstColumn;

    _setRows();

    return _firstColumn;
  }

  @override
  List<DataRow> get rows {
    if (_rows != null && _rows.isNotEmpty) return _rows;

    _setRows();

    return _rows;
  }

  void _setRows() {
    _firstColumn = [];
    _rows = [];
    _rows.addAll(players.map((player) => _getRow(player)));
  }

  DataRow _getRow(PlayerGame player) {
    _firstColumn.add(
      GestureDetector(
        onTap: () =>
            _dataRowTapCallBack(PlayerArguments(player, type), Routes.player),
        child: SizedBox(
          width: CustomDataTableSource.firstColumnWidth,
          height: CustomDataTableSource.dataRowHeight,
          child: Center(
            child: Text(
              Player.tableName(player.fullname),
              style: CustomDataTableSource.firstColumnStyle,
            ),
          ),
        ),
      ),
    );
    List<DataCell> cells = _keys
        .map(
          (key) => DataCell(
            Text(
              getStatFromMap(key, player.stats),
              style: CustomDataTableSource.cellRowStyle,
            ),
          ),
        )
        .toList();
    return DataRow(
      cells: cells,
    );
  }

  @override
  bool get sortAscending => _sortAscending;

  //@override
  //int get sortColumn => _sortColumn;

  @override
  Widget get tableCorner {
    return SizedBox(
      width: CustomDataTableSource.firstColumnWidth,
      height: CustomDataTableSource.headerRowHeight,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey, width: 3))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 3.0),
            child: Text(type == StatType.PLAYER ? 'Player' : 'Goalie',
                style: CustomDataTableSource.firstColumnStyle),
          ),
        ),
      ),
    );
  }

  @override
  void callback(int columnIndex, bool ascending) {}

  List<String> get _keys => type == StatType.PLAYER ? playerKeys : goalieKeys;

  @override
  set setColumnSortCallBack(dataColumnSortCallback) {
    _dataColumnSortCallback = dataColumnSortCallback;
  }

  @override
  set setRowCallBack(dataRowTapCallBack) {
    _dataRowTapCallBack = dataRowTapCallBack;
  }
}

const List<String> playerKeys = [
  'timeOnIce',
  'assists',
  'goals',
  'shots',
  'hits',
  'powerPlayGoals',
  'powerPlayAssists',
  'penaltyMinutes',
  'faceOffPct',
  'faceOffWins',
  'faceoffTaken',
  'takeaways',
  'giveaways',
  'shortHandedGoals',
  'shortHandedAssists',
  'blocked',
  'plusMinus',
  'evenTimeOnIce',
  'powerPlayTimeOnIce',
  'shortHandedTimeOnIce',
];

const List<String> goalieKeys = [
  'timeOnIce',
  'assists',
  'goals',
  'pim',
  'shots',
  'saves',
  'powerPlaySaves',
  'shortHandedSaves',
  'evenSaves',
  'shortHandedShotsAgainst',
  'evenShotsAgainst',
  'powerPlayShotsAgainst',
  'decision',
  'savePercentage',
  'powerPlaySavePercentage',
  'evenStrengthSavePercentage'
];

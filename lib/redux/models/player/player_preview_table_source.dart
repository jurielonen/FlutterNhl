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
  int _sortColumn = 0;
  bool _sortAscending = true;
  List<DataColumn> _column = [];
  List<DataRow> _rows = [];
  List<String> _firstColumn = [];

  PlayerPreviewTableSource({@required this.type, @required this.players});

  @override
  List<DataColumn> get columns {
    if (_column != null && _column.isNotEmpty) return _column;

    _column.addAll(
      _keys.map((key) => DataColumn(
          label: Text(key), onSort: (c, a) => _dataColumnSortCallback(c, a))),
    );

    return _column;
  }

  @override
  List<String> get firstColumn {
    if (_firstColumn != null && _firstColumn.isNotEmpty) return _firstColumn;

    rows;

    return _firstColumn;
  }

  @override
  List<DataRow> get rows {
    if (_rows != null && _rows.isNotEmpty) return _rows;

    _firstColumn = [];
    _rows.addAll(players.map((player) => _getRow(player)));

    return _rows;
  }

  DataRow _getRow(PlayerGame player) {
    _firstColumn.add(player.fullname);
    List<DataCell> cells = _keys
        .map(
          (key) => DataCell(
            Text(getStatFromMap(key, player.stats)),
            onTap: () => _dataRowTapCallBack(
                PlayerArguments(player, type), Routes.player),
          ),
        ).toList();
    return DataRow(
      cells: cells,
    );
  }

  @override
  bool get sortAscending => _sortAscending;

  @override
  int get sortColumn => _sortColumn;

  @override
  String get tableCorner => type == StatType.PLAYER ? 'Player' : 'Goalie';

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
  'shortHandedTimeOnIce'
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

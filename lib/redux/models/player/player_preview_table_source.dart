import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerGameTableSource extends CustomDataTableSource {
  List<PlayerGame> players;
  final StatType type;
  final bool preview;
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

  PlayerGameTableSource(
      {@required this.type, @required this.players, this.preview = true}) {
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
          (key) => CustomDataTableSource.createTableColumn(
              getColumnAbb(key), getColumnTooltip(key)),
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
      CustomDataTableSource.createTableFirstColumn(
          Text(
            Player.tableName(player.fullname),
            style: CustomDataTableSource.firstColumnStyle,
          ),
          callBack: () => _dataRowTapCallBack(
              PlayerArguments(player, type), Routes.player)),
    );
    List<DataCell> cells = _keys
        .map(
          (key) => CustomDataTableSource.createTableCell(
              getStatFromMap(key, player.stats)),
        )
        .toList();
    return DataRow(
      cells: cells,
    );
  }

  @override
  bool get sortAscending => _sortAscending;

  @override
  Widget get tableCorner {
    return CustomDataTableSource.createTableCorner(
        type == StatType.PLAYER ? 'Player' : 'Goalie');
  }

  @override
  void callback(int columnIndex, bool ascending) {}

  List<String> get _keys => preview
      ? (type == StatType.PLAYER ? playerKeysPreview : goalieKeysPreview)
      : (type == StatType.PLAYER ? playerKeysFinal : goalieKeysFinal);

  @override
  set setColumnSortCallBack(dataColumnSortCallback) {
    _dataColumnSortCallback = dataColumnSortCallback;
  }

  @override
  set setRowCallBack(dataRowTapCallBack) {
    _dataRowTapCallBack = dataRowTapCallBack;
  }
}

const List<String> playerKeysPreview = [
  'timeOnIce',
  'goals',
  'assists',
  'points',
  'pim',
  'shots',
  'games',
  'hits',
  'powerPlayGoals',
  'powerPlayPoints',
  'powerPlayTimeOnIce',
  'evenTimeOnIce',
  'penaltyMinutes',
  'faceOffPct',
  'shotPct',
  'gameWinningGoals',
  'overTimeGoals',
  'shortHandedGoals',
  'shortHandedPoints',
  'shortHandedTimeOnIce',
  'blocked',
  'plusMinus',
  'points',
  'shifts',
  'timeOnIcePerGame',
  'evenTimeOnIcePerGame',
  'shortHandedTimeOnIcePerGame',
  'powerPlayTimeOnIcePerGame'
];

const List<String> playerKeysFinal = [
  'timeOnIce',
  'goals',
  'assists',
  'points',
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

const List<String> goalieKeysFinal = [
  'timeOnIce',
  'shots',
  'saves',
  'savePercentage',
  'shortHandedShotsAgainst',
  'shortHandedSaves',
  'powerPlayShotsAgainst',
  'powerPlaySaves',
  'powerPlaySavePercentage',
  'evenSaves',
  'evenShotsAgainst',
  'evenStrengthSavePercentage',
];

const List<String> goalieKeysPreview = [
  'games',
  'gamesStarted',
  'wins',
  'losses',
  'ot',
  'shutouts',
  'shotsAgainst',
  'saves',
  'savePercentage',
  'goalsAgainst',
  'goalAgainstAverage',
  'powerPlaySaves',
  'powerPlayShots',
  'powerPlaySavePercentage',
  'shortHandedSaves',
  'shortHandedShots',
  'shortHandedSavePercentage',
  'evenSaves',
  'evenShots',
  'evenStrengthSavePercentage',
  'timeOnIcePerGame',
];

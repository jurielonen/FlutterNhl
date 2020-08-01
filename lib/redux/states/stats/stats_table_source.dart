import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:flutter/material.dart';

class StatTableSource extends CustomDataTableSource {
  List<DataColumn> _column = [];
  List<DataRow> _rows = [];
  List<Widget> _firstColumn = [];
  final StatType type;
  final List<String> displayItems;
  final List<dynamic> stats;
  DataColumnSortCallback _dataColumnSortCallback =
      (int columnIndex, bool ascending) =>
          print('Pressed $columnIndex $ascending');
  DataRowTapCallBack _dataRowTapCallBack =
      (args, route) => print('pressed row: $args, $route');

  StatTableSource(
      {@required this.type, @required this.displayItems, @required this.stats});

  @override
  List<DataRow> get rows {
    if (_rows != null && _rows.isNotEmpty) return _rows;

    _setRows();

    return _rows;
  }

  @override
  List<Widget> get firstColumn {
    if (_firstColumn != null && _firstColumn.isNotEmpty) return _firstColumn;

    _setRows();

    return _firstColumn;
  }

  void _setRows() {
    _firstColumn = [];
    _rows = [];
    stats.forEach((stat) {
      if(stat is Map<String, dynamic>)
        _rows.add(_getRow(stat));
    });
  }

  DataRow _getRow(Map<String, dynamic> stat) {
    _firstColumn.add(
      GestureDetector(
        onTap: () => _dataRowTapCallBack(
            _getArgument(stat), _isTeam ? Routes.team : Routes.player),
        child: SizedBox(
          width: CustomDataTableSource.firstColumnWidth,
          height: CustomDataTableSource.dataRowHeight,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align( alignment: Alignment.centerLeft ,child: _getNameCell(stat)),
          ),
        ),
      ),
    );

    List<DataCell> cells = displayItems
        .map(
          (key) => DataCell(
            Text(
              getStatFromMap(key, stat),
              style: CustomDataTableSource.cellRowStyle,
            ),
          ),
        )
        .toList();

    return DataRow(cells: cells);
  }

  Argument _getArgument(Map<String, dynamic> json) {
    if (_isTeam) {
      return TeamArguments(Team.fromJson(json));
    } else {
      return PlayerArguments(Player.fromJson(json), type);
    }
  }

  Widget _getNameCell(Map<String, dynamic> stat) {
    if (_isTeam) {
      return Text(getJsonString(statTypeNameKey(type), stat),
          style: CustomDataTableSource.firstColumnStyle, textAlign: TextAlign.start,);
    } else {
      return Text.rich(
        TextSpan(
          text: Player.tableName(getJsonString(statTypeNameKey(type), stat)),
          style: CustomDataTableSource.firstColumnStyle,
          children: <TextSpan>[
            TextSpan(
                text: '\n' + getJsonString('teamAbbrevs', stat),
                style: Styles.playerTableTeamText)
          ],
        ),
        textAlign: TextAlign.start,
      );
    }
  }

  bool get _isTeam => type == StatType.TEAM;

  @override
  List<DataColumn> get columns {
    if (_column != null && _column.isNotEmpty) return _column;

    _setColumns();

    return _column;
  }

  void _setColumns() {
    _column = [];
    _column.addAll(displayItems
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
  // TODO: implement sortAscending
  bool get sortAscending => false;

  @override
  // TODO: implement sortColumn
  int get sortColumn => 0;

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
            child: Text(statTypeToString(type),
                style: CustomDataTableSource.firstColumnStyle),
          ),
        ),
      ),
    );
  }

  @override
  void callback(int columnIndex, bool ascending) {
    // TODO: implement callback
  }

  @override
  set setColumnSortCallBack(dataColumnSortCallback) {
    _dataColumnSortCallback = dataColumnSortCallback;
  }

  @override
  set setRowCallBack(dataRowTapCallBack) {
    _dataRowTapCallBack = dataRowTapCallBack;
  }
}

/*class StatsTableSource {
  final List<DataColumn> columns;
  //final List<DataRow> rows;
  final StatType type;
  final List<dynamic> stats;
  final List<String> displayItems;
  StatsTableSource({this.columns, this.type, this.stats, this.displayItems});

  factory StatsTableSource.initial() {
    return StatsTableSource(
        columns: [], type: StatType.PLAYER, stats: [], displayItems: []);
  }

  factory StatsTableSource.fromData(
      StatType type, List<dynamic> stats, List<String> displayItems) {
    List<DataColumn> tColumns = [];
    tColumns.add(DataColumn(
        label: Text(statTypeToString(type),
            style: TextStyle(fontStyle: FontStyle.italic))));
    displayItems.forEach((element) {
      //if(element != 'playerId' && element != 'skaterFullName' && element != 'seasonId' && element != 'teamAbbrevs' && element != 'shootsCatches' && element != 'positionCode')
      tColumns.add(
        DataColumn(
          label: Text(getColumnAbb(element),
              style: TextStyle(fontStyle: FontStyle.italic)),
          tooltip: getColumnTooltip(element),
          //onSort: (int index, bool ascending){
          //print('onsort');
          //}
        ),
      );
    });

    return StatsTableSource(
        columns: tColumns,
        type: type,
        stats: stats,
        displayItems: displayItems);
  }

  List<DataRow> setTapListenerToRow(BuildContext context, StatType type) {
    List<DataRow> tRows = [];
    String route = Routes.player;
    if (type == StatType.TEAM) {
      route = Routes.team;
    }
    stats.forEach((statRow) {
      if (statRow is Map<String, dynamic>) {
        List<DataCell> tCells = [];
        tCells.add(DataCell(
            Text.rich(
                TextSpan(text: getJsonString(statTypeNameKey(type), statRow),
                    //style: Styles.playerTableText,
                    children: <TextSpan>[
                  TextSpan(
                      text: ' ' + getJsonString('teamAbbrevs', statRow),
                      style: Styles.playerTableTeamText)
                ])),
            onTap: () => Navigator.pushNamed(context, route,
                arguments: type == StatType.TEAM
                    ? TeamArguments(Team.fromJson(statRow))
                    : PlayerArguments(Player.fromJson(statRow), type))));
        displayItems.forEach((element) {
          if (statRow.containsKey(element)) {
            tCells.add(DataCell(Text(statRow[element].toString())));
          }
        });
        assert(tCells.length == columns.length);
        tRows.add(DataRow(cells: tCells));
      }
    });
    return tRows;
  }
}*/

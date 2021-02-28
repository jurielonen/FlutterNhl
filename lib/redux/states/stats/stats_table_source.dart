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
  final int startIndex;
  DataColumnSortCallback _dataColumnSortCallback =
      (int columnIndex, bool ascending) => print('Pressed $columnIndex $ascending');
  DataRowTapCallBack _dataRowTapCallBack = (args, route) => print('pressed row: $args, $route');
  final String _sortColumn;
  final bool _ascending;
  Function(String stat, bool ascending) columnCallBack;

  StatTableSource({
    @required this.type,
    @required this.displayItems,
    @required this.stats,
    String sortColumn,
    bool ascending = false,
    this.startIndex = 0,
  })  : _sortColumn = sortColumn,
        _ascending = ascending;

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
    stats.asMap().forEach((index, stat) {
      if (stat is Map<String, dynamic>) _rows.add(_getRow(stat, index));
    });
  }

  DataRow _getRow(Map<String, dynamic> stat, int index) {
    Color rowColor = index % 2 == 0 ? Colors.grey.withOpacity(0.3) : null;
    _firstColumn.add(
      GestureDetector(
        onTap: () => _dataRowTapCallBack(_getArgument(stat), _isTeam ? Routes.team : Routes.player),
        child: Container(
          decoration: BoxDecoration(color: rowColor),
          child: SizedBox(
            width: CustomDataTableSource.firstColumnWidth,
            height: CustomDataTableSource.dataRowHeight,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(alignment: Alignment.centerLeft, child: _getNameCell(stat, index)),
            ),
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

    return DataRow(
      cells: cells,
      color: MaterialStateProperty.resolveWith<Color>((_) {
        return rowColor;
      }),
    );
  }

  Argument _getArgument(Map<String, dynamic> json) {
    if (_isTeam) {
      return TeamArguments(Team.fromJson(json));
    } else {
      return PlayerArguments(Player.fromJson(json), type);
    }
  }

  Widget _getNameCell(Map<String, dynamic> stat, int index) {
    if (_isTeam) {
      Team team = Team.fromJson(stat);
      return Row(
        children: <Widget>[
          SizedBox(
              width: 20,
              child:
                  Text('${index + startIndex + 1}', style: CustomDataTableSource.firstColumnStyle)),
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
      );
    } else {
      return Row(
        children: <Widget>[
          SizedBox(
              width: 20,
              child:
                  Text('${index + startIndex + 1}', style: CustomDataTableSource.firstColumnStyle)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  Player.tableName(getJsonString(statTypeNameKey(type), stat)),
                  style: CustomDataTableSource.firstColumnStyle,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
                Text(
                  getJsonString('teamAbbrevs', stat),
                  style: Styles.playerTableTeamText,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
        ],
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
              decoration:
                  BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey, width: 3))),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  getColumnAbb(key),
                  style: CustomDataTableSource.headerRowStyle,
                ),
              ),
            ),
            tooltip: getColumnTooltip(key),
            onSort: (c, a) => callback(c, a),
          ),
        )
        .toList());
  }

  @override
  bool get sortAscending {
    return _ascending;
  }

  @override
  int get sortColumn {
    if (_sortColumn != null) {
      int index = displayItems.indexOf(_sortColumn);
      if (index > -1) return index;
    }
    return null;
  }

  @override
  Widget get tableCorner {
    return SizedBox(
      width: CustomDataTableSource.firstColumnWidth,
      height: CustomDataTableSource.headerRowHeight,
      child: Center(
        child: Container(
          decoration:
              BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey, width: 3))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 3.0),
            child: Text(statTypeToString(type), style: CustomDataTableSource.firstColumnStyle),
          ),
        ),
      ),
    );
  }

  @override
  void callback(int columnIndex, bool ascending) {
    if (columnCallBack != null) {
      columnCallBack(displayItems[columnIndex], ascending);
    }
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

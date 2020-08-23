import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/draft/draft.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:flutter/material.dart';

class DraftTableSource extends CustomDataTableSource {
  final Draft draft;
  List<DataRow> _rows = [];
  List<DataColumn> _column = [];
  List<Widget> _firstColumn = [];
  int _round = 1;

  String get round => _round.toString();

  bool get roundsNextLeft{
    return _round < draft.rounds.length;
  }


  bool get roundsPreviousLeft{
    return _round > 1;
  }

  void nextPage(){
    if(_round < draft.rounds.length) {
      _round++;
      _setRows();
    }
  }

  void previousPage(){
    if(_round > 0) {
      _round--;
      _setRows();
    }
  }

  DraftTableSource({@required this.draft}) {
    _setRows();
    _setColumns();
  }

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
    DraftRound round = draft.getRound(_round);
    if(round != null) {
      _rows = [];
      _firstColumn = [];
      round.picks.forEach((pick) {
        _firstColumn.add(CustomDataTableSource.createTableFirstColumn(Row(
          children: <Widget>[
            SizedBox(
                width: 20,
                child: Text('${pick.pickRound}',
                    style: CustomDataTableSource.firstColumnStyle)),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    Player.tableName(pick.prospect.nameString),
                    style: CustomDataTableSource.firstColumnStyle,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Ovr: ${pick.pickOverall}',
                    style: Styles.playerTableTeamText,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ))
          /*Text(
            '${pick.pickOverall} ${pick.prospect.nameString}',
            style: CustomDataTableSource.firstColumnStyle))*/);

        _rows.add(DataRow(cells: [
          CustomDataTableSource.createTableCellWidget(Row(
            children: [
              Styles.buildTeamSvgImage(pick.team, size: 15),
              Text(pick.team.abb, style: CustomDataTableSource.cellRowStyle)
            ],
          )),
          CustomDataTableSource.createTableCell(pick.prospect.positionString),
          CustomDataTableSource.createTableCell(
              pick.prospect.birthCountryString),
          CustomDataTableSource.createTableCell(
              pick.prospect.amateurLeagueString),
          CustomDataTableSource.createTableCell(
              pick.prospect.amateurTeamString),
        ]));
      });
    }
  }

  @override
  List<DataColumn> get columns {
    if (_column != null && _column.isNotEmpty) return _column;

    _setColumns();

    return _column;
  }

  void _setColumns() {
    _column.add(CustomDataTableSource.createTableColumn(
        'Team', 'Team which made the pick'));
    _column.add(CustomDataTableSource.createTableColumn(
        'Position', 'Player\'s position'));
    _column.add(CustomDataTableSource.createTableColumn(
        'Country', 'Player\'s home country'));
    _column.add(CustomDataTableSource.createTableColumn(
        'Amateur league', 'Player\'s amateur league'));
    _column.add(CustomDataTableSource.createTableColumn(
        'Amateur team', 'Player\'s amateur team'));
  }

  @override
  void callback(int columnIndex, bool ascending) {
    // TODO: implement callback
  }

  @override
  set setRowCallBack(dataRowTapCallBack) {
    // TODO: implement setRowCallBack
  }

  @override
  bool get sortAscending => false;

  @override
  Widget get tableCorner => CustomDataTableSource.createTableCorner('Player');

  @override
  set setColumnSortCallBack(dataColumnSortCallback) {
    // TODO: implement setColumnSortCallBack
  }
}

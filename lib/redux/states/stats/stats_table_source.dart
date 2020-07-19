import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/constants.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter/material.dart';

class StatsTableSource {
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
      tColumns.add(DataColumn(
          label: Text(getColumnAbb(element),
              style: TextStyle(fontStyle: FontStyle.italic)),
          tooltip: getColumnTooltip(element),
        //onSort: (int index, bool ascending){
          //print('onsort');
        //}
      ),);
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
                    ? TeamPageArguments(Team.fromJson(statRow))
                    : PlayerPageArguments(Player.fromJson(statRow), type))));
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
}

class PlayerPageArguments {
  final Player player;
  final StatType type;

  int get playerId => player.id;
  String get playerFullName => player.fullname;

  PlayerPageArguments(this.player, this.type);
}

class TeamPageArguments {
  final Team team;
  final StatType type = StatType.TEAM;

  int get teamId => team.id;
  String get teamName => team.name;

  TeamPageArguments(this.team);
}

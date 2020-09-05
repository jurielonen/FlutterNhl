import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:flutter/material.dart';

class PlayerGameLogView extends StatelessWidget {
  final List<GameLogsPlayer> logs;
  final bool isSkater;

  PlayerGameLogView(this.logs, this.isSkater);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(children: statColumn.toList()),
            ),
          ),
        Expanded(
          child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return listTiles.elementAt(index);
              },
              itemCount: listTiles.length),
        ),
      ],
    );
  }

  Iterable<Widget> get listTiles sync* {
    for (GameLogsPlayer log in logs) yield getGameRow(log);
  }

  Iterable<Widget> get statColumn sync* {
    yield Expanded(
        flex: 2,
        child: Text(
          'Team',
          style: CustomDataTableSource.headerRowStyle,
        ));
    yield Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
      'Date',
      style: CustomDataTableSource.headerRowStyle,
    ),
        ));
    if (isSkater) {
      for (String column in skaterColumns) {
        yield Expanded(
            child: Text(getColumnAbb(column),
                style: CustomDataTableSource.headerRowStyle));
      }
    } else {
      for (String column in goalieColumns) {
        yield Expanded(
            child: Text(getColumnAbb(column),
                style: CustomDataTableSource.headerRowStyle));
      }
    }
  }

  Widget getGameRow(GameLogsPlayer log) {
    List<String> stats = isSkater ? skaterColumns : goalieColumns;
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.white))),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Styles.buildTeamSvgImage(log.opponent, size: 20),
                    Text('${log.isHome} ${log.opponent.abb}',
                        style: CustomDataTableSource.firstColumnStyle),
                    Text(log.result, style: CustomDataTableSource.firstColumnStyle,)
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(Styles.gameLogFormat.format(log.date),
                      style: CustomDataTableSource.firstColumnStyle),
              ),
              ),
          ...stats.map((item) => Expanded(
              child: Text(getStatFromMap(item, log.stats),
                    style: CustomDataTableSource.cellRowStyle),
              )),
        ],
      ),
    );
  }

  static const List<String> skaterColumns = [
    'timeOnIce',
    'goals',
    'assists',
    'plusMinus',
    'pim'
  ];
  static const List<String> goalieColumns = [
    'timeOnIce',
    'shotsAgainst',
    'goalsAgainst',
    'saves',
    'savePercentage'
  ];
}

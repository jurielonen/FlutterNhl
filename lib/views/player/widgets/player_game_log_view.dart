import 'package:FlutterNhl/constants/colors.dart';
import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:FlutterNhl/widgets/game_log_item.dart';
import 'package:flutter/material.dart';

class PlayerGameLogView extends StatelessWidget {
  final List<GameLogsPlayer> logs;
  final bool isSkater;

  PlayerGameLogView(this.logs, this.isSkater);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: Row(children: statColumn.toList()),
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return listTiles.elementAt(index);
              },
              separatorBuilder: (BuildContext context, int index) => Divider(),
              itemCount: listTiles.length),
        ),
      ],
    );
  }

  Iterable<Row> get listTiles sync* {
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
        child: Text(
      'Date',
      style: CustomDataTableSource.headerRowStyle,
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
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Row(
              children: <Widget>[
                Styles.buildTeamSvgImage(log.opponent, size: 20),
                Text(log.opponent.abb,
                    style: CustomDataTableSource.firstColumnStyle),
              ],
            ),
          ),
        Expanded(
            child: Text(Styles.gameLogFormat.format(log.date),
                style: CustomDataTableSource.firstColumnStyle)),
        ...stats.map((item) => Expanded(
            child: Text(getStatFromMap(item, log.stats),
                style: CustomDataTableSource.cellRowStyle))),
      ],
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
    'powerPlaySavePercentage'
  ];
}

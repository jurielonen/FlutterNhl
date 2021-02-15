import 'package:FlutterNhl/constants/colors.dart';
import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:flutter/material.dart';

abstract class ScheduleGameBaseFinalCard extends ScheduleGameBaseCard {
  Future<void> showVideoDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
          content: Builder(
            builder: (context) {
              var height = MediaQuery.of(context).size.height;
              var width = MediaQuery.of(context).size.width;

              return Container(
                height: MediaQuery.of(context).orientation == Orientation.portrait
                    ? height - 400
                    : height - 100,
                width: width - 1,
                decoration: BoxDecoration(color: Colors.grey),
                child: SingleChildScrollView(
                  child: ListBody(children: videoTiles.toList()),
                ),
              );
            },
          ),
          titleTextStyle: Styles.cardTeamWinnerText,
          title: Text(
            'RECAPS',
            textAlign: TextAlign.center,
          ),
          contentPadding: const EdgeInsets.only(),
          titlePadding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          actionsPadding: const EdgeInsets.only(),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  Iterable<Widget> get videoTiles;
}

abstract class ScheduleGameBaseCard extends StatelessWidget {
  Widget buildCard(BuildContext context, Game game, {VoidCallback onCardPressed}) {
    double tWidth = MediaQuery.of(context).size.width / 4;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PressableCard(
        onPressed: () {
          if (onCardPressed != null) onCardPressed();
          Navigator.pushNamed(context, Routes.game, arguments: GameArgument(game));
        },
        color: kNHLBackground,
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(child: _buildGameTable(game)),
                VerticalDivider(
                  thickness: 1,
                  indent: 5,
                  endIndent: 5,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: tWidth,
                    child: getStateRow(context: context, callback: onCardPressed),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Table _buildGameTable(Game game) {
    List<TableRow> rows = [];
    TableRow pRow = buildPlayoffsRow(game.seriesSummary);
    if (pRow != null) {
      rows.add(pRow);
    }
    rows.addAll(buildTeamTableRows(game));
    return Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: {
          0: FixedColumnWidth(25),
          1: FractionColumnWidth(0.30),
          2: FractionColumnWidth(0.40),
        },
        children: rows);
  }

  static TableRow buildPlayoffsRow(PlayoffSeriesSummary seriesSummary) {
    if (seriesSummary != null) {
      return TableRow(children: [
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15.0, top: 1.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'GM ${seriesSummary.gameNumber}',
                    style: Styles.gameCardPlayoffs,
                  )),
            )),
        TableCell(
          child: Text(''),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.top,
          child: Align(
            alignment: Alignment.topRight,
            child: Text(seriesSummary.seriesStatus.toUpperCase(), style: Styles.gameCardPlayoffs),
          ),
        )
      ]);
    } else {
      return null;
    }
  }

  List<TableRow> buildTeamTableRows(Game game);

  static List<TableCell> buildTeamTableRow(TeamSchedule team, Widget info, {double opacity = 1.0}) {
    return [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
            child: Opacity(
                opacity: opacity,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Styles.buildTeamSvgImage(team, size: 25))),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Opacity(
            opacity: opacity,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(team.abb, style: Styles.scaffoldGameWinnerText),
                  info,
                ],
              ),
            ),
          )),
    ];
  }

  static Widget buildScoreRow(int score, {double opacity = 1.0}) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Opacity(
        opacity: opacity,
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(score.toString(), style: Styles.scaffoldGameWinnerText),
        ),
      ),
    );
  }

  Widget getStateRow({BuildContext context, VoidCallback callback});
}

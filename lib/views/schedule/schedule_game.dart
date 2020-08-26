import 'package:FlutterNhl/constants/colors.dart';
import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/game/game_enums.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_video_view.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScheduleGameCard extends StatelessWidget {
  final Game _game;
  final bool _isPlayoffs;

  const ScheduleGameCard(this._game, this._isPlayoffs);

  @override
  Widget build(BuildContext context) {
    double tWidth = MediaQuery.of(context).size.width / 4;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PressableCard(
        onPressed: () {
          print('Pressed');
          Navigator.pushNamed(context, Routes.game,
              arguments: GameArgument(_game));
        },
        color: kNHLBackground,
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(child: _buildGameTable()),
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
                    child: _getStateRow(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Table _buildGameTable() {
    List<TableRow> rows = [];
    if(_isPlayoffs && _game.seriesSummary != null){
      rows.add(TableRow(children: [
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15.0, top: 1.0),
              child: Align(alignment: Alignment.center, child: Text('GM ${_game.seriesSummary.gameNumber}', style: Styles.gameCardPlayoffs,)),
            )),
        TableCell(
          child: Text(''),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.top,
          child: Align(
            alignment: Alignment.topRight,
            child: Text(_game.seriesSummary.seriesStatus.toUpperCase(), style: Styles.gameCardPlayoffs),
          ),
        )
      ]),);
    }
    rows.addAll([
      _buildTeamTableRow(
          _game.homeTeam, _game.homeScheduleInfo, _game.homeOpacity),
      _buildTeamTableRow(
          _game.awayTeam, _game.awayScheduleInfo, _game.awayOpacity),]);
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {
        0: FixedColumnWidth(25),
        1: FractionColumnWidth(0.30),
        2: FractionColumnWidth(0.40),
      },
      //border: TableBorder.all(color: Colors.white),
      children: rows
    );
  }

  TableRow _buildTeamTableRow(TeamSchedule team, Widget info, double opacity) {
    return TableRow(children: [
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
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Opacity(
            opacity: opacity,
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(team.score.toString(),
                    style: Styles.scaffoldGameWinnerText)),
          )),
    ]);
  }

  Widget _getStateRow(BuildContext context) {
    List<Widget> widgets = [];
    widgets.add(_game.gameStateText);
    if (_game.isPreview) {
      widgets.add(
        Text(
          _game.getScheduleTime,
          style: Styles.gameStateText,
        ),
      );
    } else if (_game.isLive) {
      widgets.add(
          Text(
            _game.getLiveScheduleInfo,
            style: Styles.gameStateText,
          ),
      );
    } else if (_game.isFinal) {
      widgets.add(
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {
              _showDialog(context);
            },
            tooltip: 'Game recaps',
          ),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: widgets,
    );
  }

  Future<void> _showDialog(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            titleTextStyle: Styles.cardTeamWinnerText,
            title: Text(
              '${_game.toString()}\nRECAPS',
              textAlign: TextAlign.center,
            ),
            contentPadding: const EdgeInsets.only(),
            titlePadding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
            actionsPadding: const EdgeInsets.only(),
            content: Container(
              decoration: BoxDecoration(color: Colors.grey),
              child: SingleChildScrollView(
                child: ListBody(children: videoTiles.toList()),
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Close'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }

  Iterable<Widget> get videoTiles sync* {
    for (Video video in _game.content.videos)
      yield VideoCard(
        video: video,
      );
  }
}

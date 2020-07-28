import 'package:FlutterNhl/constants/colors.dart';
import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/game/game_enums.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:flutter/material.dart';

class ScheduleGameCard extends StatelessWidget {
  final Game _game;

  const ScheduleGameCard(this._game);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PressableCard(
        onPressed: (){
          print('Pressed');
          Navigator.pushNamed(context, Routes.game, arguments: GameArgument(_game));
        },
        color: kNHLBackground,
        child: Row(
          children: <Widget>[
            ///Team column
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildTeamRow(_game.homeTeam),
                  _buildTeamRow(_game.awayTeam)
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildScoreRow(_game.homeTeam.score),
                    _buildScoreRow(_game.awayTeam.score),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(gameStateToString(_game.state))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildTeamRow(TeamSchedule team){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(team.abb, style: Styles.cardTeamWinnerText),
        Text(team.teamRecord, style: Styles.cardTeamWinnerMinorText)
      ],
    );
  }

  Row _buildScoreRow(int score){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(score.toString(), style: Styles.cardTeamWinnerText)
      ],
    );
  }


}

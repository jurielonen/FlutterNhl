import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_matchup_view.dart';
import 'package:FlutterNhl/views/player/widgets/player_bio.dart';
import 'package:flutter/material.dart';

class TeamBioTab extends StatelessWidget {
  final TeamPage team;

  const TeamBioTab({Key key, @required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return bioTiles.elementAt(index);
          },
          itemCount: bioTiles.length),
    );
  }

  Iterable<Widget> get bioTiles sync* {
    yield PlayerBioWidget.createTextCard('info', teamInfoTable);
    yield PlayerBioWidget.createHeaderDivider(
        'Last ${team.previousGame.length} games');
    for (Game game in team.previousGame) {
      yield GameMatchUpView.lastFiveGame(game, team);
    }

    yield PlayerBioWidget.createHeaderDivider(
        'Next ${team.nextGame.length} games');
    for (Game game in team.nextGame) {
      yield GameMatchUpView.lastFiveGame(game, team);
    }
  }

  Table get teamInfoTable {
    return Table(
      children: [
        PlayerBioWidget.getRow('First year of play', team.firstYear),
        PlayerBioWidget.getRow('Venue', team.venue),
        PlayerBioWidget.getRow('Division', team.division),
        PlayerBioWidget.getRow('Conference', team.conference),
      ],
    );
  }
}

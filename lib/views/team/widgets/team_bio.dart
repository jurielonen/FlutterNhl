import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_matchup_view.dart';
import 'package:FlutterNhl/views/player/widgets/player_bio.dart';
import 'package:FlutterNhl/views/team/widgets/team_game_log.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
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
    yield PlayerBioTab.createTextCard('info', teamInfoTable);
    yield PlayerBioTab.createHeaderDivider('Last ${team.previousGame.length} games');
    for(Game game in team.previousGame){
      yield GameMatchUpView.lastFiveGame(game, team);
    }

    yield PlayerBioTab.createHeaderDivider('Next ${team.nextGame.length} games');
    for(Game game in team.nextGame){
      yield GameMatchUpView.lastFiveGame(game, team);
    }
  }

  Table get teamInfoTable {
    return Table(children: [
      PlayerBioTab.getRow('First year of play', team.firstYear),
      PlayerBioTab.getRow('Venue', team.venue),
      PlayerBioTab.getRow('Division', team.division),
      PlayerBioTab.getRow('Conference', team.conference),
    ],);
  }



}

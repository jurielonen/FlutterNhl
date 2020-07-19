import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/views/team/widgets/team_game_log.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:flutter/material.dart';

class TeamBioTab extends StatelessWidget {
  final TeamPage team;

  const TeamBioTab({Key key, @required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> tiles = <Widget>[
      TeamGameLogCard(game: team.nextGame, team: team,),
      TeamGameLogCard(game: team.previousGame, team: team,),
      _createStatCard(team.currentStats),
    ];
    return SliverFixedExtentList(
      itemExtent: 100,
      delegate: SliverChildListDelegate(
        tiles,
      ),
    );
  }

  Widget _createStatCard(Map<String, dynamic> stats){
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(stats.toString())
        ),
      ),
    );
  }
}

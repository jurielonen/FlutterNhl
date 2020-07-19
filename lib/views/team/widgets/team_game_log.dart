import 'package:FlutterNhl/constants/colors.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:flutter/material.dart';

class TeamGameLogCard extends StatelessWidget {
  final Game game;
  final Team team;

  const TeamGameLogCard({Key key, @required this.game, @required this.team}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PressableCard(
        onPressed: (){
          print('Pressed game: ${game.id}');
        },
        color: kNHLBackground,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(game.opponentAbb(team)),
                  //Text(log.won ? 'Won' : ' Lost'),
                  Text(game.isHomeTeam(team) ? 'Home' : 'Away')
                ],
              ),
              /*Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                      'TOI: ${getJsonString('timeOnIce', log.stats)}, G: ${getJsonInt('goals', log.stats)}')
                ],
              )*/
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:FlutterNhl/constants/colors.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:flutter/material.dart';

class PlayerGameLogCard extends StatelessWidget {
  final GameLogsPlayer log;

  PlayerGameLogCard(this.log);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PressableCard(
        onPressed: () {
          print('pressed');
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
                  Text(log.opponentAbb),
                  Text(log.won ? 'Won' : ' Lost'),
                  Text(log.home ? 'Home' : 'Away')
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                      'TOI: ${getJsonString('timeOnIce', log.stats)}, G: ${getJsonInt('goals', log.stats)}')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

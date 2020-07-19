import 'package:FlutterNhl/constants/colors.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:flutter/material.dart';

class TeamPlayerCard extends StatelessWidget {
  final PlayerGame player;

  const TeamPlayerCard({Key key, @required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PressableCard(
        onPressed: (){
          print('Pressed player: ${player.id}');
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
                  Styles.buildPlayerCircleIcon(player),
                  Text(player.fullname),
                  Text(player.position.name),
                  Text(player.jerseyNumber)
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

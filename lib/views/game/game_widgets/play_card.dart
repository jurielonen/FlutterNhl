import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:flutter/material.dart';

Widget getPlayCard(Play play, int home){
  if(play is PlayWithPlayers)
    return PlayPlayersCard(play: play, home: home == play.team.id,);
  else
    return PlayCard(play: play);
}

class PlayCard extends StatelessWidget {
  final Play play;

  const PlayCard({Key key, this.play}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
        width: MediaQuery.of(context).size.width,
        child: Card(
          elevation: 5,
          child: ListTile(
            title: Center(child: Text('${play.about.ordinalNum} ${play.event}')),
          ),
        ),
      );
  }
}


class PlayPlayersCard extends StatelessWidget {
  final PlayWithPlayers play;
  final bool home;

  const PlayPlayersCard({Key key, this.play, this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Align(
        alignment: home ? Alignment.centerLeft : Alignment.centerRight,
        child:  Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Card(
            elevation: 5,
            color: play.team.teamColor,
            child: ListTile(
              leading: Styles.buildNetworkImage(play.players.first.headShotUrl),
              title: Text('${play.about.periodTime} ${play.team.abb}: ${play.event}', style: Styles.playTitleText,),
              subtitle: Text(play.desc, style: Styles.playSubtitleText),
            ),
          ),
        ),
      );

  }
}
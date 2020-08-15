import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:FlutterNhl/views/player/widgets/player_bio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      return PlayerBioTab.createHeaderDivider('${play.about.ordinalNum} ${play.event}');
        /*Container(
        width: MediaQuery.of(context).size.width,
        child: Card(
          elevation: 5,
          child: ListTile(
            title: Center(child: Text('${play.about.ordinalNum} ${play.event}')),
          ),
        ),
      );*/
  }
}


class PlayPlayersCard extends StatelessWidget {
  final PlayWithPlayers play;
  final bool home;

  const PlayPlayersCard({Key key, this.play, this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          /*Expanded(
            child: Divider(
            thickness: 2,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),),*/
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                Styles.buildTeamSvgImage(play.team, size: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(play.playHeader, style: Styles.playHeaderText,),
                        Text(play.playDesc, style: Styles.playDescText, overflow: TextOverflow.clip,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          /*Expanded(
            child: Divider(
              thickness: 2,
              indent: 8,
              endIndent: 8,
              color: Colors.grey,
            ),),*/
        ],
      );
  }
}
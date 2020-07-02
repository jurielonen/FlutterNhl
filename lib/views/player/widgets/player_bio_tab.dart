import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:flutter/material.dart';

class PlayerBioTab extends StatelessWidget {
  final PlayerPage player;

  const PlayerBioTab({Key key, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> tiles = <Widget>[
      _createTextCard('Birth date', Styles.dateFormat.format(player.birthDate)),
      _createTextCard('Draft', '${player.draftYear}, ${player.draftRound} rd, ${player.draftNum} pick'),
      _createTextCard('Birthplace', '${player.birthCity}, ${player.birthCountry}'),
      _createTextCard('Nationality', '${player.nationality}'),
    ];
    tiles.addAll(player.allTimeStats.getStatsWidget);
    return SliverFixedExtentList(
      itemExtent: 100,
      delegate: SliverChildListDelegate(
        tiles,
      ),
    );
    /*Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(player.birthDate.toString()),
              Text(player.draftNum.toString()),
              Text(player.draftRound.toString()),
              Text(player.draftYear.toString()),
            ],
          ),
          Row(
            children: <Widget>[
              Text('${player.birthCity}, ${player.birthCountry}'),
              Text(player.nationality)
            ],
          ),
          Row(
            children: <Widget>[
              /*Text(
                '${player.allTimeStats.regular.gamesPlayed},${player.allTimeStats.regular.goals},${player.allTimeStats.regular.assists},${player.allTimeStats.regular.points}'),
            Text(
                '${player.allTimeStats.playoff.gamesPlayed},${player.allTimeStats.playoff.goals},${player.allTimeStats.playoff.assists},${player.allTimeStats.playoff.points}'),*/
            ],
          )
        ],
      ),
    );*/
  }

  Widget _createTextCard(String title, String value){
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: RichText(
              text: TextSpan(
                text: '$title: ',
                style: Styles.scaffoldGameWinnerText,
                children: <TextSpan>[
                  TextSpan(text: value, style: Styles.cardOtherText),
                ],
              ),
            ),
        ),
      ),
    );
  }
}

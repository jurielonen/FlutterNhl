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

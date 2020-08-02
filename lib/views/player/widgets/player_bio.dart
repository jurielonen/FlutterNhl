import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:flutter/material.dart';

class PlayerBioTab extends StatelessWidget {
  final PlayerPage player;

  const PlayerBioTab({Key key, this.player}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    /*List<Widget> tiles = <Widget>[
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
    );*/
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return bioTiles.elementAt(index);
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: bioTiles.length);
  }

  Iterable<Widget> get bioTiles sync* {
    yield _createTextCard('Info', player.playerInfoTable,);
    yield _createTextCard('Draft', player.playerDraftTable);
    for(Widget table in player.allTimeStats.getStatsWidget)
      yield table;
  }

  Widget _createTextCard(String title, Widget value) {
    return Column(
      children: <Widget>[
        Text(title),
        value
      ],
    );

      /*Card(
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
    );*/
  }
}

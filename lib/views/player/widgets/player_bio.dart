import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:flutter/material.dart';

class PlayerBioTab extends StatelessWidget {
  final PlayerPage player;

  const PlayerBioTab({Key key, this.player}) : super(key: key);
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
    yield createTextCard(
      'Info',
      playerInfoTable,
    );
    yield createTextCard('Draft', playerDraftTable);
    int index = 0;
    for (Widget table in player.allTimeStats.getStatsWidget){
      String header = index == 0 ? 'Regular season stats' : 'Playoffs stats';
      yield createTextCard(header, table);
      index++;
    }
  }

  static Widget createTextCard(String title, Widget value) {
    return Column(
      children: <Widget>[
        createHeaderDivider(title),
        value
      ],
    );
  }

  static createHeaderDividerWidget(Widget title){
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            thickness: 4,
            endIndent: 8,
          ),
        ),
        title,
        Expanded(
          child: Divider(
            thickness: 4,
            indent: 8,
          ),
        ),
      ],
    );
  }

  static createHeaderDivider(String title){
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            thickness: 4,
            endIndent: 8,
          ),
        ),
        Text(title.toUpperCase(), style: Styles.infoTableHeaderText),
        Expanded(
          child: Divider(
            thickness: 4,
            indent: 8,
          ),
        ),
      ],
    );
  }

  Table get playerInfoTable {
    return Table(children: [
      getRow('Team', player.currentTeam),
      getRow('Position', player.playerPositionString),
      getRow('Handess', player.playerHandessString),
      getRow('First year in NHL', player.firstSeason.toString()),
      getRow('First year in playoffs', player.firstSeason.toString()),
      getRow('Birth date', Styles.dateFormat.format(player.birthDate)),
      getRow('Birthplace', '${player.birthCity}, ${player.birthCountry}'),
      getRow('Nationality', player.nationality),
      getRow('Height', player.height.toString()),
      getRow('Weight', player.weight.toString()),
    ]);
  }

  Table get playerDraftTable {
    return Table(
      children: [
        getRow('Year', player.draftYear.toString()),
        getRow('Round', '${player.draftRound} rd'),
        getRow('Pick', player.draftNum.toString()),
      ],
    );
  }

  static TableRow getRow(String header, String value) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child:
                Text(header.toUpperCase(), style: Styles.infoTableHeaderText)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Text(value.toUpperCase(), style: Styles.infoTableValueText)),
      )
    ]);
  }
}

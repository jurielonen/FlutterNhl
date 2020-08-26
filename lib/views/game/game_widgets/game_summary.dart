import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_stat_view.dart';
import 'package:FlutterNhl/views/game/game_widgets/play_card.dart';
import 'package:FlutterNhl/views/player/widgets/player_bio.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:flutter/material.dart';

class GameSummary extends StatelessWidget {
  final GameFinal game;
  const GameSummary({Key key, this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.only(top: 20),
          sliver: SliverToBoxAdapter(
            child: PlayerBioTab.createHeaderDivider('Scoring by period'),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          sliver: SliverToBoxAdapter(
            child: Table(
              children: scoringRows.toList(),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(top: 20),
          sliver: SliverToBoxAdapter(
            child: PlayerBioTab.createHeaderDivider('Shots by period'),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          sliver: SliverToBoxAdapter(
            child: Table(
              children: shotsRows.toList(),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(top: 20),
          sliver: SliverToBoxAdapter(
            child: PlayerBioTab.createHeaderDivider('Scoring plays'),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              if (scoringPlays.length > index)
                return scoringPlays.elementAt(index);
              else
                return ErrorView(UIUnknownStateException('game_summary'));
            },
            childCount: scoringPlays.length,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(top: 20),
          sliver: SliverToBoxAdapter(
            child: PlayerBioTab.createHeaderDivider('Stats'),
          ),
        ),
        GameStats(homeStats: game.home.teamStats, awayStats: game.away.teamStats, homeColor: game.home.teamColor, awayColor: game.away.teamColor)
      ],
    );
  }

  Iterable<Widget> get scoringPlays sync* {
    for (Play play in game.scoringPlays) {
      yield getPlayCard(play, game.homeTeam.id);
    }
  }

  Iterable<TableRow> get scoringRows sync* {
    List<Widget> columns = [Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Text('Team', style: Styles.infoTableHeaderText)),
    )];
    List<Widget> home = [Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Styles.buildTeamSvgImage(game.homeTeam, size: 20),
          Text(game.home.abb, style: Styles.infoTableValueText),
        ],
      ),
    )];
    List<Widget> away = [Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Styles.buildTeamSvgImage(game.awayTeam, size: 20),
          Text(game.away.abb, style: Styles.infoTableValueText),
        ],
      ),
    )];
    for (Period period in game.lineScore.periods) {
      columns.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text(period.ordinalNum, style: Styles.infoTableHeaderText)),
      ));
      home.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text(getJsonInt('goals', period.home).toString(), style: Styles.infoTableValueText)),
      ));
      away.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text(getJsonInt('goals', period.away).toString(), style: Styles.infoTableValueText)),
      ));
    }
    columns.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Text('T', style: Styles.infoTableHeaderText)),
    ));
    home.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Text(game.lineScore.homeStats.goals.toString(), style: Styles.infoTableValueText)),
    ));
    away.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Text(game.lineScore.awayStats.goals.toString().toString(), style: Styles.infoTableValueText)),
    ));
    yield TableRow(decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white, width: 4))), children: columns);
    yield TableRow(decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white, width: 2))),children: home);
    yield TableRow(children: away);
  }

  Iterable<TableRow> get shotsRows sync* {
    List<Widget> columns = [Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Text('Team', style: Styles.infoTableHeaderText)),
    )];
    List<Widget> home = [Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Styles.buildTeamSvgImage(game.homeTeam, size: 20),
          Text(game.home.abb, style: Styles.infoTableValueText),
        ],
      ),
    )];
    List<Widget> away = [Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Styles.buildTeamSvgImage(game.awayTeam, size: 20),
          Text(game.away.abb, style: Styles.infoTableValueText),
        ],
      ),
    )];
    for (Period period in game.lineScore.periods) {
      columns.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text(period.ordinalNum, style: Styles.infoTableHeaderText)),
      ));
      home.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text(getJsonInt('shotsOnGoal', period.home).toString(), style: Styles.infoTableValueText)),
      ));
      away.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text(getJsonInt('shotsOnGoal', period.away).toString(), style: Styles.infoTableValueText)),
      ));
    }
    columns.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Text('T', style: Styles.infoTableHeaderText)),
    ));
    home.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Text(game.lineScore.homeStats.shots.toString(), style: Styles.infoTableValueText)),
    ));
    away.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Text(game.lineScore.awayStats.shots.toString().toString(), style: Styles.infoTableValueText)),
    ));
    yield TableRow(decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white, width: 4))), children: columns);
    yield TableRow(decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white, width: 2))),children: home);
    yield TableRow(children: away);
  }
}

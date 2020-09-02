import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:FlutterNhl/redux/models/game/play/play_enum.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/player/player_enums.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_stat_view.dart';
import 'package:FlutterNhl/views/game/game_widgets/play_card.dart';
import 'package:FlutterNhl/views/player/widgets/player_bio.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
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
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: CustomDataTableSource.headerRowHeight +
                  CustomDataTableSource.dataRowHeight * 2 +
                  10,
              child: Row(
                children: [
                  firstColumn,
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: scoringRows.toList(),
                    ),
                  ),
                ],
              ),
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
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: CustomDataTableSource.headerRowHeight +
                  CustomDataTableSource.dataRowHeight * 2 +
                  10,
              child: Row(
                children: [
                  firstColumn,
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: shotsRows.toList(),
                    ),
                  ),
                ],
              ),
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
        GameStats(
            homeStats: game.home.teamStats,
            awayStats: game.away.teamStats,
            homeColor: game.home.teamColor,
            awayColor: game.away.teamColor),
        SliverPadding(
          padding: EdgeInsets.only(top: 20),
          sliver: SliverToBoxAdapter(
            child: PlayerBioTab.createHeaderDivider('Decisions'),
          ),
        ),
        SliverList(delegate: SliverChildListDelegate(threeStars.toList())),
      ],
    );
  }

  Iterable<Widget> get threeStars sync* {
    for (MapEntry<String, PlayerGame> entry in game.decisionPlayers.entries) {
      yield Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            PlayerBioTab.createSecondaryHeaderDivider(entry.key),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Styles.buildPlayerCircleIcon(entry.value, size: 50.0),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${entry.value.fullname} - #${entry.value.jerseyNumber} - ${positionToAbbString(entry.value.position.code)}',
                        style: Styles.infoTableSecondaryHeaderText,
                      ),
                      entry.value.statText,
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }
  }

  Iterable<Widget> get scoringPlays sync* {
    Play lastPeriod;
    for (Play play in game.scoringPlays) {
      if (lastPeriod != null &&
          play.type == PlayEnum.PERIOD_START &&
          lastPeriod.about.period != play.about.period) {
        lastPeriod = play;
        yield Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Text(
            'No scoring this period',
            style: Styles.playHeaderText,
          )),
        );
      } else if (play.type == PlayEnum.PERIOD_START) {
        lastPeriod = play;
      } else {
        lastPeriod = null;
      }
      yield getPlayCardSummary(play, game.homeTeam.id);
    }
  }

  Container makeTableColumn(String header, String home, String away) {
    return Container(
      width: 50,
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.white,
              ))),
              height: CustomDataTableSource.headerRowHeight,
              child: Center(
                  child: Text(header,
                      style: CustomDataTableSource.headerRowStyle))),
          Container(
              height: CustomDataTableSource.dataRowHeight,
              child: Center(
                  child:
                      Text(home, style: CustomDataTableSource.cellRowStyle))),
          Container(
              height: CustomDataTableSource.dataRowHeight,
              child: Center(
                  child:
                      Text(away, style: CustomDataTableSource.cellRowStyle))),
        ],
      ),
    );
  }

  Widget get firstColumn {
    return Container(
      width: 100,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.white,
            ))),
            height: CustomDataTableSource.headerRowHeight,
            child: Center(
                child:
                    Text('Team', style: CustomDataTableSource.headerRowStyle)),
          ),
          Container(
            height: CustomDataTableSource.dataRowHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Styles.buildTeamSvgImage(game.homeTeam, size: 20),
                Text(game.home.abb,
                    style: CustomDataTableSource.firstColumnStyle),
              ],
            ),
          ),
          Container(
            height: CustomDataTableSource.dataRowHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Styles.buildTeamSvgImage(game.awayTeam, size: 20),
                Text(game.away.abb,
                    style: CustomDataTableSource.firstColumnStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Iterable<Widget> get scoringRows sync* {
    for (Period period in game.lineScore.periods) {
      yield makeTableColumn(
          period.ordinalNum,
          getJsonInt('goals', period.home).toString(),
          getJsonInt('goals', period.away).toString());
    }
    yield makeTableColumn('T', game.lineScore.homeStats.goals.toString(),
        game.lineScore.awayStats.goals.toString().toString());
  }

  Iterable<Widget> get shotsRows sync* {
    for (Period period in game.lineScore.periods) {
      yield makeTableColumn(
          period.ordinalNum,
          getJsonInt('shotsOnGoal', period.home).toString(),
          getJsonInt('shotsOnGoal', period.away).toString());
    }
    yield makeTableColumn('T', game.lineScore.homeStats.shots.toString(),
        game.lineScore.awayStats.shots.toString().toString());
  }
}

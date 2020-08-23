import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/views/player/widgets/player_bio.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/game_log_item.dart';
import 'package:flutter/material.dart';

class GameMatchUpView extends StatelessWidget {
  final TeamPreview home;
  final TeamPreview away;

  const GameMatchUpView({
    Key key,
    @required this.home,
    @required this.away,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.only(top: 20),
          sliver: SliverToBoxAdapter(
            child: PlayerBioTab.createHeaderDivider('Players to watch')
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 100,
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            if (lastFivePlayersWidgets.length > index)
              return lastFivePlayersWidgets.elementAt(index);
            else
              return ErrorView(UIUnknownStateException('game_matchup_view build 1'));
          }, childCount: lastFivePlayersWidgets.length),
        ),
        SliverToBoxAdapter(
          child: PlayerBioTab.createHeaderDividerWidget(Column(
            children: <Widget>[
              Styles.buildTeamSvgImage(home),
              Text('Last 5 record', style: Styles.infoTableHeaderText),
            ],
          ),),
        ),
        SliverFixedExtentList(
          itemExtent: 50,
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            if (lastFiveGamesHomeWidgets.length > index)
              return lastFiveGamesHomeWidgets.elementAt(index);
            else
              return ErrorView(UIUnknownStateException('game_matchup_view build 2'));
          }, childCount: lastFiveGamesHomeWidgets.length),
        ),
        SliverToBoxAdapter(
          child: PlayerBioTab.createHeaderDividerWidget(Column(
            children: <Widget>[
              Styles.buildTeamSvgImage(away),
              Text('Last 5 record', style: Styles.infoTableHeaderText),
            ],
          ),),

        ),
        SliverFixedExtentList(
          itemExtent: 50,
          delegate:
          SliverChildBuilderDelegate((BuildContext context, int index) {
            if (lastFiveGamesAwayWidgets.length > index)
              return lastFiveGamesAwayWidgets.elementAt(index);
            else
              return ErrorView(UIUnknownStateException('game_matchup_view build 3'));
          }, childCount: lastFiveGamesAwayWidgets.length),
        ),
      ],
    );
  }

  Iterable<Widget> get lastFivePlayersWidgets sync* {
    for (String key in TeamPreview.lastFiveKeys) {
      if (home.leadersLastFive.containsKey(key) &&
          away.leadersLastFive.containsKey(key)) {
        yield _getLastFive(
            key, home.leadersLastFive[key], away.leadersLastFive[key]);
      }
    }
  }

  Widget _getLastFive(String stat, PlayerLastFive home, PlayerLastFive away) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
            child: Styles.buildPlayerCircleIcon(home),
          ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(home.shortName),
                Text('#${home.number} - ${home.position.positionString}')
              ],
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: RichText(
              text: TextSpan(
                style: Styles.scaffoldGameLoserText,
                children: <TextSpan>[
                  TextSpan(
                      text: '${home.value}',
                      style: Styles.scaffoldGameWinnerText),
                  TextSpan(text: ' ${getColumnAbb(stat)} ', style: Styles.scaffoldGameVsText),
                  TextSpan(
                      text: '${away.value}',
                      style: Styles.scaffoldGameWinnerText),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(away.shortName),
                Text('#${away.number} - ${away.position.positionString}')
              ],
            ),
          ),
        ),
    Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
            child: Styles.buildPlayerCircleIcon(away),
          ),
      ],
    );
  }

  Iterable<Widget> get lastFiveGamesHomeWidgets sync*{
    for(Game game in home.previousGames){
      yield lastFiveGame(game, home);
    }
  }

  Iterable<Widget> get lastFiveGamesAwayWidgets sync*{
    for(Game game in away.previousGames){
      yield lastFiveGame(game, away);
    }
  }

  static Widget lastFiveGame(Game teamGame, Team team){
    return GameLogRow(date: teamGame.dateTime, opponent: teamGame.getOpponent(team), result: teamGame.getResult(team));
  }
}

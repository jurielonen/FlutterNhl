import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_app_bar.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_matchup_view.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_player_view.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_stat_view.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/scaffold_template.dart';
import 'package:flutter/material.dart';


class GamePreviewView extends StatelessWidget {
  final GamePreview game;
  final LoadingStatus loadingStatus;
  final Exception error;

  const GamePreviewView(
      {Key key,
      @required this.game,
      @required this.loadingStatus,
      @required this.error})
      : super(key: key);

  static const List<String> _tabs = ['Match Up', 'Stats', 'Home', 'Away'];

  @override
  Widget build(BuildContext context) {
    return ScaffoldTemplate(
      loadingStatus: loadingStatus,
      error: error,
      onTabChanged: (String tab) => _buildTabContent(tab),
      appBarTitle: GameAppBar.getTitle(game),
      tabs: _createTabs.toList(),
      loadingText: 'Loading game',
      //onTabPressed: (int index) => print('tab pressed $index'),
    );
  }

  Iterable<TemplateTab> get _createTabs sync* {
    for (String tab in _tabs) {
      if (tab == 'Home')
        yield TemplateTab(
            child: Center(
              child: Row(
                children: <Widget>[
                  Styles.buildTeamSvgImage(game.home, size: 20),
                  Text(tab)
                ],
              ),
            ),
            text: tab);
      else if (tab == 'Away')
        yield TemplateTab(
            child: Center(
              child: Row(
                children: <Widget>[
                  Styles.buildTeamSvgImage(game.away, size: 20),
                  Text(tab)
                ],
              ),
            ),
            text: tab);
      else
        yield TemplateTab(child: Center(child: Text(tab)), text: tab);
    }
  }

  Widget _buildTabContent(String tab) {
    print('building $tab');
    switch (tab) {
      case 'Match Up':
        return GameMatchUpView(home: game.home, away: game.away,);
      case 'Stats':
        return CustomScrollView(
          slivers: <Widget>[
            GameStats(
              homeStats: game.home.teamStats,
              awayStats: game.away.teamStats,
              homeColor: game.home.teamColor,
              awayColor: game.away.teamColor,
            ),
          ],
        );
      case 'Home':
        return CustomScrollView(
          slivers: <Widget>[
            GamePlayerView(
              players: game.home.playerTableSource,
              goalies: game.home.goalieTableSource,
            ),
          ],
        );
      case 'Away':
        return CustomScrollView(
          slivers: <Widget>[
            GamePlayerView(
              players: game.away.playerTableSource,
              goalies: game.away.goalieTableSource,
            ),
          ],
        );
      default:
        return ErrorView(error == null ? UIUnknownStateException('game_preview_view _buildTabContent') : error);
    }
  }
}

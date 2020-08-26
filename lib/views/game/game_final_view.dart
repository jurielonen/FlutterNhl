import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_app_bar.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_play_view.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_player_view.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_stat_view.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_summary.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_video_view.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/scaffold_template.dart';
import 'package:flutter/material.dart';

class GameFinalView extends StatelessWidget {
  final GameFinal game;
  final LoadingStatus loadingStatus;
  final Exception error;
  final VoidCallback contentCallBack;
  final VoidCallback refreshCallBack;

  const GameFinalView(
      {Key key,
      @required this.game,
      @required this.loadingStatus,
      @required this.error,
      @required this.contentCallBack,
      @required this.refreshCallBack})
      : super(key: key);
  static const List<String> _tabs = [
    'Summary',
    'Plays',
    'Home',
    'Away',
    'Videos'
  ];

  @override
  Widget build(BuildContext context) {
    return RefreshScaffoldTemplate(
      loadingStatus: loadingStatus,
      error: error,
      onTabChanged: (String tab) => _buildTabContent(tab),
      appBarTitle: GameAppBar.getTitle(game),
      tabs: _createTabs.toList(),
      loadingText: 'Loading game content',
      onTabPressed: (int tab) {
        if (_tabs.length > tab && _tabs[tab] == 'Videos') contentCallBack();
      },
      refreshCallBack: () => _refreshCallBack(),
    );
  }

  Future<Null> _refreshCallBack() {
    print('Game callback');
    refreshCallBack();
    return null;
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
    switch (tab) {
      case 'Summary':
        return GameSummary(game: game,);
      case 'Plays':
        return GamePlayView(plays: game.plays, homeId: game.home.id);
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
      case 'Videos':
        return CustomScrollView(
          slivers: <Widget>[
            GameVideoView(
              content: game.content,
            ),
          ],
        );
      default:
        return CustomScrollView(
          slivers: <Widget>[
            SliverErrorView(error: error),
          ],
        );
    }
  }
}

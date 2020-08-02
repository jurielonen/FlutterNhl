import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_app_bar.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_play_view.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_player_view.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_stat_view.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_video_view.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view2.dart';
import 'package:FlutterNhl/widgets/scaffold_template.dart';
import 'package:flutter/material.dart';

class GameFinalView extends StatelessWidget {
  final GameFinal game;
  final LoadingStatus loadingStatus;
  final String errorMsg;
  const GameFinalView(
      {Key key,
      @required this.game,
      @required this.loadingStatus,
      @required this.errorMsg})
      : super(key: key);
  static const List<String> _tabs = [
    'Stats',
    'Plays',
    'Home',
    'Away',
    'Videos'
  ];

  @override
  Widget build(BuildContext context) {
    return ScaffoldTemplate(
        loadingStatus: loadingStatus,
        errorMsg: errorMsg,
        onTabChanged: (String tab) => _buildTabContent(tab),
        appBarTitle: GameAppBar.getTitle(game),
        tabs: _createTabs.toList(),
        loadingText: 'Loading game',
        //onTabPressed: null
    );
    /*NestedTemplateView2(
      tabs: _createTabs.toList(),
      loadingStatus: loadingStatus,
      errorMsg: errorMsg,
      onTabPressed: (tab) => print('pressed tab $tab'),
      content: GameFinalAppBarContent(game),
      successContent: _buildTabContent(game),
    );*/
  }

  Iterable<NestedTemplateTab> get _createTabs sync* {
    for (String tab in _tabs) {
      if (tab == 'Home')
        yield NestedTemplateTab(
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
        yield NestedTemplateTab(
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
        yield NestedTemplateTab(child: Center(child: Text(tab)), text: tab);
    }
  }

  Widget _buildTabContent(String tab) {

          switch (tab) {
            case 'Stats':
              return CustomScrollView(
                slivers: <Widget>[
                  GameStats(
                      homeStats: game.home.teamStats,
                      awayStats: game.away.teamStats,
                      homeColor: game.home.teamColor),
                ],
              );
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
                  SliverErrorView(msg: errorMsg),
                ],
              );
          }
  }
}

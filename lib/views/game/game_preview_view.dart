import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_player_view.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_stat_view.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view.dart';
import 'package:flutter/material.dart';

class GamePreviewAppBarContent implements NestedTemplateViewAppBarContent {
  @override
  double expandedHeight() {
    return 200.0;
  }

  @override
  Widget getExpanded() {
    return FlexibleSpaceBar(
      title: Text('Game'),
    );
  }

  @override
  bool getLeading() {
    return true;
  }

  @override
  Widget getTitle(bool isScrolled) {
    return null;//Text('Game');
  }
}

class GamePreviewView extends StatelessWidget {
  final GamePreview game;
  final LoadingStatus loadingStatus;
  final String errorMsg;

  const GamePreviewView(
      {Key key,
      @required this.game,
      @required this.loadingStatus,
      @required this.errorMsg})
      : super(key: key);

  static const List<String> _tabs = ['Stats', 'Home', 'Away'];
  @override
  Widget build(BuildContext context) {
    return NestedTemplateView(
        tabs: _buildTabContent(game),
        loadingStatus: loadingStatus,
        errorMsg: errorMsg,
        onTabPressed: (tab) => print('pressed tab $tab'),
        content: GamePreviewAppBarContent());
        //successContent: (tab) => _buildTabContent(tab, game));
  }

  Map<String, List<Widget>> _buildTabContent(GamePreview game) {
    return Map.fromIterable(_tabs,
        key: (tab) => tab.toString(),
        value: (tab) {
          switch (tab) {
            case 'Stats':
              return [
                GameStats(
                    homeStats: game.home.teamStats,
                    awayStats: game.away.teamStats,
                    homeColor: game.home.teamColor)
              ];
            case 'Home':
              return [
                GamePlayerView(
                  players: game.home.playerTableSource,
                  goalies: game.home.goalieTableSource,
                )
              ];
            case 'Away':
              return [
                GamePlayerView(
                  players: game.away.playerTableSource,
                  goalies: game.away.goalieTableSource,
                )
              ];
            default:
              return [ErrorView(errorMsg)];
          }
        });
  }

  /*Widget _buildTabContent(String tab, GamePreview game){
    switch (tab) {
      case 'Stats':
        return
          GameStats(
              homeStats: game.home.teamStats,
              awayStats: game.away.teamStats,
              homeColor: game.home.teamColor)
        ;
      case 'Home':
        return
          GamePlayerView(
            players: game.home.playerTableSource,
            goalies: game.home.goalieTableSource,
          )
        ;
      case 'Away':
        return
          GamePlayerView(
            players: game.away.playerTableSource,
            goalies: game.away.goalieTableSource,
          );
      default:
        return SliverErrorView(errorMsg);
    }
  }*/
}

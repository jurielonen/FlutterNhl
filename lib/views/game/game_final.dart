import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/views/game/game_preview.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_player_view.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_stat_view.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view2.dart';
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
    return NestedTemplateView2(
      tabs: _tabs,
      loadingStatus: loadingStatus,
      errorMsg: errorMsg,
      onTabPressed: (tab) => print('pressed tab $tab'),
      content: GamePreviewAppBarContent(),
      successContent: (tab) => _buildTabContent(tab, game),
    );
  }

  Widget _buildTabContent(String tab, GameFinal game) {
    switch (tab) {
      case 'Stats':
        return GameStats(
            homeStats: game.home.teamStats,
            awayStats: game.away.teamStats,
            homeColor: game.home.teamColor);
      case 'Home':
        return GamePlayerView(
          players: game.home.playerStats,
          type: StatType.PLAYER,
        );
      case 'Away':
        return GamePlayerView(
          players: game.away.playerStats,
          type: StatType.PLAYER,
        );
      default:
        return ErrorView(errorMsg);
    }
  }
}

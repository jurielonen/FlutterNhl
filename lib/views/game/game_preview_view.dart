import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_player_view.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_stat_view.dart';
import 'package:FlutterNhl/widgets/custom_scroll_template_view.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GamePreviewAppBarContent implements NestedTemplateViewAppBarContent {
  final GamePreview game;

  GamePreviewAppBarContent(this.game);
  @override
  double expandedHeight() {
    return 200.0;
  }

  @override
  Widget getExpanded() {
    return null;
  }

  @override
  bool getLeading() {
    return false;
  }

  @override
  Widget getTitle(bool isScrolled) {
    return null;
  }

  Widget _getTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Styles.buildTeamSvgImage(game.home),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Styles.scaffoldGameLoserText,
                children: <TextSpan>[
                  TextSpan(
                      text: '${game.homeTeam.abb}',
                      style: Styles.scaffoldGameWinnerText),
                  TextSpan(text: ' VS ', style: Styles.scaffoldGameVsText),
                  TextSpan(
                      text: '${game.awayTeam.abb}',
                      style: Styles.scaffoldGameWinnerText),
                ],
              ),
            ),
            Text(
              Styles.dateTimeFormat.format(game.dateTime),
              style: Styles.scaffoldGameVsText,
            ),
          ],
        ),
        Styles.buildTeamSvgImage(game.away),
      ],
    );
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
    return NestedTemplateView2(
        tabs: _tabs, //_buildTabContent(game),
        loadingStatus: loadingStatus,
        errorMsg: errorMsg,
        onTabPressed: (tab) => print('pressed tab $tab'),
        content: GamePreviewAppBarContent(game), //);
        successContent: _buildTabContent(game));
  }

  Map<String, Widget> _buildTabContent(GamePreview game) {
    return Map.fromIterable(_tabs,
        key: (tab) => tab.toString(),
        value: (tab) {
          switch (tab) {
            case 'Stats':
              return CustomScrollTemplateView(
                slivers: <Widget>[
                  GameStats(
                    homeStats: game.home.teamStats,
                    awayStats: game.away.teamStats,
                    homeColor: game.home.teamColor,
                  ),
                ],
              );
            case 'Home':
              return CustomScrollTemplateView(
                slivers: <Widget>[
                  GamePlayerView(
                    players: game.home.playerTableSource,
                    goalies: game.home.goalieTableSource,
                  ),
                ],
              );
            case 'Away':
              return CustomScrollTemplateView(
                slivers: <Widget>[
                  GamePlayerView(
                    players: game.away.playerTableSource,
                    goalies: game.away.goalieTableSource,
                  ),
                ],
              );
            default:
              return CustomScrollTemplateView(
                slivers: <Widget>[
                  SliverErrorView(msg: errorMsg == '' ? 'Error' : errorMsg)
                ],
              );
          }
        });
  }
}

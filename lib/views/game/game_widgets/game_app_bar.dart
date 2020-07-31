import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:flutter/material.dart';
class GameAppBar {
  static AppBar getGameAppBar(Game game, List<Tab> tabs) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: getTitle(game),
      bottom: TabBar(
        tabs: tabs,
      ),
    );
  }

  static Widget getTitle(Game game){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Styles.buildTeamSvgImage(game.homeTeam),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Styles.scaffoldGameLoserText,
                children: <TextSpan>[
                  TextSpan(
                      text: '${game.homeAppBarText}',
                      style: game.homeAppBarStyle),
                  TextSpan(text: ' VS ', style: Styles.scaffoldGameVsText),
                  TextSpan(
                      text: '${game.awayAppBarText}',
                      style: game.awayAppBarStyle),
                ],
              ),
            ),
            Text(
              game.getAppBarInfo,
              style: Styles.scaffoldGameVsText,
            ),
          ],
        ),
        Styles.buildTeamSvgImage(game.awayTeam),
      ],
    );
  }

}
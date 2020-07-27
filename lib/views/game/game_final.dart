import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/widgets/nested_template_view.dart';
import 'package:flutter/material.dart';

class GameFinalView extends StatelessWidget {
  final GameFinal game;
  const GameFinalView({Key key, this.game}) : super(key: key);
  static const List<String> _tabs = ['Stats', 'Plays', 'Home', 'Away', 'Videos'];
  @override
  Widget build(BuildContext context) {
    return NestedTemplateView(
        tabs: null,
        loadingStatus: null,
        errorMsg: null,
        onTabPressed: null,
        content: null);
  }
}

import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/widgets/custom_scroll_template_view.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:flutter/material.dart';

class GamePlayerView extends StatelessWidget {
  final List<PlayerGame> players;
  final StatType type;

  const GamePlayerView({Key key, this.players, this.type}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    if(players != null && players.isNotEmpty){

    } else {
      widgets.add(SliverErrorView(msg: 'No players downloaded',));
    }

    return CustomScrollTemplateView(
      slivers: widgets,
    );
  }
}

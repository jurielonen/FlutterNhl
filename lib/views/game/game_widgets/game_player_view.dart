import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/player/player_preview_table_source.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:flutter/material.dart';

class GamePlayerView extends StatelessWidget {
  final List<PlayerGame> players;
  final StatType type;

  const GamePlayerView({Key key, this.players, this.type}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if(players != null && players.isNotEmpty){
      final PlayerPreviewTableSource source = PlayerPreviewTableSource(type: type, players: players);
      return SliverToBoxAdapter(child: CustomDataTable(dataTableSource: source,));
    } else {
      return SliverErrorView(msg: 'No players downloaded',);
    }
  }
}

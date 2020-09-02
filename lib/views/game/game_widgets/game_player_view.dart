import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player_preview_table_source.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:flutter/material.dart';

class GamePlayerView extends StatelessWidget {
  final PlayerGameTableSource players;
  final PlayerGameTableSource goalies;

  const GamePlayerView(
      {Key key, @required this.players, @required this.goalies})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (players != null) {
      return SliverPadding(
        padding: EdgeInsets.all(8.0),
        sliver: SliverList(
          delegate: SliverChildListDelegate(
            [
              ListTile(title: Text('Players')),
              getPlayerTable(),
              ListTile(
                title: Text('Goalies'),
              ),
              getGoalieTable()
            ],
          ),
        ),
      );
    } else {
      return SliverErrorView(
        error: UINoDataDownloadedException('game_player_view build'),
      );
    }
  }

  Widget getPlayerTable() {
    if (players != null) {
      return CustomDataTable(
        dataTableSource: players,
      );
    } else {
      return ErrorView(
          UINoDataDownloadedException('game_player_view getPlayerTable'));
    }
  }

  Widget getGoalieTable() {
    if (goalies != null) {
      return CustomDataTable(
        dataTableSource: goalies,
      );
    } else {
      return ErrorView(
          UINoDataDownloadedException('game_player_view getGoalieTable'));
    }
  }
}

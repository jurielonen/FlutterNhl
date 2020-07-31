import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/player/player_preview_table_source.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:flutter/material.dart';

class GamePlayerView extends StatelessWidget {
  final PlayerPreviewTableSource players;
  final PlayerPreviewTableSource goalies;

  const GamePlayerView(
      {Key key, @required this.players, @required this.goalies})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (players != null) {
      return SliverPadding(
        padding: EdgeInsets.all(8.0),
        sliver: SliverList(
          delegate:
              /*SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            if(index == 0)
              return ListTile(title: Text('Players'));
            else if(index == 1)
              return getPlayerTable();
            else if(index == 2)
              return ListTile(
                title: Text('Goalies'),
              );
            else if(index == 3)
              return getGoalieTable();
            else
              return ErrorView('Unknown index $index');
    }, childCount: 4),*/
              SliverChildListDelegate(
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
        msg: 'No players downloaded',
      );
    }
  }

  Widget getPlayerTable() {
    if (players != null) {
      return CustomDataTable(
        dataTableSource: players,
      );
    } else {
      return ErrorView('Player data not loaded');
    }
  }

  Widget getGoalieTable() {
    if (goalies != null) {
      return CustomDataTable(
        dataTableSource: goalies,
      );
    } else {
      return ErrorView('Goalie data not loaded');
    }
  }
}

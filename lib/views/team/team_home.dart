import 'package:flutter/material.dart';
import 'package:FlutterNhl/redux/states/stats/stats_table_source.dart';

class TeamHome extends StatelessWidget {
  static const String routeName = '/team';
  final TeamPageArguments teamArguments;

  const TeamHome({Key key, this.teamArguments}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(teamArguments.teamName),
      ),
    );
  }
}

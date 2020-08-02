import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter/material.dart';

import 'custom_data_table.dart';

class GameLogRow extends StatelessWidget {
  final DateTime date;
  final Team opponent;
  final String result;

  const GameLogRow({Key key,@required this.date, @required this.opponent,@required this.result}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Center(child: Text(Styles.dateWithoutYearFormat .format(date), style: CustomDataTableSource.headerRowStyle))),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Styles.buildTeamSvgImage(opponent, size: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(opponent.abb, style: CustomDataTableSource.headerRowStyle),
                  ),
                ],
            ),
          ),
          Expanded(child: Center(child: Text(result, style: CustomDataTableSource.headerRowStyle)),)
        ],
      ),
    );
  }
}

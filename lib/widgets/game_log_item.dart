import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter/material.dart';

class GameLogRow extends StatelessWidget {
  final DateTime date;
  final Team opponent;
  final String result;

  const GameLogRow({Key key, @required this.date, @required this.opponent, @required this.result}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(Styles.dateFormat.format(date)),
        Row(
          children: <Widget>[
            Styles.buildTeamSvgImage(opponent, size: 20),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Text(opponent.abb),
            ),
            Text(result),
          ],
        )
      ],
    );
  }
}

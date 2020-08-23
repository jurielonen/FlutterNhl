
import 'package:FlutterNhl/constants/styles.dart';
import 'package:flutter/material.dart';

class SliverIdleView extends StatelessWidget {
  final String msg;
  final Color color;

  const SliverIdleView({Key key, this.msg, this.color = Colors.grey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: IdleView(msg),
    );
  }}

class IdleView extends StatelessWidget {
  final String msg;
  final Color color;

  IdleView(this.msg, {this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.error_outline,
            color: color,
            size: 60,
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(msg, style: Styles.errorText),
          ),
        ],
      ),
    );
  }
}
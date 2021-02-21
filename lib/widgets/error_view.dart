import 'package:FlutterNhl/constants/styles.dart';
import 'package:flutter/material.dart';

class SliverErrorView extends StatelessWidget {
  final Exception error;
  final VoidCallback refresh;
  final Color color;

  const SliverErrorView({Key key, this.error, this.refresh, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: ErrorView(
        error,
        refresh: refresh,
        color: color,
      ),
    );
  }
}

class ErrorView extends StatelessWidget {
  final Exception error;
  final Color color;
  final VoidCallback refresh;

  ErrorView(this.error, {this.color = Colors.red, this.refresh});

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      Icon(
        Icons.error_outline,
        color: color,
        size: 60,
      ),
      Padding(
        padding: EdgeInsets.only(top: 16),
        child: Text(error.toString(), style: Styles.errorText),
      ),
    ];
    if (refresh != null) {
      children.add(
        RaisedButton.icon(onPressed: refresh, icon: Icon(Icons.refresh), label: Text('Refresh')),
      );
    }
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children),
    );
  }
}

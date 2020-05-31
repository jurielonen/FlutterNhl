import 'package:FlutterNhl/constants/styles.dart';
import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final String msg;

  ErrorView({@required this.msg});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.error_outline,
            color: Colors.red,
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

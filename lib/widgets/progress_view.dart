import 'package:FlutterNhl/constants/styles.dart';
import 'package:flutter/material.dart';

class OwnProgressIndicator extends StatelessWidget {

  final String msg;

  OwnProgressIndicator({@required this.msg});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            child: CircularProgressIndicator(),
            width: 60,
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(msg, style: Styles.loaderText),
          )
        ],
      ),
    );
  }
}
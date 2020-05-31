import 'package:FlutterNhl/views/game/game_home.dart';
import 'package:FlutterNhl/views/home_page.dart';
import 'package:FlutterNhl/views/player/player_home.dart';
import 'package:FlutterNhl/views/team/team_home.dart';
import 'package:flutter/material.dart';
import 'package:FlutterNhl/constants/theme.dart';
import 'package:FlutterNhl/constants/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NHL',
      theme: _kNHLTheme,
      routes: {
        //TODO: Add routes string from class
        Routes.homepage: (context) => HomePage(),
        Routes.game: (context) => GameHome(),
        Routes.team: (context) => TeamHome(),
        Routes.player: (context) => PlayerHome(),
      },
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


final ThemeData _kNHLTheme = buildNHLTheme();
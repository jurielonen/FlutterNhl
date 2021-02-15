import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:flutter/cupertino.dart';

@immutable
class GameShow {
  final DateTime currentDate;
  final List<int> gamesShown;

  GameShow(this.currentDate, this.gamesShown);

  GameShow copyWith({DateTime currentDate, List<int> gameShown}) {
    return GameShow(currentDate ?? this.currentDate, gamesShown ?? this.gamesShown);
  }

  factory GameShow.fromSharedPrefs(String currentDateString, List<String> gameShownString) {
    List<int> gShown = [];
    gameShownString.forEach((element) {
      int gameId = int.parse(element, onError: (e) => null);
      if (gameId != null) gShown.add(gameId);
    });
    return GameShow(DateTime.parse(currentDateString), gShown);
  }

  GameShow addGameToList(int gameId) {
    if (!gamesShown.contains(gameId)) {
      List<int> list = this.gamesShown;
      list.add(gameId);
      return GameShow(this.currentDate, list);
    }
    return this;
  }

  String get getCurrentDateString => Styles.apiDateFormat.format(currentDate);

  List<String> get gameShownListString =>
      gamesShown.isEmpty ? [] : gamesShown.map((e) => e.toString()).toList();

  bool checkGame(Game game) => gamesShown.contains(game.id);
}

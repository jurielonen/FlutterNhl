import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:flutter/foundation.dart';


class Schedule {

  final int gameCount;
  final DateTime date;

  get dateString => Styles.dateFormat.format(date);
  get apiDateString => Styles.apiDateFormat.format(date);

  Schedule({
    @required this.gameCount,
    @required this.date,
  });


  factory Schedule.fromJson(Map<String,dynamic> json, String paramDate){
    int tGameCount = getJsonInt('totalGames', json);
    DateTime tDate = DateTime.tryParse(paramDate).toLocal();
    if(tGameCount > 0){
      List<dynamic> tList = json['dates'];
      List<Game> tGames = [];
      tGames = List<Game>.from((tList.first['games'] as Iterable<dynamic>). map<dynamic>((dynamic game) => Game.fromJson(game as Map<String, dynamic>)));
      return ScheduleGames(
        gameCount: tGameCount,
        date: tDate,
        games: tGames
      );
    } else {
      return Schedule(
          gameCount: tGameCount,
          date: tDate);
    }
  }

  Schedule.empty(): this(gameCount: 0, date: null);

  @override
  String toString() {
    return '$gameCount, $date';
  }

  bool get isGameLive {
    return false;
  }
}

class ScheduleGames extends Schedule {
  List<Game> games;

  ScheduleGames({int gameCount, DateTime date, this.games}): super(gameCount: gameCount, date: date);

  @override
  bool get isGameLive {
    for (Game game in games) {
      if(game.isLive)
        return true;
    }
    return false;
  }
}
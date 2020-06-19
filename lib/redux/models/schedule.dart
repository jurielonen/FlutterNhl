import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:flutter/cupertino.dart';

enum ScheduleTypeEnum {
  EMPTY,
  GAMES
}

class Schedule {

  final int gameCount;
  final DateTime date;
  final ScheduleTypeEnum type;

  get dateString => Styles.dateFormat.format(date);
  get apiDateString => Styles.apiDateFormat.format(date);

  Schedule({
    @required this.gameCount,
    @required this.date,
    @required this.type
  });


  factory Schedule.fromJson(Map<String,dynamic> json, String paramDate){
    int tGameCount = getJsonInt('totalGames', json);
    if(tGameCount > 0){
      List<dynamic> tList = json['dates'];
      List<Game> tGames = [];
      tGames = List<Game>.from((tList.first['games'] as Iterable<dynamic>). map<dynamic>((dynamic game) => Game.fromJson(game as Map<String, dynamic>)));
      return ScheduleGames(
        gameCount: tGameCount,
        date: DateTime.parse(paramDate).toLocal(),
        games: tGames
      );
    } else {
      return Schedule(gameCount: tGameCount, date: DateTime.parse(paramDate).toLocal(), type: ScheduleTypeEnum.EMPTY);
    }
  }

  Schedule.empty(): this(gameCount: 0, date: null, type: ScheduleTypeEnum.EMPTY);

  @override
  String toString() {
    return '$type, $gameCount, $date';
  }
}

class ScheduleGames extends Schedule {
  List<Game> games;

  ScheduleGames({int gameCount, DateTime date, this.games}): super(gameCount: gameCount, date: date, type: ScheduleTypeEnum.GAMES);
}
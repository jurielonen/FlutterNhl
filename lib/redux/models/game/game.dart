import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/redux/models/game/game_enums.dart';
import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter/cupertino.dart';

final List<String> homeTeamPath = ['teams', 'home'];
final List<String> awayTeamPath = ['teams', 'away'];
final List<String> statusPath = ['status'];

enum GameClassType { PREVIEW, LIVE }

class Game {
  final int id;
  final GameType type;
  final DateTime dateTime;
  final TeamSchedule homeTeam;
  final TeamSchedule awayTeam;
  GameState state;
  Content content;
  LineScore lineScore;

  Game({
    @required this.id,
    @required this.type,
    @required this.dateTime,
    @required this.homeTeam,
    @required this.awayTeam,
    @required this.state,
    @required this.content,
    @required this.lineScore,
  });

  Game.clone(Game game)
      : this(
            id: game.id,
            type: game.type,
            dateTime: game.dateTime,
            homeTeam: game.homeTeam,
            awayTeam: game.awayTeam,
            state: game.state,
            content: game.content,
            lineScore: game.lineScore);

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: getJsonInt('gamePk', json),
      type: gameTypeFromString(getJsonString('gameType', json)),
      dateTime: getJsonDateTime('gameDate', json),
      homeTeam: TeamSchedule.fromJson(getJsonObject(homeTeamPath, json)),
      awayTeam: TeamSchedule.fromJson(getJsonObject(awayTeamPath, json)),
      state:
          gameStateFromString(getJsonString2(['status', 'statusCode'], json)),
      content: Content.fromJson(getJsonObject(['content'], json)),
      lineScore: LineScore.fromJson(getJsonObject(['linescore'], json)),
    );
  }

  @override
  String toString() {
    return '${homeTeam.name} - ${awayTeam.name}';
  }
}

class GamePreview extends Game {
  final TeamPreview home;
  final TeamPreview away;

  GamePreview({@required Game game, this.home, this.away}) : super.clone(game);

  factory GamePreview.fromJson(Game game, Map<String, dynamic> json) {
    if(game == null){
      ///TODO: better error msg
      throw Exception('Error');
    }
    TeamPreview home = TeamPreview.fromJson(getJsonObject(['teams', 0], json));
    TeamPreview away = TeamPreview.fromJson(getJsonObject(['teams', 1], json));

    return GamePreview(
      game: game,
      home: game.homeTeam.id < game.awayTeam.id ? home : away,
      away: game.homeTeam.id > game.awayTeam.id ? home : away,
    );
  }
}

class GameFinal extends Game {
  List<Play> plays;
  final TeamFinal home;
  final TeamFinal away;

  GameFinal({@required Game game, this.plays, this.home, this.away})
      : super.clone(game);

  factory GameFinal.fromJson(Game game, Map<String, dynamic> json) {
    if(game == null){
      ///TODO: better error msg
      throw Exception('Error');
    }
    return GameFinal(
      game: game,
      plays: List<Play>.from(
          getJsonList(['liveData', 'plays', 'allPlays'], json)
              .map((play) => Play.fromJson(play))),
      home: TeamFinal.fromJson(
          getJsonObject(['liveData', 'boxscore', 'teams', 'home'], json)),
      away: TeamFinal.fromJson(
          getJsonObject(['liveData', 'boxscore', 'teams', 'away'], json)),
    );
  }
}

class LineScore {
  int period;
  String periodString;
  String timeRemaining;
  List<Period> periods;

  LineScore({this.period, this.periodString, this.timeRemaining, this.periods});

  factory LineScore.fromJson(Map<String, dynamic> json) {
    return LineScore(
        period: getJsonInt('currentPeriod', json),
        periodString: getJsonString('currentPeriodOrdinal', json),
        timeRemaining: getJsonString('currentPeriodTimeRemaining', json),
        periods: List<Period>.from(getJsonList(['periods'], json)
            .map((period) => Period.fromJson(period))));
  }
}

class Period {
  String periodType;
  int num;
  Map<String, dynamic> home;
  Map<String, dynamic> away;

  Period({this.periodType, this.num, this.home, this.away});

  factory Period.fromJson(Map<String, dynamic> json) {
    return Period(
        periodType: getJsonString('periodType', json),
        num: getJsonInt('num', json),
        home: getJsonObject(['home'], json),
        away: getJsonObject(['away'], json));
  }
}

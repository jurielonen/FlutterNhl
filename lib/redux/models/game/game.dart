import 'package:FlutterNhl/redux/models/game/game_enums.dart';
import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter/cupertino.dart';

final List<String> homeTeamPath = ['teams', 'home'];
final List<String> awayTeamPath = ['teams', 'away'];
final List<String> statusPath = ['status'];

enum GameClassType {
  PREVIEW,
  LIVE
}

class Game {
  final int id;
  final GameType type;
  final DateTime dateTime;
  final Team homeTeam;
  final Team awayTeam;
  GameState state;



  Game({
    @required this.id,
    @required this.type,
    @required this.dateTime,
    @required this.homeTeam,
    @required this.awayTeam,
    @required this.state,
  });

  Game.clone(Game game) : this(id: game.id, type: game.type, dateTime: game.dateTime, homeTeam: game.homeTeam, awayTeam: game.awayTeam, state: game.state);

  factory Game.fromJson(Map<String, dynamic> json){
    Map<String, dynamic> tHome = getJsonObject(homeTeamPath, json);
    Map<String, dynamic> tAway = getJsonObject(awayTeamPath, json);
    Map<String, dynamic> tStatus = getJsonObject(statusPath, json);
    return Game(
      id: getJsonInt('gamePk', json),
      type: gameTypeFromString(getJsonString('gameType', json)),
      dateTime: DateTime.parse(getJsonString('gameDate', json)),
      homeTeam: tHome != null ? Team.fromJson(tHome): Team.empty(),
      awayTeam: tAway != null ? Team.fromJson(tAway): Team.empty(),
      state: tStatus != null ? gameStateFromString(getJsonString('statusCode', json)): GameState.UNKNOWN,
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

  factory GamePreview.fromJson(Game game, Map<String, dynamic> json){

    TeamPreview team1 = TeamPreview.fromJson(getJsonObject(['teams', 0], json));
    TeamPreview team2 = TeamPreview.fromJson(getJsonObject(['teams', 1], json));

    return GamePreview(
      game: game,
      home: team1.id == game.homeTeam.id ? team1 : (team2.id == game.homeTeam.id ? team2 : null),
      away: team1.id == game.awayTeam.id ? team1 : (team2.id == game.awayTeam.id ? team2 : null),
    );
  }
}

class GameFinal extends Game {
  List<Play> plays;

  GameFinal({@required Game game, this.plays}) : super.clone(game);

  factory GameFinal.fromJson(Game game, Map<String, dynamic> json){

    return GameFinal(
      game: game,
      plays: List<Play>.from( getJsonList(['liveData', 'plays', 'allPlays'], json).map((play) => Play.fromJson(play))),
    );
  }
}

class LineScore {
  int period;
  String periodString;
  String timeRemaining;
  List<Period> periods;

  LineScore({this.period, this.periodString, this.timeRemaining, this.periods});
  
  factory LineScore.fromJson(Map<String, dynamic> json){
    return LineScore(
      period: getJsonInt('currentPeriod', json),
      periodString: getJsonString('currentPeriodOrdinal', json),
      timeRemaining: getJsonString('currentPeriodTimeRemaining', json),
      periods: List<Period>.from( getJsonList(['periods'], json).map((period) => Period.fromJson(period)))
    );
  }
}

class Period {
  String periodType;
  int num;
  Map<String, dynamic> home;
  Map<String, dynamic> away;

  Period({this.periodType, this.num, this.home, this.away});
  
  factory Period.fromJson(Map<String, dynamic> json){
    return Period(
      periodType: getJsonString('periodType', json),
      num: getJsonInt('num', json),
      home: getJsonObject(['home'], json),
      away: getJsonObject(['away'], json)
    );
  }

}
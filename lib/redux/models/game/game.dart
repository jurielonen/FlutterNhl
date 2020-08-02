import 'package:FlutterNhl/constants/styles.dart';
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
  GameStateEnum state;
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

  String opponentAbb(Team team) {
    return isHomeTeam(team) ? awayTeam.abb : homeTeam.abb;
  }

  /*String teamWon(Team team){
    switch(state){
      case GameState.FINAL:
      case GameState.FINAL_2:

    }
  }*/

  bool isHomeTeam(Team team) {
    return team.id == homeTeam.id
        ? true
        : (team.id == awayTeam.id
            ? false
            : throw Exception('Given team hasnt played in $this'));
  }

  bool get isPreview =>
      state == GameStateEnum.SCHEDULED ||
      state == GameStateEnum.POSTPONED ||
      state == GameStateEnum.SCHEDULED_TBD ||
      state == GameStateEnum.PRE_GAME;
  bool get isLive =>
      state == GameStateEnum.IN_PROGRESS_CRITICAL ||
      state == GameStateEnum.IN_PROGRESS;
  bool get isFinal => !isPreview && !isLive;

  String get homeAppBarText {
    return homeTeam.abb;
  }

  TextStyle get homeAppBarStyle {
    if (isPreview || homeTeam.score >= awayTeam.score)
      return Styles.scaffoldGameWinnerText;
    else {
      return Styles.scaffoldGameLoserText;
    }
  }

  TextStyle get awayAppBarStyle {
    if (isPreview || awayTeam.score >= homeTeam.score)
      return Styles.scaffoldGameWinnerText;
    else {
      return Styles.scaffoldGameLoserText;
    }
  }

  String get awayAppBarText {
    return awayTeam.abb;
  }

  String get getAppBarInfo => Styles.dateTimeFormat.format(dateTime);

  String opponentAbbWith(Team team){
    return isHomeTeam(team) ? awayTeam.abb : '@${homeTeam.abb}';
  }

  String getResult(Team team){
    if(isFinal) {
      if (isHomeTeam(team)) {
        if (homeTeam.score > awayTeam.score) {
          return 'W ${homeTeam.score}-${awayTeam.score}';
        } else {
          return 'L ${homeTeam.score}-${awayTeam.score}';
        }
      } else {
        if (homeTeam.score > awayTeam.score) {
          return 'L ${homeTeam.score}-${awayTeam.score}';
        } else {
          return 'W ${homeTeam.score}-${awayTeam.score}';
        }
      }
    } else if(isLive){
      return 'Live ${homeTeam.score}-${awayTeam.score}';
    } else {
      return 'Scheduled';
    }
  }

  Team getOpponent(Team team){
    if(team.id == homeTeam.id)
      return awayTeam;
    else
      return homeTeam;
  }
}

class GamePreview extends Game {
  final TeamPreview home;
  final TeamPreview away;

  GamePreview({@required Game game, this.home, this.away}) : super.clone(game);

  factory GamePreview.fromJson(Game game, Map<String, dynamic> json,
      {Map<String, dynamic> homeLastFive, Map<String, dynamic> awayLastFive}) {
    if (game == null) {
      ///TODO: better error msg
      throw Exception('Error: GamePreview.fromJson');
    }
    TeamPreview home = TeamPreview.fromJson(getJsonObject(['teams', 0], json), lastFive: homeLastFive);
    TeamPreview away = TeamPreview.fromJson(getJsonObject(['teams', 1], json), lastFive: awayLastFive);

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
    if (game == null) {
      ///TODO: better error msg
      throw Exception('Error: GameFinal.fromJson');
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

  @override
  String get homeAppBarText {
    return '${homeTeam.abb} ${homeTeam.score}';
  }

  @override
  String get awayAppBarText {
    return '${awayTeam.score} ${awayTeam.abb}';
  }

  @override
  String get getAppBarInfo =>
      '${lineScore.periodString} ${lineScore.timeRemaining}';
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

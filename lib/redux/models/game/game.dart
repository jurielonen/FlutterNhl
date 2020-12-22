import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/redux/models/game/game_enums.dart';
import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:FlutterNhl/redux/models/game/play/play_enum.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  final PlayoffSeriesSummary seriesSummary;
  GameStateEnum state;
  Content content;
  LineScore lineScore;

  Game({
    @required this.id,
    @required this.type,
    @required this.dateTime,
    @required this.homeTeam,
    @required this.awayTeam,
    @required this.seriesSummary,
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
            seriesSummary: game.seriesSummary,
            state: game.state,
            content: game.content,
            lineScore: game.lineScore);

  factory Game.fromJson(Map<String, dynamic> json) {
    PlayoffSeriesSummary seriesSummary;
    final dateTime = getJsonDateTime('gameDate', json);
    if (Config().selectedSeason != null &&
        Config().selectedSeason.isPlayoffs(dateTime)) {
      seriesSummary =
          PlayoffSeriesSummary.fromJson(getJsonObject(['seriesSummary'], json));
    } else if (json.containsKey('seriesSummary')) {
      seriesSummary =
          PlayoffSeriesSummary.fromJson(getJsonObject(['seriesSummary'], json));
    }
    return Game(
      id: getJsonInt('gamePk', json),
      type: gameTypeFromString(getJsonString('gameType', json)),
      dateTime: dateTime,
      homeTeam: TeamSchedule.fromJson(getJsonObject(homeTeamPath, json)),
      awayTeam: TeamSchedule.fromJson(getJsonObject(awayTeamPath, json)),
      seriesSummary: seriesSummary,
      state:
          gameStateFromString(getJsonString2(['status', 'statusCode'], json)),
      content: Content.fromJson(getJsonObject(['content'], json)),
      lineScore: LineScore.fromJson(getJsonObject(['linescore'], json)),
    );
  }

  @override
  String toString() {
    return '${homeTeam.abb} ${homeTeam.score} - ${awayTeam.score} ${awayTeam.abb}';
  }

  String opponentAbb(Team team) {
    return isHomeTeam(team) ? awayTeam.abb : homeTeam.abb;
  }

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

  String get getScheduleTime {
    if (isLive)
      return '${lineScore.periodString} ${lineScore.timeRemaining}';
    else
      return Styles.timeFormat.format(dateTime.toLocal());
  }

  String get getLiveScheduleInfo =>
      '${lineScore.periodString} ${lineScore.timeRemaining}';
  String get getAppBarInfo => Styles.dateTimeFormat.format(dateTime.toLocal());

  String opponentAbbWith(Team team) {
    return isHomeTeam(team) ? awayTeam.abb : '@${homeTeam.abb}';
  }

  String getResult(Team team) {
    if (isFinal) {
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
    } else if (isLive) {
      return 'Live ${homeTeam.score}-${awayTeam.score}';
    } else {
      return 'Scheduled';
    }
  }

  Team getOpponent(Team team) {
    if (team.id == homeTeam.id)
      return awayTeam;
    else
      return homeTeam;
  }

  double get homeOpacity {
    if (isPreview || isLive || homeTeam.score >= awayTeam.score)
      return 1.0;
    else
      return 0.5;
  }

  double get awayOpacity {
    if (isPreview || isLive || awayTeam.score >= homeTeam.score)
      return 1.0;
    else {
      return 0.5;
    }
  }

  Widget get homeScheduleInfo {
    if (isFinal)
      return Text('${lineScore.homeStats.shots} SOG',
          style: Styles.cardTeamWinnerMinorText);
    else if (isLive)
      return lineScore.homeLiveInfo;
    else
      return Text(homeTeam.teamRecord, style: Styles.cardTeamWinnerMinorText);
  }

  Widget get awayScheduleInfo {
    if (isFinal)
      return Text('${lineScore.awayStats.shots} SOG',
          style: Styles.cardTeamWinnerMinorText);
    else if (isLive)
      return lineScore.awayLiveInfo;
    else
      return Text(awayTeam.teamRecord, style: Styles.cardTeamWinnerMinorText);
  }

  Text get gameStateText {
    if (isPreview) {
      return Text(
        gameStateToString(state).toUpperCase(),
        style: Styles.gameStateText,
      );
    } else if (isLive) {
      return Text(
        gameStateToString(state).toUpperCase(),
        style: Styles.gameStateText.copyWith(color: Colors.green),
      );
    } else if (isFinal) {
      if (lineScore.period > 3) {
        return Text(
          '${gameStateToString(state).toUpperCase()} ${lineScore.periodString}',
          style: Styles.gameStateText,
        );
      }
      return Text(
        gameStateToString(state).toUpperCase(),
        style: Styles.gameStateText,
      );
    }
  }
}

class PlayoffSeriesSummary {
  final int gameNumber;
  final String gameLabel;
  final String seriesStatus;

  PlayoffSeriesSummary(
      {@required this.gameNumber,
      @required this.gameLabel,
      @required this.seriesStatus});

  factory PlayoffSeriesSummary.fromJson(Map<String, dynamic> json) {
    if (json == null || json.isEmpty) return null;
    return PlayoffSeriesSummary(
        gameNumber: getJsonInt('gameNumber', json),
        gameLabel: getJsonString('gameLabel', json),
        seriesStatus: getJsonString('seriesStatusShort', json));
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

    TeamPreview home = TeamPreview.fromJson(getJsonObject(['teams', 0], json),
        lastFive: homeLastFive);
    TeamPreview away = TeamPreview.fromJson(getJsonObject(['teams', 1], json),
        lastFive: awayLastFive);

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
  final Map<String, Player> decisions;
  Map<String, PlayerGame> _decisions = {};

  GameFinal(
      {@required Game game, this.plays, this.home, this.away, this.decisions})
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
      decisions:
          getJsonObject(['liveData', 'decisions'], json).map((key, value) {
        return MapEntry(key, Player.fromJson(value));
      }),
    );
  }

  ShotMapObject get getShotMapObject => ShotMapObject(homeTeam: home, periods: lineScore.periods, shotPlays: shotPlays.toList());

  Map<String, PlayerGame> get decisionPlayers {
    if (_decisions != null && _decisions.isNotEmpty) return _decisions;

    decisions.forEach((key, value) {
      PlayerGame tempPlayer = home.getPlayer(value);
      if (tempPlayer == null) tempPlayer = away.getPlayer(value);
      if (tempPlayer != null) {
        _decisions[key] = tempPlayer;
      }
    });

    return _decisions;
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

  Iterable<Play> get scoringPlays sync* {
    for (Play play in plays) {
      if (play.type == PlayEnum.GOAL || play.type == PlayEnum.PERIOD_START)
        yield play;
    }
  }

  Iterable<PlayWithPlayers> get shotPlays sync* {
    for (Play play in plays){
      if(play.type == PlayEnum.MISSED_SHOT || play.type == PlayEnum.BLOCKED_SHOT || play.type == PlayEnum.SHOT || play.type == PlayEnum.GOAL)
        yield play;
    }
  }
}

class ShotMapObject {
  final Team homeTeam;
  final List<Period> periods;
  List<PlayWithPlayers> shotPlays;
  Map<int, List<PlayWithPlayers>> _periodPlays = {};

  ShotMapObject({@required this.homeTeam, @required this.periods, @required this.shotPlays});

  List<PlayWithPlayers> getPeriod(Period period) {
    if(!_periodPlays.containsKey(period.num)){
      _periodPlays[period.num] = shotPlays.where((play) => play.about.period == period.num).toList();
    }
    return _periodPlays[period.num];
  }
}

class LineScore {
  int period;
  String periodString;
  String timeRemaining;
  List<Period> periods;
  LineScoreStats homeStats;
  LineScoreStats awayStats;

  LineScore(
      {this.period,
      this.periodString,
      this.timeRemaining,
      this.periods,
      this.homeStats,
      this.awayStats});

  factory LineScore.fromJson(Map<String, dynamic> json) {
    return LineScore(
      period: getJsonInt('currentPeriod', json),
      periodString: getJsonString('currentPeriodOrdinal', json),
      timeRemaining: getJsonString('currentPeriodTimeRemaining', json),
      periods: List<Period>.from(getJsonList(['periods'], json)
          .map((period) => Period.fromJson(period))),
      homeStats:
          LineScoreStats.fromJson(getJsonObject(['teams', 'home'], json)),
      awayStats:
          LineScoreStats.fromJson(getJsonObject(['teams', 'away'], json)),
    );
  }

  Widget get homeLiveInfo => homeStats.liveInfo;
  Widget get awayLiveInfo => awayStats.liveInfo;
}

class LineScoreStats {
  int goals;
  int shots;
  bool goaliePulled;
  bool powerPlay;

  LineScoreStats(
      {@required this.goals,
      @required this.shots,
      @required this.goaliePulled,
      @required this.powerPlay});

  factory LineScoreStats.fromJson(Map<String, dynamic> json) {
    return LineScoreStats(
        goals: getJsonInt('goals', json),
        shots: getJsonInt('shotsOnGoal', json),
        goaliePulled: getJsonBoolean('goaliePulled', json),
        powerPlay: getJsonBoolean('powerPlay', json));
  }

  Widget get liveInfo {
    if (goaliePulled || powerPlay) {
      List<TextSpan> texts = [];
      if (powerPlay)
        texts.add(TextSpan(
            text: ' PP',
            style: Styles.cardTeamWinnerMinorText
                .copyWith(color: Colors.redAccent)));
      if (goaliePulled)
        texts.add(TextSpan(
            text: ' Goalie pulled',
            style: Styles.cardTeamWinnerMinorText
                .copyWith(color: Colors.redAccent)));
      return Text.rich(
        TextSpan(
            text: '$shots SOG',
            style: Styles.cardTeamWinnerMinorText,
            children: texts),
      );
    }
    return Text(
      '$shots SOG',
      style: Styles.cardTeamWinnerMinorText,
    );
  }
}

class Period {
  String periodType;
  String ordinalNum;
  int num;
  Map<String, dynamic> home;
  Map<String, dynamic> away;

  Period({this.periodType, this.num, this.home, this.away, this.ordinalNum});

  factory Period.fromJson(Map<String, dynamic> json) {
    return Period(
      periodType: getJsonString('periodType', json),
      num: getJsonInt('num', json),
      home: getJsonObject(['home'], json),
      away: getJsonObject(['away'], json),
      ordinalNum: getJsonString('ordinalNum', json),
    );
  }
}

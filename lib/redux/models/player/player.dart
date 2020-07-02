import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:flutter/cupertino.dart';
import 'package:FlutterNhl/redux/models/player/player_enums.dart';
import 'package:flutter/material.dart';

class Player {
  final int id;
  final String fullname;

  Player({
    @required this.id,
    @required this.fullname,
  });

  static final Map<int, Player> _cache = <int, Player>{};

  Player.clone(Player clone) : this(id: clone.id, fullname: clone.fullname);

  factory Player.fromJson(Map<String, dynamic> json) {
    int tId = getJsonInt('id', json);
    if (tId == -1) {
      tId = getJsonInt('playerId', json);
    }
    if (_cache.containsKey(tId)) {
      return _cache[tId];
    } else {
      if (tId == -1) {
        final temp = Player.empty();
        _cache[tId] = temp;
        return temp;
      } else {
        String tName = getJsonString('fullName', json);
        if (tName == '') {
          tName = getJsonString('skaterFullName', json);
        }
        if (tName == '') {
          tName = getJsonString('goalieFullName', json);
        }
        return Player(id: tId, fullname: tName);
      }
    }
  }

  factory Player.empty() {
    return Player(
      id: -1,
      fullname: '',
    );
  }

  String get headShotUrl =>
      'https://nhl.bamcontent.com/images/headshots/current/168x168/$id.jpg';
}

class PlayerPlay extends Player {
  final String playerType;

  PlayerPlay({@required Player player, this.playerType}) : super.clone(player);

  factory PlayerPlay.fromJson(Map<String, dynamic> json) {
    return PlayerPlay(
        player: Player.fromJson(getJsonObject(['player'], json)),
        playerType: getJsonString('playerType', json));
  }
}

class PlayerGame extends Player {
  String jerseyNumber;
  PersonPosition position;
  Map<String, dynamic> stats;

  PlayerGame({
    @required Player player,
    this.jerseyNumber,
    this.position,
    this.stats,
  }) : super.clone(player);

  factory PlayerGame.fromJsonFinal(Map<String, dynamic> json) {
    PersonPosition posTemp =
        PersonPosition.fromJson(getJsonObject(['position'], json));
    Map<String, dynamic> statsTemp = {};
    if (posTemp.isGoalie()) {
      statsTemp = getJsonObject(['stats', 'goalieStats'], json);
    } else if (posTemp.isPlayer()) {
      statsTemp = getJsonObject(['stats', 'skaterStats'], json);
    }

    return PlayerGame(
      player: Player.fromJson(getJsonObject(['person'], json)),
      jerseyNumber: getJsonString('jerseyNumber', json),
      position: posTemp,
      stats: statsTemp,
    );
  }

  factory PlayerGame.fromJsonPreview(Map<String, dynamic> json) {
    return PlayerGame(
      player: Player.fromJson(getJsonObject(['person'], json)),
      jerseyNumber: getJsonString('jerseyNumber', json),
      position: PersonPosition.fromJson(getJsonObject(['position'], json)),
      stats: getJsonObject(['person', 'stats', 0, 'splits', 0, 'stat'], json),
    );
  }
}

class PersonPosition {
  Position code;
  String name;

  PersonPosition({
    this.code,
    this.name,
  });

  factory PersonPosition.fromJson(Map<String, dynamic> json) => PersonPosition(
        code: positionFromString(getJsonString('code', json)),
        name: getJsonString('name', json),
      );

  bool isGoalie() {
    if (code == Position.G) return true;
    return false;
  }

  bool isPlayer() {
    if (code == Position.C ||
        code == Position.D ||
        code == Position.L ||
        code == Position.R) return true;
    return false;
  }
}

class PlayerPage extends Player {
  final String nationality;
  final String birthCity;
  final String birthCountry;
  final DateTime birthDate;
  final int draftNum;
  final int draftRound;
  final int draftYear;
  final Position position;
  final String handness;
  final String currentTeam;
  final PlayerAllTimeStats allTimeStats;
  Map<String, PlayerTableSource> stats = {};
  List<GameLogsPlayer> gameLog = [];

  PlayerPage(
      {@required Player player,
      this.nationality,
      this.birthCity,
      this.birthCountry,
      this.birthDate,
      this.draftNum,
      this.draftRound,
      this.draftYear,
      this.position,
      this.handness,
      this.currentTeam,
      this.allTimeStats})
      : super.clone(player);

  PlayerPage.empty()
      : this(
            player: Player.empty(),
            nationality: '',
            birthCity: '',
            birthCountry: '',
            handness: '',
            birthDate: DateTime.now(),
            draftNum: -1,
            draftRound: -1,
            draftYear: -1,
            position: Position.N_A,
            currentTeam: '',
            allTimeStats: PlayerPageAllTimeStats.fromJson({}));

  factory PlayerPage.fromJsonPlayer(Map<String, dynamic> json) {
    Map<String, dynamic> regular = getJsonObject(['data', 0], json);
    return PlayerPage(
        player: Player.fromJson(regular),
        nationality: getJsonString('nationalityCode', regular),
        birthCity: getJsonString('birthCity', regular),
        birthCountry: getJsonString('birthCountryCode', regular),
        handness: getJsonString('shootsCatches', regular),
        birthDate: getJsonDateTime('birthDate', regular),
        draftNum: getJsonInt('draftOverall', regular),
        draftRound: getJsonInt('draftRound', regular),
        draftYear: getJsonInt('draftYear', regular),
        position: positionFromString(getJsonString('positionCode', regular)),
        currentTeam: getJsonString('currentTeamName', regular),
        allTimeStats: PlayerPageAllTimeStats.fromJson(json));
  }

  factory PlayerPage.fromJsonGoalie(Map<String, dynamic> json) {
    Map<String, dynamic> regular = getJsonObject(['data', 0], json);
    return PlayerPage(
        player: Player.fromJson(regular),
        nationality: getJsonString('nationalityCode', regular),
        birthCity: getJsonString('birthCity', regular),
        birthCountry: getJsonString('birthCountryCode', regular),
        handness: getJsonString('shootsCatches', regular),
        birthDate: getJsonDateTime('birthDate', regular),
        draftNum: getJsonInt('draftOverall', regular),
        draftRound: getJsonInt('draftRound', regular),
        draftYear: getJsonInt('draftYear', regular),
        position: Position.G,
        currentTeam: getJsonString('currentTeamAbbrev', regular),
        allTimeStats: GoaliePageAllTimeStats.fromJson(json));
  }

  Map<String, String> get playerInfoMap {
    return {
      'Team': currentTeam,
      'Position':  playerPositionString,
      'Handess': playerHandessString
    };
  }

  String get playerPositionString {
    switch (position) {
      case Position.D:
        return 'Defenseman';
        break;
      case Position.C:
        return 'Center';
        break;
      case Position.R:
        return 'Right wing';
        break;
      case Position.L:
        return 'Left wing';
        break;
      case Position.G:
        return 'Goalie';
        break;

      ///TODO: add unknown to StatType enums
      default:
        return 'Unknown';
        break;
    }
  }

  String get playerHandessString {
    switch (handness) {
      case 'L':
        return 'Left';
        break;
      case 'R':
        return 'Right';
        break;

    ///TODO: add unknown to StatType enums
      default:
        return 'Unknown $handness';
        break;
    }
  }

  bool containsStat(String stat) {
    return stats.containsKey(stat);
  }

  PlayerTableSource getStat(String stat) {
    if (stats.containsKey(stat)) {
      return stats[stat];
    }
    return PlayerTableSource.initial();
  }

  void addStat(String stat, PlayerTableSource statStats) {
    if (!stats.containsKey(stat)) {
      stats[stat] = statStats;
    }
  }

  bool containsGameLogs() {
    return gameLog.isNotEmpty;
  }

  StatType getStatType() {
    switch (position) {
      case Position.D:
      case Position.C:
      case Position.R:
      case Position.L:
        return StatType.PLAYER;
        break;
      case Position.G:
        return StatType.GOALIE;
        break;

      ///TODO: add unknown to StatType enums
      default:
        return StatType.PLAYER;
        break;
    }
  }
}

abstract class PlayerAllTimeStats {
  Iterable<Widget> get getStatsWidget sync* {}
}

class GoaliePageAllTimeStats implements PlayerAllTimeStats {
  final GoalieAllTimeStat regular;

  GoaliePageAllTimeStats({this.regular});

  factory GoaliePageAllTimeStats.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> regular = getJsonObject(['data', 0], json);
    print(regular);
    return GoaliePageAllTimeStats(
      regular: GoalieAllTimeStat(
          gamesPlayed: getJsonInt('gamesPlayed', regular),
          wins: getJsonInt('wins', regular),
          losses: getJsonInt('losses', regular),
          otLosses: getJsonInt('otLosses', regular),
          shutouts: getJsonInt('shutouts', regular)),
    );
  }

  @override
  Iterable<Widget> get getStatsWidget sync* {
    yield Card(
      child: ListTile(
        title: Text('Regular season all time stats'),
        subtitle: RichText(
          text: TextSpan(
            text: 'GP: ',
            style: Styles.scaffoldGameWinnerText,
            children: <TextSpan>[
              TextSpan(text: regular.gamesPlayed.toString(), style: Styles.cardOtherText),
              TextSpan(text: ', W: ', style: Styles.scaffoldGameWinnerText),
              TextSpan(text: regular.wins.toString(), style: Styles.cardOtherText),
              TextSpan(text: ', L: ', style: Styles.scaffoldGameWinnerText),
              TextSpan(text: regular.losses.toString(), style: Styles.cardOtherText),
              TextSpan(text: ', OTL: ', style: Styles.scaffoldGameWinnerText),
              TextSpan(text: regular.otLosses.toString(), style: Styles.cardOtherText),
              TextSpan(text: ', SO: ', style: Styles.scaffoldGameWinnerText),
              TextSpan(text: regular.shutouts.toString(), style: Styles.cardOtherText),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayerPageAllTimeStats implements PlayerAllTimeStats {
  final PlayerAllTimeStat regular;
  final PlayerAllTimeStat playoff;

  PlayerPageAllTimeStats({this.regular, this.playoff});

  factory PlayerPageAllTimeStats.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> regular = getJsonObject(['data', 0], json);
    Map<String, dynamic> playoffs = getJsonObject(['data', 1], json);
    return PlayerPageAllTimeStats(
      regular: PlayerAllTimeStat(
          gamesPlayed: getJsonInt('gamesPlayed', regular),
          goals: getJsonInt('goals', regular),
          assists: getJsonInt('assists', regular),
          points: getJsonInt('points', regular)),
      playoff: PlayerAllTimeStat(
          gamesPlayed: getJsonInt('gamesPlayed', playoffs),
          goals: getJsonInt('goals', playoffs),
          assists: getJsonInt('assists', playoffs),
          points: getJsonInt('points', playoffs)),
    );
  }

  @override
  Iterable<Widget> get getStatsWidget sync* {
    yield Card(
      child: ListTile(
        title: Text('Regular season all time stats'),
        subtitle: RichText(
          text: TextSpan(
            text: 'GP: ',
            style: Styles.scaffoldGameWinnerText,
            children: <TextSpan>[
              TextSpan(text: regular.gamesPlayed.toString(), style: Styles.cardOtherText),
              TextSpan(text: ', G: ', style: Styles.scaffoldGameWinnerText),
              TextSpan(text: regular.goals.toString(), style: Styles.cardOtherText),
              TextSpan(text: ', A: ', style: Styles.scaffoldGameWinnerText),
              TextSpan(text: regular.assists.toString(), style: Styles.cardOtherText),
              TextSpan(text: ', P: ', style: Styles.scaffoldGameWinnerText),
              TextSpan(text: regular.points.toString(), style: Styles.cardOtherText),
            ],
          ),
        ),
      ),
    );
    yield Card(
      child: ListTile(
        title: Text('Playoffs all time stats'),
        subtitle: RichText(
          text: TextSpan(
            text: 'GP: ',
            style: Styles.scaffoldGameWinnerText,
            children: <TextSpan>[
              TextSpan(text: playoff.gamesPlayed.toString(), style: Styles.cardOtherText),
              TextSpan(text: ', G: ', style: Styles.scaffoldGameWinnerText),
              TextSpan(text: playoff.goals.toString(), style: Styles.cardOtherText),
              TextSpan(text: ', A: ', style: Styles.scaffoldGameWinnerText),
              TextSpan(text: playoff.assists.toString(), style: Styles.cardOtherText),
              TextSpan(text: ', P: ', style: Styles.scaffoldGameWinnerText),
              TextSpan(text: playoff.points.toString(), style: Styles.cardOtherText),
            ],
          ),
        ),
      ),
    );
  }
}

class GoalieAllTimeStat {
  final int gamesPlayed;
  final int wins;
  final int losses;
  final int otLosses;
  final int shutouts;

  GoalieAllTimeStat(
      {this.gamesPlayed, this.wins, this.losses, this.otLosses, this.shutouts});
}

class PlayerAllTimeStat {
  final int gamesPlayed;
  final int goals;
  final int assists;
  final int points;

  PlayerAllTimeStat({this.gamesPlayed, this.goals, this.assists, this.points});
}

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
    if (tId == -1) {
      tId = getJsonInt('nhlPlayerId', json);
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
        final temp = Player(id: tId, fullname: tName);
        _cache[tId] = temp;
        return temp;
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

  static String tableName(String fName) {
    List<String> names = fName.split(' ');
    String name = '';

    names.asMap().forEach((key, value) {
      if (key == 0) {
        name += '${value.substring(0, 1)}. ';
      } else {
        name += '$value ';
      }
    });
    return name;
  }
}

class PlayerLastFive extends Player {
  final String stat;
  final dynamic value;
  final String shortName;
  final String number;
  final PersonPosition position;

  PlayerLastFive({
    @required Player player,
    @required this.stat,
    @required this.value,
    @required this.shortName,
    @required this.number,
    @required this.position,
  }) : super.clone(player);

  factory PlayerLastFive.fromJson(String stat, Map<String, dynamic> json) {
    Map<String, dynamic> player = getJsonObject(['players', 0], json);
    return PlayerLastFive(
      player: Player.fromJson(player),
      stat: stat,
      value: getJsonDynamic('statValue', json),
      shortName: getJsonString('shortName', player),
      number: getJsonString('primaryNumber', player),
      position:
          PersonPosition.fromJson(getJsonObject(['primaryPosition'], player)),
    );
  }
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

  String get positionString {
    switch (code) {
      case Position.C:
        return 'C';
      case Position.L:
        return 'LW';
      case Position.R:
        return 'RW';
      case Position.D:
        return 'D';
      case Position.G:
        return 'G';
      case Position.HC:
        return 'HC';
      default:
        return 'NA';
    }
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
  Map<String, PlayerSeasonTableSource> stats = {};
  Map<String, List<GameLogsPlayer>> gameLog = {};

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

  Table get playerInfoTable {
    return Table(children: [
      TableRow(children: [Text('Team'), Text(currentTeam)]),
      TableRow(children: [Text('Position'), Text(playerPositionString)]),
      TableRow(children: [Text('Handess'), Text(playerHandessString)]),
      TableRow(children: [
        Text('Birth date'),
        Text(Styles.dateFormat.format(birthDate))
      ]),
      TableRow(
          children: [Text('Birthplace'), Text('$birthCity, $birthCountry')]),
      TableRow(children: [Text('Nationality'), Text(nationality)]),
    ]);
  }

  Table get playerDraftTable {
    return Table(
      children: [
        TableRow(children: [Text('Year'), Text(draftYear.toString())]),
        TableRow(children: [Text('Round'), Text('$draftRound rd')]),
        TableRow(children: [Text('Pick'), Text(draftNum.toString())]),
      ],
    );
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

  PlayerSeasonTableSource getStat(String stat) {
    if (stats.containsKey(stat)) {
      return stats[stat];
    }
    return null;
  }

  void addStat(String stat, PlayerSeasonTableSource statStats) {
    if (!stats.containsKey(stat)) {
      stats[stat] = statStats;
    }
  }

  bool containsGameLogs(String year) {
    if (gameLog.isEmpty) return false;
    return gameLog.containsKey(year);
  }

  List<GameLogsPlayer> getGameLog(String year) {
    if (gameLog.containsKey(year)) {
      return gameLog[year];
    }
    return [];
  }

  void addGameLog(String year, List<GameLogsPlayer> logs) {
    gameLog[year] = logs;
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
    yield Column(
      children: <Widget>[
        Text('Regular season all time stats'),
        Table(
          children: [
            TableRow(children: [
              Text('GP'),
              Text('W'),
              Text('L'),
              Text('OTL'),
              Text('SO')
            ]),
            TableRow(children: [
              Text(regular.gamesPlayed.toString()),
              Text(regular.wins.toString()),
              Text(regular.losses.toString()),
              Text(regular.otLosses.toString()),
              Text(regular.shutouts.toString())
            ]),
          ],
        ),
      ],
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
    yield Column(
      children: <Widget>[
        Text('Regular season all time stats'),
        Table(
          children: [
            TableRow(children: [Text('GP'), Text('G'), Text('A'), Text('P')]),
            TableRow(children: [
              Text(regular.gamesPlayed.toString()),
              Text(regular.goals.toString()),
              Text(regular.assists.toString()),
              Text(regular.points.toString())
            ]),
          ],
        ),
      ],
    );
    yield Column(
      children: <Widget>[
        Text('Playoffs all time stats'),
        Table(
          children: [
            TableRow(children: [Text('GP'), Text('G'), Text('A'), Text('P')]),
            TableRow(children: [
              Text(playoff.gamesPlayed.toString()),
              Text(playoff.goals.toString()),
              Text(playoff.assists.toString()),
              Text(playoff.points.toString())
            ]),
          ],
        ),
      ],
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

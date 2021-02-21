import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:flutter/cupertino.dart';
import 'package:FlutterNhl/redux/models/player/player_enums.dart';
import 'package:flutter/material.dart';

class Player {
  final int id;
  final String fullname;
  bool starred;

  Player({
    @required this.id,
    @required this.fullname,
    this.starred = false,
  });

  static final Map<int, Player> _cache = <int, Player>{};

  Player.clone(Player clone) : this(id: clone.id, fullname: clone.fullname, starred: clone.starred);

  ///Turns player object to a map.
  ///Used for Database.
  Map<String, dynamic> toMap() {
    return {
      DB_KEY_PLAYER_ID: id,
      DB_KEY_PLAYER_NAME: fullname,
    };
  }

  static List<Player> fromDatabase(List<Map<String, dynamic>> players) =>
      players.map((e) => Player.fromJson(e, starred: true)).toList();

  factory Player.fromJson(Map<String, dynamic> json, {bool starred = false}) {
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
        final temp = Player(id: tId, fullname: tName, starred: starred);
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

  String get headShotUrl => 'https://cms.nhl.bamgrid.com/images/headshots/current/168x168/$id.jpg';

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

  Player copyWith({int id, String fullname, bool starred}) {
    return Player(
        id: id ?? this.id, fullname: fullname ?? this.fullname, starred: starred ?? this.starred);
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
      position: PersonPosition.fromJson(getJsonObject(['primaryPosition'], player)),
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

  @override
  String toString() {
    return 'PlayerPlay{playerType: $playerType}';
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
    PersonPosition posTemp = PersonPosition.fromJson(getJsonObject(['position'], json));
    Map<String, dynamic> statsTemp = {};
    if (posTemp.isGoalie()) {
      statsTemp = getJsonObject(['stats', 'goalieStats'], json);
    } else if (posTemp.isPlayer()) {
      statsTemp = getJsonObject(['stats', 'skaterStats'], json);
      statsTemp['points'] = getJsonInt('goals', statsTemp) + getJsonInt('assists', statsTemp);
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

  RichText get statText {
    List<TextSpan> temp = [];
    if (position.isPlayer()) {
      skaterStats.forEach((stat) {
        temp.add(TextSpan(text: '${getColumnTooltip(stat)}: ', style: Styles.decisionStatAbbText));
        temp.add(TextSpan(text: '${getStatFromMap(stat, stats)} ', style: Styles.decisionStatText));
      });
    } else if (position.isGoalie()) {
      goalieStats.forEach((stat) {
        temp.add(TextSpan(text: '${getColumnTooltip(stat)}: ', style: Styles.decisionStatAbbText));
        temp.add(TextSpan(text: '${getStatFromMap(stat, stats)} ', style: Styles.decisionStatText));
      });
    }
    return RichText(text: TextSpan(children: temp));
  }

  static const List<String> skaterStats = [
    'goals',
    'assists',
    'shots',
    'hits',
  ];

  static const List<String> goalieStats = [
    'shots',
    'saves',
    'savePercentage',
  ];
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
    if (code == Position.C || code == Position.D || code == Position.L || code == Position.R)
      return true;
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
  final int firstSeason;
  final int firstSeasonPlayoffs;
  final Position position;
  final String handness;
  final String currentTeam;
  final int weight;
  final int height;
  final PlayerAllTimeStats allTimeStats;
  Map<PageStatParams, PlayerSeasonTableSource> stats = {};
  Map<PageGameLogParams, List<GameLogsPlayer>> gameLog = {};

  PlayerPage({
    @required Player player,
    this.nationality,
    this.birthCity,
    this.birthCountry,
    this.birthDate,
    this.draftNum,
    this.draftRound,
    this.draftYear,
    this.firstSeason,
    this.firstSeasonPlayoffs,
    this.position,
    this.handness,
    this.currentTeam,
    this.allTimeStats,
    this.weight,
    this.height,
  }) : super.clone(player);

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
            firstSeason: -1,
            firstSeasonPlayoffs: -1,
            position: Position.N_A,
            currentTeam: '',
            height: 0,
            weight: 0,
            allTimeStats: PlayerPageAllTimeStats.fromJson({}));

  factory PlayerPage.fromJsonPlayer(Map<String, dynamic> json) {
    Map<String, dynamic> regular = getJsonObject(['data', 0], json);
    Map<String, dynamic> playoffs = getJsonObject(['data', 1], json);
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
        firstSeason: getJsonInt('firstSeasonForGameType', regular),
        firstSeasonPlayoffs: getJsonInt('firstSeasonForGameType', playoffs),
        position: positionFromString(getJsonString('positionCode', regular)),
        height: getJsonInt('height', regular),
        weight: getJsonInt('weight', regular),
        currentTeam: getJsonString('currentTeamName', regular),
        allTimeStats: PlayerPageAllTimeStats.fromJson(json));
  }

  factory PlayerPage.fromJsonGoalie(Map<String, dynamic> json) {
    Map<String, dynamic> regular = getJsonObject(['data', 0], json);
    Map<String, dynamic> playoffs = getJsonObject(['data', 1], json);
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
        firstSeason: getJsonInt('firstSeasonForGameType', regular),
        firstSeasonPlayoffs: getJsonInt('firstSeasonForGameType', playoffs),
        position: Position.G,
        currentTeam: getJsonString('currentTeamAbbrev', regular),
        allTimeStats: GoaliePageAllTimeStats.fromJson(json));
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

  bool containsStat(PageStatParams stat) {
    return stats.containsKey(stat);
  }

  PlayerSeasonTableSource getStat(PageStatParams stat) {
    if (stats.containsKey(stat)) {
      return stats[stat];
    }
    return null;
  }

  void addStat(PageStatParams stat, PlayerSeasonTableSource statStats) {
    if (!stats.containsKey(stat)) {
      stats[stat] = statStats;
    }
  }

  bool containsGameLogs(PageGameLogParams year) {
    if (gameLog.isEmpty) return false;
    return gameLog.keys.contains(year);
  }

  List<GameLogsPlayer> getGameLog(PageGameLogParams params) {
    if (gameLog.containsKey(params)) {
      return gameLog[params];
    }
    return [];
  }

  void addGameLog(PageGameLogParams params, List<GameLogsPlayer> logs) {
    gameLog[params] = logs;
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
    yield Table(
      children: [
        TableRow(children: [
          Center(child: Text('GP', style: Styles.infoTableHeaderText)),
          Center(child: Text('W', style: Styles.infoTableHeaderText)),
          Center(child: Text('L', style: Styles.infoTableHeaderText)),
          Center(child: Text('OTL', style: Styles.infoTableHeaderText)),
          Center(child: Text('SO', style: Styles.infoTableHeaderText))
        ]),
        TableRow(children: [
          Center(
            child: Text(regular.gamesPlayed.toString(), style: Styles.infoTableValueText),
          ),
          Center(child: Text(regular.wins.toString(), style: Styles.infoTableValueText)),
          Center(child: Text(regular.losses.toString(), style: Styles.infoTableValueText)),
          Center(child: Text(regular.otLosses.toString(), style: Styles.infoTableValueText)),
          Center(child: Text(regular.shutouts.toString(), style: Styles.infoTableValueText))
        ]),
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
    if (regular.gamesPlayed > 0) {
      yield Table(
        children: [
          TableRow(children: [
            Center(child: Text('GP', style: Styles.infoTableHeaderText)),
            Center(child: Text('G', style: Styles.infoTableHeaderText)),
            Center(child: Text('A', style: Styles.infoTableHeaderText)),
            Center(child: Text('P', style: Styles.infoTableHeaderText))
          ]),
          TableRow(children: [
            Center(
              child: Text(regular.gamesPlayed.toString(), style: Styles.infoTableValueText),
            ),
            Center(child: Text(regular.goals.toString(), style: Styles.infoTableValueText)),
            Center(child: Text(regular.assists.toString(), style: Styles.infoTableValueText)),
            Center(child: Text(regular.points.toString(), style: Styles.infoTableValueText))
          ]),
        ],
      );
    } else {
      yield Table(
        children: [
          TableRow(children: [
            Center(
              child: Text('Player hasnt played regular season games'),
            )
          ])
        ],
      );
    }
    if (playoff.gamesPlayed > 0) {
      yield Table(
        children: [
          TableRow(children: [
            Center(child: Text('GP', style: Styles.infoTableHeaderText)),
            Center(child: Text('G', style: Styles.infoTableHeaderText)),
            Center(child: Text('A', style: Styles.infoTableHeaderText)),
            Center(child: Text('P', style: Styles.infoTableHeaderText))
          ]),
          TableRow(children: [
            Center(
              child: Text(playoff.gamesPlayed.toString(), style: Styles.infoTableValueText),
            ),
            Center(child: Text(playoff.goals.toString(), style: Styles.infoTableValueText)),
            Center(child: Text(playoff.assists.toString(), style: Styles.infoTableValueText)),
            Center(child: Text(playoff.points.toString(), style: Styles.infoTableValueText))
          ]),
        ],
      );
    } else {
      yield Table(
        children: [
          TableRow(children: [
            Center(
              child: Text('Player hasnt played playoff games'),
            )
          ])
        ],
      );
    }
  }
}

class GoalieAllTimeStat {
  final int gamesPlayed;
  final int wins;
  final int losses;
  final int otLosses;
  final int shutouts;

  GoalieAllTimeStat({this.gamesPlayed, this.wins, this.losses, this.otLosses, this.shutouts});
}

class PlayerAllTimeStat {
  final int gamesPlayed;
  final int goals;
  final int assists;
  final int points;

  PlayerAllTimeStat({this.gamesPlayed, this.goals, this.assists, this.points});
}

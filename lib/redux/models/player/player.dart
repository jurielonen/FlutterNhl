import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:flutter/cupertino.dart';
import 'package:FlutterNhl/redux/models/player/player_enums.dart';

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
  final PlayerPageAllTimeStats allTimeStats;
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

  factory PlayerPage.fromJson(Map<String, dynamic> json) {
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

class PlayerPageAllTimeStats {
  final PlayerAllTimeStat regular;
  final PlayerAllTimeStat playoff;

  PlayerPageAllTimeStats({this.regular, this.playoff});

  factory PlayerPageAllTimeStats.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> regular = getJsonObject(['data', 0], json);
    Map<String, dynamic> playoffs = getJsonObject(['data', 1], json);
    return PlayerPageAllTimeStats(
      regular: PlayerAllTimeStat(
          gamesPlayed: getJsonInt('gamesPlayed', json),
          goals: getJsonInt('goals', json),
          assists: getJsonInt('assists', json),
          points: getJsonInt('points', json)),
      playoff: PlayerAllTimeStat(
          gamesPlayed: getJsonInt('gamesPlayed', json),
          goals: getJsonInt('goals', json),
          assists: getJsonInt('assists', json),
          points: getJsonInt('points', json)),
    );
  }
}

class PlayerAllTimeStat {
  final int gamesPlayed;
  final int goals;
  final int assists;
  final int points;

  PlayerAllTimeStat({this.gamesPlayed, this.goals, this.assists, this.points});
}

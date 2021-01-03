import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:flutter/cupertino.dart';
import 'package:FlutterNhl/redux/models/player/player_enums.dart';
import 'package:flutter/material.dart';

class Player {
  final int id;
  final String fullname;
  final String currentTeam;
  final PersonPosition position;
  final bool active;

  Player({
    @required this.id,
    @required this.fullname,
    @required this.currentTeam,
    @required this.position,
    @required this.active,
  });

  static final Map<int, Player> _cache = <int, Player>{};

  Player.clone(Player clone)
      : this(
          id: clone.id,
          fullname: clone.fullname,
          currentTeam: clone.currentTeam,
          position: clone.position,
          active: clone.active,
        );

  ///Turns player object to a map.
  ///Used for Database.
  Map<String, dynamic> toMap() {
    return {
      DB_KEY_PLAYER_ID: id,
      DB_KEY_PLAYER_NAME: fullname,
      DB_KEY_PLAYER_TEAM: currentTeam,
      DB_KEY_PLAYER_POSITION: positionToApiString(position.code),
      DB_KEY_PLAYER_ACTIVE: active ? 1 : 0,
    };
  }

  static List<Player> fromDatabase(List<Map<String, dynamic>> players) =>
      players.map((e) {
        Player temp = Player(
          id: getJsonInt(DB_KEY_PLAYER_ID, e),
          fullname: getJsonString(DB_KEY_PLAYER_NAME, e),
          currentTeam: getJsonString(DB_KEY_PLAYER_TEAM, e),
          position: PersonPosition.fromDatabase(e),
          active: getJsonBoolean(DB_KEY_PLAYER_ACTIVE, e),
        );
        _cache[temp.id] = temp;
        return temp;
      }).toList();

  static Player _checkIfFoundInCache(int id) {
    if (_cache.containsKey(id)) {
      return _cache[id];
    }
    return null;
  }

  factory Player.fromJsonStatsApi(Map<String, dynamic> json) {
    int tId = getJsonInt('id', json);
    Player temp = _checkIfFoundInCache(tId);
    if (temp != null) {
      return _cache[tId];
    }

    temp = Player(
      id: tId,
      fullname: getJsonString('fullName', json),
      currentTeam: Team.getTeamAbb(getJsonInt2(['currentTeam', 'id'], json)),
      position: PersonPosition.fromJson(getJsonObject([
        'primaryPosition'
      ], json)), //positionFromString(getJsonString2(['primaryPosition', 'code'], json)),
      active: getJsonBoolean('active', json),
    );
    _cache[temp.id] = temp;
    return temp;
  }

  factory Player.fromJsonSearchApi(List<String> values) {
    int tId = int.parse(values[0]);
    Player temp = _checkIfFoundInCache(tId);
    if (temp != null) {
      return _cache[tId];
    }

    temp = Player(
        id: tId,
        fullname: '${values[2]} ${values[1]}',
        currentTeam: values[11],
        position: PersonPosition(
            code: positionFromString(values[12]), name: values[12]),
        active: int.parse(values[3]) == 1);

    _cache[temp.id] = temp;
    return temp;
  }

  factory Player.fromJsonLastFive(Map<String, dynamic> json, int teamId) {
    int tId = getJsonInt('id', json);
    Player temp = _checkIfFoundInCache(tId);
    if (temp != null) {
      return _cache[tId];
    }

    temp = Player(
      id: tId,
      fullname: getJsonString('fullName', json),
      currentTeam: Team.getTeamAbb(teamId),
      position:
          PersonPosition.fromJson(getJsonObject(['primaryPosition'], json)),
      active: true,
    );
    _cache[temp.id] = temp;
    return temp;
  }

  factory Player.empty() {
    return Player(
      id: -1,
      fullname: '',
      currentTeam: '',
      active: false,
      position: PersonPosition(code: Position.N_A, name: ''),
    );
  }

  String get headShotUrl =>
      'https://cms.nhl.bamgrid.com/images/headshots/current/168x168/$id.jpg';

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Player && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode ^ fullname.hashCode;
}

class PlayerLastFive extends Player {
  final String stat;
  final dynamic value;
  final String shortName;
  final String number;

  PlayerLastFive({
    @required Player player,
    @required this.stat,
    @required this.value,
    @required this.shortName,
    @required this.number,
  }) : super.clone(player);

  factory PlayerLastFive.fromJson(
      int teamId, String stat, Map<String, dynamic> json) {
    Map<String, dynamic> player = getJsonObject(['players', 0], json);
    return PlayerLastFive(
      player: Player.fromJsonLastFive(json, teamId),
      stat: stat,
      value: getJsonDynamic('statValue', json),
      shortName: getJsonString('shortName', player),
      number: getJsonString('primaryNumber', player),
    );
  }
}

class PlayerPlay extends Player {
  final String playerType;

  PlayerPlay({@required Player player, this.playerType}) : super.clone(player);

  factory PlayerPlay.fromJson(Map<String, dynamic> json) {
    return PlayerPlay(
        player:
            Player._checkIfFoundInCache(getJsonInt2(['player', 'id'], json)),
        playerType: getJsonString('playerType', json));
  }

  @override
  String toString() {
    return 'PlayerPlay{playerType: $playerType}';
  }
}

class PlayerGame extends Player {
  String jerseyNumber;
  Map<String, dynamic> stats;

  PlayerGame({
    @required Player player,
    this.jerseyNumber,
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
      statsTemp['points'] =
          getJsonInt('goals', statsTemp) + getJsonInt('assists', statsTemp);
    }

    return PlayerGame(
      player: Player._checkIfFoundInCache(getJsonInt2(['person', 'id'], json)),
      jerseyNumber: getJsonString('jerseyNumber', json),
      stats: statsTemp,
    );
  }

  factory PlayerGame.fromJsonPreview(Map<String, dynamic> json) {
    return PlayerGame(
      player: Player.fromJsonStatsApi(getJsonObject(['person'], json)),
      jerseyNumber: getJsonString('jerseyNumber', json),
      stats: getJsonObject(['person', 'stats', 0, 'splits', 0, 'stat'], json),
    );
  }

  RichText get statText {
    List<TextSpan> temp = [];
    if (position.isPlayer()) {
      skaterStats.forEach((stat) {
        temp.add(TextSpan(
            text: '${getColumnTooltip(stat)}: ',
            style: Styles.decisionStatAbbText));
        temp.add(TextSpan(
            text: '${getStatFromMap(stat, stats)} ',
            style: Styles.decisionStatText));
      });
    } else if (position.isGoalie()) {
      goalieStats.forEach((stat) {
        temp.add(TextSpan(
            text: '${getColumnTooltip(stat)}: ',
            style: Styles.decisionStatAbbText));
        temp.add(TextSpan(
            text: '${getStatFromMap(stat, stats)} ',
            style: Styles.decisionStatText));
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

  factory PersonPosition.fromDatabase(Map<String, dynamic> json) {
    Position pos =
        positionFromString(getJsonString(DB_KEY_PLAYER_POSITION, json));
    return PersonPosition(code: pos, name: positionToFullString(pos));
  }

  factory PersonPosition.fromJson(Map<String, dynamic> json) {
    Position pos = positionFromString(getJsonString('code', json));
    return PersonPosition(
      code: pos,
      name: positionToFullString(pos),
    );
  }

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
  final String handness;
  final int weight;
  final String height;
  final List<PlayerStat> playerStats;
  PlayerDraft draft;
  Map<PageStatParams, PlayerSeasonTableSource> stats = {};
  Map<PageGameLogParams, List<GameLogsPlayer>> gameLog = {};
  String _firstSeason;

  PlayerPage({
    @required Player player,
    this.nationality,
    this.birthCity,
    this.birthCountry,
    this.birthDate,
    this.handness,
    this.weight,
    this.height,
    this.playerStats,
  }) : super.clone(player);

  PlayerPage.empty()
      : this(
          player: Player.empty(),
          nationality: '',
          birthCity: '',
          birthCountry: '',
          handness: '',
          birthDate: DateTime.now(),
          height: '',
          weight: 0,
          playerStats: [],
        );

  factory PlayerPage.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> statsJson = getJsonList(['people'], json).first;
    Player temp = Player.fromJsonStatsApi(statsJson);
    return PlayerPage(
      player: temp,
      nationality: getJsonString('nationality', statsJson),
      birthCity: getJsonString('birthCity', statsJson),
      birthCountry: getJsonString('birthCountry', statsJson),
      handness: getJsonString('shootsCatches', statsJson),
      birthDate: getJsonDateTime('birthDate', statsJson),
      height: getJsonString('height', statsJson),
      weight: getJsonInt('weight', statsJson),
      playerStats: List<PlayerStat>.of(getJsonList(['stats'], statsJson)
          .map((e) => PlayerStat.fromJson(e, temp.position.isPlayer()))),
    );
  }

  String get playerPositionString => positionToFullString(position.code);

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
    switch (position.code) {
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

  String get firstSeason {
    if (_firstSeason == null) {
      playerStats.forEach((stat) {
        if (stat is PlayerYearByYearStats && stat.regularSeason) {
          _firstSeason = stat.firstSeason;
        }
      });
    }
    return _firstSeason;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Player && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode ^ fullname.hashCode;
}

abstract class PlayerStat {
  factory PlayerStat.fromJson(Map<String, dynamic> json, bool skater) {
    String type = getJsonString2(['type', 'displayName'], json);
    switch (type) {
      case 'careerRegularSeason':
        return PlayerAllTimeStat.fromJson(
            getJsonList(['splits'], json), true, skater);
      case 'careerPlayoffs':
        return PlayerAllTimeStat.fromJson(
            getJsonList(['splits'], json), false, skater);
      case 'yearByYear':
        return PlayerYearByYearStats.fromJson(
            getJsonList(['splits'], json), true, skater);
      case 'yearByYearPlayoffs':
        return PlayerYearByYearStats.fromJson(
            getJsonList(['splits'], json), false, skater);
      default:
        return null;
    }
  }

  String get header;

  Widget get statTable;

  List<String> get statList;

  static List<String> playerStats = [
    "games",
    "goals",
    "assists",
    "points",
    "plusMinus",
    "shots",
    "hits",
    "pim",
    "blocked",
    "gameWinningGoals",
    "overTimeGoals",
    "faceOffPct",
    "shotPct",
    "powerPlayGoals",
    "powerPlayPoints",
    "powerPlayTimeOnIce",
    "shortHandedGoals",
    "shortHandedPoints",
    "shortHandedTimeOnIce",
  ];

  static List<String> goalieStats = [
    "games",
    "gamesStarted",
    "wins",
    "losses",
    "ot",
    "shutouts",
    "savePercentage",
    "saves",
    "shotsAgainst",
    "goalsAgainst",
    "goalAgainstAverage",
    "powerPlaySavePercentage",
    "shortHandedSavePercentage",
    "evenStrengthSavePercentage",
  ];

  static Widget goalieHeaderRow() {
    return Row(
      children: [
        CustomDataTableSource.createTableCorner('Season'),
        ...goalieStats.map((stat) =>
            CustomDataTableSource.createColumnBasic(getColumnAbb(stat)))
      ],
    );
  }

  static Widget skaterHeaderRow() {
    return Row(
      children: [
        CustomDataTableSource.createTableCorner('Season'),
        ...playerStats
            .map((stat) =>
                CustomDataTableSource.createColumnBasic(getColumnAbb(stat)))
            .toList()
      ],
    );
  }
}

class PlayerAllTimeStat implements PlayerStat {
  final bool skater;
  final bool regularSeason;
  final Map<String, dynamic> stat;

  PlayerAllTimeStat(
      {@required this.stat,
      @required this.regularSeason,
      @required this.skater});

  factory PlayerAllTimeStat.fromJson(
      List<dynamic> json, bool regularSeason, bool skater) {
    return PlayerAllTimeStat(
        stat: getJsonObject(['stat'], json.first),
        regularSeason: regularSeason,
        skater: skater);
  }

  @override
  Widget get statTable {
    List<Widget> cells = [
      CustomDataTableSource.createTableFirstColumn(Text(
        regularSeason ? 'NHL Career' : 'Career Playoffs',
        style: CustomDataTableSource.firstColumnStyle,
      ))
    ];
    cells.addAll(skater
        ? PlayerStat.playerStats
            .map((statName) => CustomDataTableSource.createSizedCell(
                getJsonDynamic(statName, stat).toString()))
            .toList()
        : PlayerStat.goalieStats
            .map((statName) => CustomDataTableSource.createSizedCell(
                getJsonDynamic(statName, stat).toString()))
            .toList());
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          skater ? PlayerStat.skaterHeaderRow() : PlayerStat.goalieHeaderRow(),
          Row(
            children: cells,
          ),
        ],
      ),
    );
  }

  @override
  String get header => regularSeason ? 'Career' : 'Career Playoffs';

  @override
  List<String> get statList =>
      skater ? PlayerStat.playerStats : PlayerStat.goalieStats;
}

class PlayerYearByYearStats implements PlayerStat {
  final bool regularSeason;
  final List<PlayerYearByYearStatsSeason> seasons;
  final bool skater;
  String _firstSeason;
  PlayerYearByYearStats(
      {@required this.regularSeason,
      @required this.seasons,
      @required this.skater});

  factory PlayerYearByYearStats.fromJson(
      List<dynamic> json, bool regularSeason, bool skater) {
    List<PlayerYearByYearStatsSeason> seasons = [];
    json.forEach((value) {
      int leagueId = getJsonInt2(['league', 'id'], value);
      if (leagueId == 133)
        seasons.add(PlayerYearByYearStatsSeason.fromJson(value));
    });
    return PlayerYearByYearStats(
        regularSeason: regularSeason, seasons: seasons, skater: skater);
  }

  String get firstSeason {
    if (_firstSeason == null) {
      seasons.forEach((season) {
        if (_firstSeason == null) {
          _firstSeason = season.season;
        } else {
          if (int.parse(_firstSeason) > int.parse(season.season))
            _firstSeason = season.season;
        }
      });
    }
    return _firstSeason;
  }

  @override
  Widget get statTable {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          skater ? PlayerStat.skaterHeaderRow() : PlayerStat.goalieHeaderRow(),
          ...seasons
              .map(
                (season) => Row(
                  children: getSeasonRow(season),
                ),
              )
              .toList(),
        ],
      ),
    );
  }

  List<Widget> getSeasonRow(PlayerYearByYearStatsSeason season) {
    return [
      CustomDataTableSource.createTableFirstColumn(Text(
        season.season,
        style: CustomDataTableSource.firstColumnStyle,
      )),
      ...statList
          .map(
            (stat) => CustomDataTableSource.createSizedCell(
              getJsonDynamic(stat, season.stat).toString(),
            ),
          )
          .toList()
    ];
  }

  @override
  List<String> get statList =>
      skater ? PlayerStat.playerStats : PlayerStat.goalieStats;

  @override
  String get header =>
      regularSeason ? 'Regular season stats' : 'Playoffs stats';
}

class PlayerYearByYearStatsSeason {
  final Map<String, dynamic> stat;
  final String teamAbb;
  final String season;

  PlayerYearByYearStatsSeason(
      {@required this.stat, @required this.teamAbb, @required this.season});

  factory PlayerYearByYearStatsSeason.fromJson(Map<String, dynamic> json) {
    return PlayerYearByYearStatsSeason(
      stat: getJsonObject(['stat'], json),
      teamAbb: getJsonString2(['team', 'abbreviation'], json),
      season: getJsonString('season', json),
    );
  }
}

class PlayerDraft {
  final int draftYear;
  final int draftRound;
  final int draftOverall;

  PlayerDraft(this.draftYear, this.draftRound, this.draftOverall);

  factory PlayerDraft.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> draftJson = getJsonList(['data'], json).first;
    return PlayerDraft(
        getJsonInt('draftYear', draftJson),
        getJsonInt('draftRound', draftJson),
        getJsonInt('draftOverall', draftJson));
  }
}

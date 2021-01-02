import 'dart:ui';

import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/player/player_preview_table_source.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/collection.dart';

class Team {
  final int id;
  final int franchiseId;
  final String name;
  final String abb;

  Team(
      {@required this.id,
      @required this.name,
      @required this.abb,
      @required this.franchiseId});
  Team.clone(Team team)
      : this(
            id: team.id,
            name: team.name,
            abb: team.abb,
            franchiseId: team.franchiseId);

  static Map<int, Team> get teams => _cache;

  static final Map<int, Team> _cache = <int, Team>{};

  ///TODO: can simplify this after gets teams from statsapi
  factory Team.fromJson(Map<String, dynamic> json) {
    int tId = getJsonInt('id', json);
    if (tId == -1) {
      tId = getJsonInt('teamId', json);
    }

    if (_cache.containsKey(tId)) {
      return _cache[tId];
    } else {
      if (tId == -1) {
        final temp = Team.empty();
        _cache[tId] = temp;
        return temp;
      } else {
        String tName = getJsonString('name', json);
        if (tName == '') {
          tName = getJsonString('teamFullName', json);
        }
        if (tName == '') {
          tName = getJsonString('fullName', json);
        }
        String tAbb = getJsonString('abbreviation', json);
        if (tAbb == '') {
          tAbb = getJsonString('triCode', json);
        }
        if (tAbb == '') {
          tAbb = changeNameToAbb(tName);
        }

        int tFId = getJsonInt('franchiseId', json);
        final temp = Team(id: tId, name: tName, abb: tAbb, franchiseId: tFId);
        _cache[tId] = temp;
        return temp;
      }
    }
  }

  static String getTeamLogoUrl(String abb) {
    return 'https://assets.nhle.com/logos/nhl/svg/${abb}_dark.svg';
  }

  factory Team.empty() {
    return Team(
      id: -1,
      franchiseId: -1,
      name: '',
      abb: '',
    );
  }

  @override
  String toString() {
    return '$id-$name-$abb';
  }

  String get logoUrl => 'assets/logos/logo_${abb.toLowerCase()}.png';
  String get logoSvg => 'https://assets.nhle.com/logos/nhl/svg/${abb}_dark.svg';

  static getTeamAbb(int teamId) {
    if (_cache.containsKey(teamId)) {
      return _cache[teamId].abb;
    }
    return null;
  }

  static getTeamAbbFromFranchiseId(int franchiseId) {
    Team team = _cache.values.firstWhere(
        (team) => team.franchiseId == franchiseId,
        orElse: () => null);
    if (team != null) return team.abb;
    return '';
  }

  Color get teamColor => getTeamColor(name);

  static parsePlayerStats(List<PlayerGame> players, List<PlayerGame> skaters,
      List<PlayerGame> goalies) {
    players.forEach((player) {
      if (player.stats.isNotEmpty) {
        if (player.position.isGoalie())
          goalies.add(player);
        else if (player.position.isPlayer()) skaters.add(player);
      }
    });

    skaters.sort((a, b) {
      int aG = getJsonInt('goals', a.stats);
      int aA = getJsonInt('assists', a.stats);
      int bG = getJsonInt('goals', b.stats);
      int bA = getJsonInt('assists', b.stats);
      if ((bG + bA).compareTo(aG + aA) == 0) {
        if (bG.compareTo(aG) == 0) {
          return DateFormat.Hm()
              .parse(
                  getStatFromMap('timeOnIce', b.stats, defaultString: '00:00'))
              .compareTo(DateFormat.Hm().parse(getStatFromMap(
                  'timeOnIce', a.stats,
                  defaultString: '00:00')));
        } else {
          return bG.compareTo(aG);
        }
      } else {
        return (bG + bA).compareTo(aG + aA);
      }
    });

    goalies.sort((a, b) {
      return DateFormat.Hm()
          .parse(getStatFromMap('timeOnIce', b.stats, defaultString: '00:00'))
          .compareTo(DateFormat.Hm().parse(
              getStatFromMap('timeOnIce', a.stats, defaultString: '00:00')));
    });
  }
}

class TeamSchedule extends Team {
  Map<String, dynamic> record;
  int score;

  TeamSchedule({@required Team team, this.record, this.score})
      : super.clone(team);

  factory TeamSchedule.fromJson(Map<String, dynamic> json) {
    return TeamSchedule(
        team: Team.fromJson(getJsonObject(['team'], json)),
        record: getJsonObject(['leagueRecord'], json),
        score: getJsonInt('score', json));
  }

  String get teamRecord =>
      '${getJsonInt('wins', record)}-${getJsonInt('losses', record)}-${getJsonInt('ot', record)}';
}

class TeamPreview extends Team {
  final List<Game> previousGames;
  final Map<String, dynamic> teamStats;
  final PlayerGameTableSource playerTableSource;
  final PlayerGameTableSource goalieTableSource;
  final Map<String, PlayerLastFive> leadersLastFive;

  static final Map<int, TeamPreview> _cache = <int, TeamPreview>{};
  static const List<String> lastFiveKeys = [
    'points',
    'assists',
    'goals',
    'plusMinus',
    'timeOnIce'
  ];
  static bool teamStatsDownloaded(int teamId) {
    return _cache.containsKey(teamId);
  }

  TeamPreview(
      {Team team,
      this.teamStats,
      this.playerTableSource,
      this.goalieTableSource,
      this.leadersLastFive,
      this.previousGames})
      : super.clone(team);

  factory TeamPreview.fromJson(Map<String, dynamic> json,
      {Map<String, dynamic> lastFive}) {
    int tId = getJsonInt('id', json);
    if (_cache.containsKey(tId)) {
      return _cache[tId];
    } else {
      Map<String, PlayerLastFive> leadersLastFive = {};
      if (lastFive != null) {
        lastFiveKeys.forEach((stat) {
          if (lastFive.containsKey(stat)) {
            leadersLastFive[stat] = PlayerLastFive.fromJson(
                tId, stat, getJsonObject([stat], lastFive));
          }
        });
      }
      List<PlayerGame> players = List<PlayerGame>.from(
          getJsonList(['roster', 'roster'], json)
              .map((e) => PlayerGame.fromJsonPreview(e)));
      List<PlayerGame> skaters = [], goalies = [];
      Team.parsePlayerStats(players, skaters, goalies);

      List<Game> games = List<Game>.from(
          getJsonList(['previousSchedule', 'dates'], json)
              .map((date) => Game.fromJson(getJsonObject(['games', 0], date))));
      games.sort((a, b) {
        return -a.dateTime.compareTo(b.dateTime);
      });

      return TeamPreview(
        team: Team.fromJson(json),
        teamStats: getJsonObject(['teamStats', 0, 'splits', 0, 'stat'], json),
        playerTableSource:
            PlayerGameTableSource(type: StatType.PLAYER, players: skaters),
        goalieTableSource:
            PlayerGameTableSource(type: StatType.GOALIE, players: goalies),
        leadersLastFive: leadersLastFive,
        previousGames: games,
      );
    }
  }
}

class TeamFinal extends Team {
  Map<String, dynamic> teamStats;
  PlayerGameTableSource playerTableSource;
  PlayerGameTableSource goalieTableSource;

  TeamFinal(
      {Team team,
      this.teamStats,
      this.playerTableSource,
      this.goalieTableSource})
      : super.clone(team);

  factory TeamFinal.fromJson(Map<String, dynamic> json) {
    List<PlayerGame> tPlayers = [];
    getJsonObject(['players'], json)
        .forEach((key, value) => tPlayers.add(PlayerGame.fromJsonFinal(value)));

    List<PlayerGame> skaters = [], goalies = [];
    Team.parsePlayerStats(tPlayers, skaters, goalies);

    return TeamFinal(
      team: Team.fromJson(getJsonObject(['team'], json)),
      teamStats: getJsonObject(['teamStats', 'teamSkaterStats'], json),
      playerTableSource: PlayerGameTableSource(
          type: StatType.PLAYER, players: skaters, preview: false),
      goalieTableSource: PlayerGameTableSource(
          type: StatType.GOALIE, players: goalies, preview: false),
    );
  }

  PlayerGame getPlayer(int id) {
    PlayerGame temp = playerTableSource.players
        .firstWhere((playerGame) => playerGame.id == id, orElse: () => null);
    if (temp == null)
      temp = goalieTableSource.players
          .firstWhere((playerGame) => playerGame.id == id, orElse: () => null);
    return temp;
  }
}

class TeamPage extends Team {
  final String venue;
  final String firstYear;
  final String division;
  final String conference;
  final List<Game> previousGame;
  final List<Game> nextGame;
  final Map<String, dynamic> currentStats;

  PlayerGameTableSource playerTableSource;
  PlayerGameTableSource goalieTableSource;
  Map<PageGameLogParams, List<Game>> gameLog = {};
  Map<PageStatParams, PlayerSeasonTableSource> stats = {};

  TeamPage(
      {@required Team team,
      this.venue,
      this.firstYear,
      this.division,
      this.conference,
      this.currentStats,
      this.previousGame,
      this.nextGame})
      : super.clone(team);

  TeamPage.empty()
      : this(
            team: Team.empty(),
            venue: '',
            firstYear: '',
            division: '',
            conference: '',
            currentStats: {});

  factory TeamPage.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> team = getJsonObject(['teams', 0], json);
    String firstYear = getJsonString('firstYearOfPlay', team);
    if (firstYear != '') {
      firstYear = '$firstYear${int.parse(firstYear) + 1}';
    } else {
      firstYear = '20172018';
    }
    return TeamPage(
      team: Team.fromJson(team),
      venue: getJsonString2(['venue', 'name'], team),
      firstYear: firstYear,
      division: getJsonString2(['division', 'name'], team),
      conference: getJsonString2(['conference', 'name'], team),
      previousGame: List<Game>.from(
          getJsonList(['previousSchedule', 'dates'], team)
              .map((date) => Game.fromJson(getJsonObject(['games', 0], date)))),
      nextGame: List<Game>.from(getJsonList(['nextSchedule', 'dates'], team)
          .map((date) => Game.fromJson(getJsonObject(['games', 0], date)))),
      currentStats: getJsonObject(['teamStats', 0, 'splits', 0, 'stat'], team),
    );
  }

  Map<String, String> get teamInfoMap {
    return {
      'Division': division,
      'Conference': conference,
      'Venue': venue,
      'First year': firstYear
    };
  }

  void setRosterStats(List<PlayerGame> skaters) {
    List<PlayerGame> player = [];
    List<PlayerGame> goalie = [];
    Team.parsePlayerStats(skaters, player, goalie);
    playerTableSource =
        PlayerGameTableSource(type: StatType.PLAYER, players: player);
    goalieTableSource =
        PlayerGameTableSource(type: StatType.GOALIE, players: goalie);
  }

  bool containsRosterStats() {
    return playerTableSource != null && goalieTableSource != null;
  }

  bool containsGameLog(PageGameLogParams date) {
    return gameLog.containsKey(date);
  }

  bool containsStat(PageStatParams stat) {
    return stats.containsKey(stat);
  }

  List<Game> getGames(PageGameLogParams params) {
    if (gameLog.containsKey(params)) return gameLog[params];
    return [];
  }

  PlayerSeasonTableSource getStat(PageStatParams stat) {
    if (stats.containsKey(stat)) return stats[stat];
    return null;
  }

  void addGameLog(PageGameLogParams params, List<Game> games) {
    gameLog[params] = games;
  }

  void addStat(PageStatParams stat, PlayerSeasonTableSource table) {
    stats[stat] = table;
  }
}

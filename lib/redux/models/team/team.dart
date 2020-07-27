import 'dart:ui';

import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:flutter/foundation.dart';

class Team {
  final int id;
  final String name;
  final String abb;


  Team({@required this.id, @required this.name, @required this.abb});
  Team.clone(Team team) : this(id: team.id, name: team.name, abb: team.abb);

  static final Map<int, Team> _cache = <int, Team>{};

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
        final temp = Team(id: tId, name: tName, abb: tAbb);
        _cache[tId] = temp;
        return temp;
      }
    }
  }

  factory Team.empty() {
    return Team(
      id: -1,
      name: '',
      abb: '',
    );
  }

  @override
  String toString() {
    return '$id-$name-$abb';
  }

  String get logoUrl => 'assets/logos/logo_${abb.toLowerCase()}.png';
  Color get teamColor => getTeamColor(name);
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
  Map<String, dynamic> teamStats;
  List<PlayerGame> playerStats;

  static final Map<int, TeamPreview> _cache = <int, TeamPreview>{};

  static bool teamStatsDownloaded(int teamId) {
    return _cache.containsKey(teamId);
  }

  TeamPreview({Team team, this.teamStats, this.playerStats})
      : super(id: team.id, name: team.name, abb: team.abb);

  factory TeamPreview.fromJson(Map<String, dynamic> json) {
    int tId = getJsonInt('id', json);
    if (_cache.containsKey(tId)) {
      return _cache[tId];
    } else {
      return TeamPreview(
          team: Team.fromJson(json),
          teamStats: getJsonObject(['teamStats', 0, 'splits', 0, 'stat'], json),
          playerStats: List<PlayerGame>.from(
              getJsonList(['roster', 'roster'], json)
                  .map((e) => PlayerGame.fromJsonPreview(e))));
    }
  }
}

class TeamFinal extends Team {
  Map<String, dynamic> teamStats;
  List<PlayerGame> playerStats;

  TeamFinal({Team team, this.teamStats, this.playerStats})
      : super(id: team.id, name: team.name, abb: team.abb);

  factory TeamFinal.fromJson(Map<String, dynamic> json) {
    List<PlayerGame> tPlayers = [];
    getJsonObject(['players'], json)
        .forEach((key, value) => tPlayers.add(PlayerGame.fromJsonFinal(value)));
    return TeamFinal(
        team: Team.fromJson(getJsonObject(['team'], json)),
        teamStats: getJsonObject(['teamStats', 'teamSkaterStats'], json),
        playerStats: tPlayers);
  }
}

class TeamPage extends Team {
  final String venue;
  final String firstYear;
  final String division;
  final String conference;
  final Game previousGame;
  final Game nextGame;
  final Map<String, dynamic> currentStats;

  List<PlayerGame> rosterStats = [];
  Map<String, List<Game>> gameLog = {};
  Map<String, PlayerTableSource> stats = {};

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
    return TeamPage(
      team: Team.fromJson(team),
      venue: getJsonString2(['venue', 'name'], team),
      firstYear: getJsonString('firstYearOfPlay', team),
      division: getJsonString2([''], team),
      conference: getJsonString2([''], team),
      previousGame: Game.fromJson(
          getJsonObject(['previousGameSchedule', 'dates', 0, 'games', 0], team)),
      nextGame:
          Game.fromJson(getJsonObject(['nextGameSchedule', 'dates', 0, 'games', 0], team)),
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

  bool containsRosterStats() {
    return rosterStats.isNotEmpty;
  }

  bool containsGameLog(String date) {
    return gameLog.containsKey(date);
  }

  bool containsStat(String stat) {
    return stats.containsKey(stat);
  }

  List<Game> getGames(String date) {
    if (gameLog.containsKey(date)) return gameLog[date];
    return [];
  }

  PlayerTableSource getStat(String stat) {
    if (stats.containsKey(stat)) return stats[stat];
    return PlayerTableSource.initial();
  }

  void addGameLog(String date, List<Game> games) {
    gameLog[date] = games;
  }

  void addStat(String stat, PlayerTableSource table) {
    stats[stat] = table;
  }
}

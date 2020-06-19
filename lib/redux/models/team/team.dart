import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:flutter/foundation.dart';

class Team {
  final int id;
  final String name;
  final String abb;

  Team({@required this.id, @required this.name, @required this.abb});
  Team.clone(Team team) : this(id: team.id, name: team.name, abb: team.name);


  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
        id: getJsonInt('id', json),
        name: getJsonString('name', json),
        abb: getJsonString('abbreviation', json));
  }

  factory Team.empty() {
    return Team(
      id: -1,
      name: '',
      abb: '',
    );
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
    getJsonObject(['players'], json).forEach((key, value) => tPlayers.add(PlayerGame.fromJsonFinal(value)));
    return TeamFinal(
        team: Team.fromJson(getJsonObject(['team'], json)),
        teamStats: getJsonObject(['teamStats', 'teamSkaterStats'], json),
        playerStats: tPlayers
    );
  }
}

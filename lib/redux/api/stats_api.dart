import 'package:FlutterNhl/redux/api/fetch.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/redux/models/draft/draft.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:http/http.dart';
import 'dart:async';

class StatsApi {
  final Client client;
  StatsApi(this.client);

  static final String baseUrl = 'statsapi.web.nhl.com';
  static final String printMsg = 'StatsApi';

  Future<Null> fetchSeason() async {
    final searchUri = Uri.https(baseUrl, 'api/v1/seasons/current');
    print('$printMsg fetchSeason: $searchUri');
    await fetch(searchUri, client).then((value) {
      return Config().fromJsonSeason(value);
    }).catchError((error) => throw Exception(error.toString()));
  }

  Future<Schedule> fetchSchedule(String date) async {
    final searchUri = Uri.https(baseUrl, '/api/v1/schedule', {
      'date': date,
      'hydrate':
          'team,linescore,game(content(media(epg))),decisions,scoringplays,boxscore'
    });
    print('$printMsg fetchSchedule: $searchUri');
    return Schedule.fromJson(await fetch(searchUri, client), date);
  }

  Future<GameFinal> fetchGameFinal(Game game) async {
    final searchUri = Uri.https(baseUrl, '/api/v1/game/${game.id}/feed/live');
    print('$printMsg fetchGameFinal: $searchUri');
    return GameFinal.fromJson(game, await fetch(searchUri, client));
  }

  Future<GamePreview> fetchGamePreview(Game game) async {
    final searchUri = Uri.https(baseUrl, '/api/v1/teams', {
      'teamId': '${game.homeTeam.id},${game.awayTeam.id}',
      'expand': 'team.roster,team.stats,roster.person,person.stats,team.schedule.previous,team.schedule.next',
      'stats': 'statsSingleSeason'
    });
    print('$printMsg fetchGamePreview: $searchUri');
    return GamePreview.fromJson(game, await fetch(searchUri, client));
  }

  Future<Content> fetchGameContent(int gameId) async {
    final searchUri = Uri.https(baseUrl, '/api/v1/game/$gameId/content');
    print('$printMsg fetchGameContent: $searchUri');
    return Content.fromJson(await fetch(searchUri, client));
  }

  Future<List<GameLogsPlayer>> fetchPlayerGameLogs(
      int playerId, String year) async {
    final searchUri = Uri.https(baseUrl, '/api/v1/people/$playerId/stats',
        {'stats': 'gameLog', 'expand': 'stats.team', 'season': year});
    print('$printMsg fetchPlayerGameLogs: $searchUri');
    return await fetch(searchUri, client).then((value) {
      if (value is Map<String, dynamic>) {
        List<dynamic> list = getJsonList(['stats', 0, 'splits'], value);
        return List<GameLogsPlayer>.from(list.map((log) {
          return GameLogsPlayer.fromJson(log);
        }));
      }
      throw Exception('Error while trying to parse logs');
    }).catchError((error) => throw Exception(error.toString()));
  }

  Future<TeamPage> fetchTeamInfo(int teamId) async {
    final searchUri = Uri.https(baseUrl, 'api/v1/teams/$teamId',
        {'expand': 'team.stats,team.schedule.previous,team.schedule.next'});
    print('$printMsg fetchTeamInfo: $searchUri');

    return await fetch(searchUri, client).then((value) {
      return TeamPage.fromJson(value);
    }).catchError((error) => throw Exception(error.toString()));
  }

  Future<List<PlayerGame>> fetchTeamRoster(int teamId) async {
    final searchUri = Uri.https(baseUrl, 'api/v1/teams/$teamId', {
      'expand': 'team.roster,roster.person,person.stats',
      'stats': 'statsSingleSeason'
    });
    print('$printMsg fetchTeamRoster: $searchUri');

    return await fetch(searchUri, client).then((value) {
      return List<PlayerGame>.from(
          getJsonList(['teams', 0, 'roster', 'roster'], value)
              .map((player) => PlayerGame.fromJsonFinal(player)));
    }).catchError((error) => throw Exception(error.toString()));
  }

  Future<List<Game>> fetchTeamGameLog(int teamId, String season) async {
    final searchUri = Uri.https(baseUrl, 'api/v1/schedule', {
      'teamId': teamId.toString(),
      'season': season,
    });
    print('$printMsg fetchTeamGameLog: $searchUri');

    return await fetch(searchUri, client).then((value) {
      List<Game> games = [];
      getJsonList(['dates'], value).forEach((date) {
        if (date is Map<String, dynamic>) {
          if (getJsonInt('totalGames', date) == 1) {
            games.add(Game.fromJson(getJsonObject(['games', 0], date)));
          } else {
            throw Exception('Too many or no games in: $date');
          }
        }
      });
      return games;
    }).catchError((error) => throw Exception(error.toString()));
  }

  Future<Draft> fetchDraft(int year) async {
    final searchUri =
        Uri.https(baseUrl, 'api/v1/draft/$year', {'hydrate': 'prospects'});
    print('$printMsg fetchDraft: $searchUri');
    return await fetch(searchUri, client)
        .then((value) => Draft.fromJson(value))
        .catchError((error) =>
            throw Exception('Error, fetchDraft: ${error.toString()}'));
  }
}

//https://statsapi.web.nhl.com/api/v1/seasons/current
//https://statsapi.web.nhl.com/api/v1/teams/5/stats?stats=gameLog&expand=stats.team&season=20192020
//https://statsapi.web.nhl.com/api/v1/teams/5?expand=team.roster,roster.person,person.stats&stats=statsSingleSeason
//https://statsapi.web.nhl.com/api/v1/teams/5?expand=team.stats

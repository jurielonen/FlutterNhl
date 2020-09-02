import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/fetch.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/redux/models/draft/draft.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/playoffs/playoffs.dart';
import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:FlutterNhl/redux/models/standings/standings.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:http/http.dart';
import 'dart:async';

class StatsApi {
  final Client client;
  StatsApi(this.client);

  static final String baseUrl = 'statsapi.web.nhl.com';
  static const String baseUrl2 = 'www-league.nhlstatic.com';
  static final String printMsg = 'StatsApi';

  Future<Null> fetchTeams() async {
    final searchUri = Uri.https(baseUrl, '/api/v1/teams');
    print('$printMsg fetchTeams: $searchUri');
    await fetch(searchUri, client).then((value) {
      try {
        getJsonList(['teams'], value).forEach((team) {
          Team.fromJson(team);
        });
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchTeams.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    }); //.catchError((error) => throw Exception(error.toString()));
  }

  Future<Null> fetchSeason({String season}) async {
    Uri searchUri;
    String path = 'api/v1/seasons';
    if (season == null) {
      path += '/current';
      searchUri = Uri.https(baseUrl, path);
    } else {
      searchUri = Uri.https(baseUrl, path, {
        'season': season,
      });
    }

    print('$printMsg fetchSeason: $searchUri');
    await fetch(searchUri, client).then((value) {
      try {
        if (season == null)
          return Config().fromJsonSeasonCurrent(value);
        else {
          for (dynamic obj in getJsonList(['seasons'], value)) {
            if (obj is Map<String, dynamic>) Config().fromJsonSeason(obj);
          }
        }
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchSeason.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    }); //.catchError((error) => throw Exception(error.toString()));
  }

  Future<Schedule> fetchSchedule(String date) async {
    if (!Config().isSeasonDownloaded(date)) {
      DateTime dateTime = Styles.apiDateFormat.parse(date);
      int year = dateTime.year;
      await fetchSeason(season: Season.getSeasonString(year));
      Config().setSelectedSeason(dateTime);
      date = Config().validDate(dateTime);
    }

    final searchUri = Uri.https(baseUrl, '/api/v1/schedule', {
      'date': date,
      'hydrate':
          'team,linescore,game(content(media(epg)),seriesSummary),decisions,scoringplays,boxscore'
    });
    print('$printMsg fetchSchedule: $searchUri');
    return await fetch(searchUri, client).then((value) {
      try {
        return Schedule.fromJson(value, date);
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchSchedule.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    });
  }

  Future<GameFinal> fetchGameFinal(Game game) async {
    final searchUri = Uri.https(baseUrl, '/api/v1/game/${game.id}/feed/live');
    print('$printMsg fetchGameFinal: $searchUri');
    return await fetch(searchUri, client).then((value) {
      try {
        return GameFinal.fromJson(game, value);
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchGameFinal.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    });
  }

  Future<GamePreview> fetchGamePreview(Game game) async {
    final searchUri2 = Uri.https(
        baseUrl2, '/perseus/lastFive/v1/all/${game.homeTeam.id}.json');
    Map<String, dynamic> homeLastFive = {};
    await fetch(searchUri2, client).then((value) => homeLastFive = value);

    final searchUri3 = Uri.https(
        baseUrl2, '/perseus/lastFive/v1/all/${game.awayTeam.id}.json');
    Map<String, dynamic> awayLastFive = {};
    await fetch(searchUri3, client).then((value) => awayLastFive = value);

    final searchUri = Uri.https(baseUrl, '/api/v1/teams', {
      'teamId': '${game.homeTeam.id},${game.awayTeam.id}',
      'hydrate':
          'previousSchedule(limit=5,linescore,team),roster(person(stats(splits=statsSingleSeason))),stats',
      'gameType': 'P,R'
    });
    print('$printMsg fetchGamePreview: $searchUri, $searchUri2, $searchUri3');
    return await fetch(searchUri, client).then((value) {
      try {
        return GamePreview.fromJson(game, value,
            homeLastFive: getJsonObject(['stats'], homeLastFive),
            awayLastFive: getJsonObject(['stats'], awayLastFive));
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchGamePreview.\nUrl: $searchUri, $searchUri2, $searchUri3\nError: ${error.toString()}');
      }
    });
  }

  Future<Content> fetchGameContent(int gameId) async {
    final searchUri = Uri.https(baseUrl, '/api/v1/game/$gameId/content');
    print('$printMsg fetchGameContent: $searchUri');
    return await fetch(searchUri, client).then((value) {
      try {
        return Content.fromJson(value);
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchGameContent.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    });
  }

  Future<List<GameLogsPlayer>> fetchPlayerGameLogs(
      int playerId, String year, bool regular) async {
    final searchUri = Uri.https(baseUrl, '/api/v1/people/$playerId/stats', {
      'stats': regular ? 'gameLog' : 'playoffGameLog',
      'expand': 'stats.team',
      'season': year
    });
    print('$printMsg fetchPlayerGameLogs: $searchUri');
    return await fetch(searchUri, client).then((value) {
      try {
        List<dynamic> list = getJsonList(['stats', 0, 'splits'], value);
        return List<GameLogsPlayer>.from(list.map((log) {
          return GameLogsPlayer.fromJson(log);
        }));
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchPlayerGameLogs.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    }); //.catchError((error) => throw Exception(error.toString()));
  }

  Future<TeamPage> fetchTeamInfo(int teamId) async {
    final searchUri = Uri.https(baseUrl, 'api/v1/teams/$teamId', {
      'hydrate':
          'previousSchedule(limit=5,linescore,team),nextSchedule(limit=5,linescore,team),roster(person(stats(splits=statsSingleSeason))),stats',
      'gameType': 'P,R'
    });
    print('$printMsg fetchTeamInfo: $searchUri');

    return await fetch(searchUri, client).then((value) {
      try {
        return TeamPage.fromJson(value);
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchTeamInfo.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    }); //.catchError((error) => throw Exception(error.toString()));
  }

  Future<List<PlayerGame>> fetchTeamRoster(int teamId) async {
    final searchUri = Uri.https(baseUrl, 'api/v1/teams/$teamId', {
      'expand': 'team.roster,roster.person,person.stats',
      'stats': 'statsSingleSeason'
    });
    print('$printMsg fetchTeamRoster: $searchUri');

    return await fetch(searchUri, client).then((value) {
      try {
        return List<PlayerGame>.from(
            getJsonList(['teams', 0, 'roster', 'roster'], value)
                .map((player) => PlayerGame.fromJsonPreview(player)));
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchTeamRoster.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    }); //.catchError((error) => throw Exception(error.toString()));
  }

  Future<List<Game>> fetchTeamGameLog(
      int teamId, String season, bool regular) async {
    final searchUri = Uri.https(baseUrl, 'api/v1/schedule', {
      'teamId': teamId.toString(),
      'season': season,
    });
    print('$printMsg fetchTeamGameLog: $searchUri');

    return await fetch(searchUri, client).then((value) {
      try {
        List<Game> games = [];
        getJsonList(['dates'], value).forEach((date) {
          if (date is Map<String, dynamic>) {
            for (dynamic game in getJsonList(['games'], date)) {
              if (game is Map<String, dynamic>) {
                games.add(Game.fromJson(game));
              }
            }
          }
        });
        return games.reversed.toList();
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchTeamGameLog.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    }); //.catchError((error) => throw Exception(error.toString()));
  }

  Future<Draft> fetchDraft(int year) async {
    final searchUri =
        Uri.https(baseUrl, 'api/v1/draft/$year', {'hydrate': 'prospects'});
    print('$printMsg fetchDraft: $searchUri');
    return await fetch(searchUri, client).then((value) {
      try {
        return Draft.fromJson(value);
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchDraft.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    });
  }

  Future<Standing> fetchStandings({String season}) async {
    Map<String, String> query = {
      'hydrate': 'record(overall),division,conference,team'
    };
    if (season != null) query['season'] = season;
    final searchUri = Uri.https(baseUrl, 'api/v1/standings', query);
    print('$printMsg fetchStandings: $searchUri');
    return await fetch(searchUri, client).then((value) {
      try {
        return Standing.fromJson(value);
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchStandings.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    });
  }

  Future<Playoff> fetchPlayoff(String season) async {
    final searchUri = Uri.https(baseUrl, 'api/v1/tournaments/playoffs', {
      'expand': 'round.series,schedule.game.seriesSummary',
      'season': season
    });
    print('$printMsg fetchPlayoff: $searchUri');
    return await fetch(searchUri, client).then((value) {
      try {
        return Playoff.fromJson(value);
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchPlayoff.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    });
  }
}

//https://statsapi.web.nhl.com/api/v1/seasons/current
//https://statsapi.web.nhl.com/api/v1/teams/5/stats?stats=gameLog&expand=stats.team&season=20192020
//https://statsapi.web.nhl.com/api/v1/teams/5?expand=team.roster,roster.person,person.stats&stats=statsSingleSeason
//https://statsapi.web.nhl.com/api/v1/teams/5?expand=team.stats

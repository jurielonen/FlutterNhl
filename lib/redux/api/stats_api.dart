import 'package:FlutterNhl/redux/api/fetch.dart';
import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:http/http.dart';
import 'dart:async';

class StatsApi {
  final Client client;
  StatsApi(this.client);

  static final String baseUrl = 'statsapi.web.nhl.com';
  static final String printMsg = 'StatsApi';

 Future<Schedule> fetchSchedule(String date) async {
   final searchUri = Uri.https(baseUrl, '/api/v1/schedule', {
      'date': date,
      'hydrate': 'team,linescore,game(content(media(epg))),decisions,scoringplays,boxscore'
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
      'expand': 'team.roster,team.stats,roster.person,person.stats',
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
}
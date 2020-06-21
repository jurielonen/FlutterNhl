
import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';

import '../../test_data/stats_api_resp/stats_api_response.ignore.dart';
import '../models/game_unit_test.dart';
import '../models/test_functions.ignore.dart';

void main(){
  group('StatsApi unit test', (){

    List<Request> requestLog = [];

    MockClient _client(String value){
      return MockClient((request){
        requestLog.add(request);
        return Future(() {
          return Response(value, 200);
        });
      });
    }

    setUp((){
      requestLog.clear();
    });

    test('Schedule', () async {
      StatsApi api = StatsApi(_client(scheduleResp));
      Schedule schedule = await api.fetchSchedule('2019-12-12');
      expect(schedule is ScheduleGames, true);
      expect(DateTime.parse('2019-12-12').toLocal(), schedule.date);
      expect(12, schedule.gameCount);
      if(schedule is ScheduleGames){
        expect(schedule.games.length, 1);
      } else {
        throw Exception('Test failed, wrong type schedule');
      }
      expect(requestLog.first.url.toString(), 'https://statsapi.web.nhl.com/api/v1/schedule?date=2019-12-12&hydrate=team%2Clinescore%2Cgame%28content%28media%28epg%29%29%29%2Cdecisions%2Cscoringplays%2Cboxscore');
    });

    test('ScheduleEmpty', () async {
      StatsApi api = StatsApi(_client(scheduleEmptyResp));
      Schedule schedule = await api.fetchSchedule('2020-11-11');
      expect(schedule is Schedule, true);
      expect(DateTime.parse('2020-11-11').toLocal(), schedule.date);
      expect(0, schedule.gameCount);
      expect(schedule is Schedule, true);
      expect(requestLog.first.url.toString(), 'https://statsapi.web.nhl.com/api/v1/schedule?date=2020-11-11&hydrate=team%2Clinescore%2Cgame%28content%28media%28epg%29%29%29%2Cdecisions%2Cscoringplays%2Cboxscore');
    });

    test('GameFinal', () async {
      StatsApi api = StatsApi(_client(gameFinalResp));
      GameFinal gameFinal = await api.fetchGameFinal(gameSchedule);
      checkGame(gameFinal, gameSchedule);
      expect(requestLog.first.url.toString(), 'https://statsapi.web.nhl.com/api/v1/game/2019021079/feed/live');
    });

    test('GamePreview', () async {
      StatsApi api = StatsApi(_client(gamePreviewResp));
      GamePreview gameFinal = await api.fetchGamePreview(gameSchedule);
      checkGame(gameFinal, gameSchedule);
      expect(requestLog.first.url.toString(), 'https://statsapi.web.nhl.com/api/v1/teams?teamId=16%2C28&expand=team.roster%2Cteam.stats%2Croster.person%2Cperson.stats&stats=statsSingleSeason');
    });

    test('Content', () async {
      StatsApi api = StatsApi(_client(contentResp));
      Content content = await api.fetchGameContent(2019021079);
      expect(content.videos.length, gameSchedule.content.videos.length);
      content.videos.asMap().forEach((key, value) {
        checkVideo(value, gameSchedule.content.videos[key]);
      });
      expect(requestLog.first.url.toString(), 'https://statsapi.web.nhl.com/api/v1/game/2019021079/content');
    });
  });
}
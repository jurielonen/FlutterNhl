
import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';

import '../../test_data/stats_api_response.ignore.dart';

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
      expect(ScheduleTypeEnum.GAMES, schedule.type);
      expect(DateTime.parse('2019-12-12').toLocal(), schedule.date);
      expect(12, schedule.gameCount);
      if(schedule is ScheduleGames){
        expect(schedule.games.length, 1);
      } else {
        throw Exception('Test failed, wrong type schedule');
      }
      expect(requestLog.first.url.toString(), 'https://statsapi.web.nhl.com/api/v1/schedule?date=2019-12-12&hydrate=team%2Clinescore%2Cgame%28content%28media%28epg%29%29%29%2Cdecisions%2Cscoringplays%2Cboxscore');
    });

    test('Empty', () async {
      StatsApi api = StatsApi(_client(scheduleEmptyResp));
      Schedule schedule = await api.fetchSchedule('2020-11-11');
      expect(ScheduleTypeEnum.EMPTY, schedule.type);
      expect(DateTime.parse('2020-11-11').toLocal(), schedule.date);
      expect(0, schedule.gameCount);
      expect(schedule is Schedule, true);
      expect(requestLog.first.url.toString(), 'https://statsapi.web.nhl.com/api/v1/schedule?date=2020-11-11&hydrate=team%2Clinescore%2Cgame%28content%28media%28epg%29%29%29%2Cdecisions%2Cscoringplays%2Cboxscore');

    });
  });
}
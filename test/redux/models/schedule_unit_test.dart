import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/game/game_enums.dart';
import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_data/stats_api_resp/schedule.ignore.dart';
import 'game_unit_test.dart';
import 'test_functions.ignore.dart';

void main(){
  group('Schedule', () {

    test('Schedule', (){
      checkSchedule(Schedule.fromJson(null, '2020-01-01'), scheduleEmpty);
      checkSchedule(Schedule.fromJson({}, '2020-01-01'), scheduleEmpty);
      checkSchedule(Schedule.fromJson(scheduleEmptyJson, '2020-06-20'), schedule);

      dynamic tSchedule = Schedule.fromJson(schedulePreviewJson, '2018-01-10');
      expect(tSchedule is Schedule, true);
      checkSchedule(tSchedule, schedulePreview);

      tSchedule = Schedule.fromJson(scheduleFinalJson, '2020-03-11');
      expect(tSchedule is ScheduleGames, true);
      checkSchedule(tSchedule, scheduleFinal);
    });

  });
}

final Schedule scheduleEmpty = Schedule(
  gameCount: -1,
  date: DateTime(2020,1,1)
);

final Schedule scheduleEmpty2 = Schedule(
    gameCount: -1,
    date: DateTime(2020,6,20)
);

final Schedule schedule = Schedule(
  gameCount: 0,
  date: DateTime(2020, 6, 20)
);

final ScheduleGames schedulePreview = ScheduleGames(
  gameCount: 1,
  date: DateTime(2018,1,10),
  games: [
      Game(
        id: 2017020659,
        type: GameType.REGULAR,
        dateTime: DateTime(2018,1,10,1),
        state: GameState.SCHEDULED,
        content: Content(videos: []),
        homeTeam: TeamSchedule(
          team: Team(id: 30, name: 'Minnesota Wild', abb: ''),
          score: 0,
          record: {
            "wins" : 22,
            "losses" : 17,
            "ot" : 3,
            "type" : "league"
          }
        ),
        awayTeam: TeamSchedule(
            team: Team(id: 20, name: 'Calgary Flames', abb: ''),
            score: 0,
            record: {
              "wins" : 21,
              "losses" : 16,
              "ot" : 4,
              "type" : "league"
            }
        ),
        lineScore: LineScore(
            period: -1, periodString: '', timeRemaining: '', periods: [])
      )
  ]
);

final ScheduleGames scheduleFinal = ScheduleGames(
  gameCount: 5,
  date: DateTime(2020,03,11),
  games: [
    gameSchedule
  ]
);
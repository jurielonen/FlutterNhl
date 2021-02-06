import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:FlutterNhl/redux/models/game/play/play_enum.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_functions.ignore.dart';

void main() {
  group('play', () {

    test('play/playWithPlayers/About unit tests', () {
      checkPlay(Play.fromJson(null), empty);
      checkPlay(Play.fromJson({}), empty);
      checkPlay(Play.fromJson(periodPlayJson), periodPlay);
      checkPlay(Play.fromJson(periodPlayJson), periodPlay);
      checkPlayWithPlayers(Play.fromJson(shotPlayJson), shotPlay);
    });
  });
}
final Play empty = Play(
    type: PlayEnum.UNKNOWN,
    event: '',
    about: About(
        eventId: -1,
        period: -1,
        periodType: '',
        ordinalNum: '',
        periodTime: '',
        periodTimeRemaining: '',
        goals: Goals(away: -1, home: -1)));
final Play periodPlay = Play(
    type: PlayEnum.PERIOD_READY,
    event: 'Period Ready',
    about: About(
        eventId: 1,
        period: 1,
        periodType: 'REGULAR',
        ordinalNum: '1st',
        periodTime: '00:00',
        periodTimeRemaining: '20:00',
        goals: Goals(away: 0, home: 0)));

const Map<String, dynamic> periodPlayJson = {
  "result": {
    "event": "Period Ready",
    "eventCode": "CHI5",
    "eventTypeId": "PERIOD_READY",
    "description": "Period Ready"
  },
  "about": {
    "eventIdx": 1,
    "eventId": 5,
    "period": 1,
    "periodType": "REGULAR",
    "ordinalNum": "1st",
    "periodTime": "00:00",
    "periodTimeRemaining": "20:00",
    "dateTime": "2020-03-12T00:10:00Z",
    "goals": {"away": 0, "home": 0}
  },
  "coordinates": {}
};

final PlayWithPlayers shotPlay = PlayWithPlayers(
    players: [
      PlayerPlay(player: Player(fullname: 'Evander Kane', id: 8475169), playerType: 'Shooter'),
      PlayerPlay(player: Player(fullname: 'Corey Crawford', id: 8470645), playerType: 'Goalie')
    ],
    team: Team(name: 'San Jose Sharks', id: 28, abb: ''),
    play: Play(
        type: PlayEnum.SHOT,
        event: 'Shot',
        about: About(
            eventId: 8,
            period: 1,
            periodType: 'REGULAR',
            ordinalNum: '1st',
            periodTime: '01:04',
            periodTimeRemaining: '18:56',
            goals: Goals(away: 25, home: 1))));

const Map<String, dynamic> shotPlayJson = {
  "players": [
    {
      "player": {
        "id": 8475169,
        "fullName": "Evander Kane",
        "link": "/api/v1/people/8475169"
      },
      "playerType": "Shooter"
    },
    {
      "player": {
        "id": 8470645,
        "fullName": "Corey Crawford",
        "link": "/api/v1/people/8470645"
      },
      "playerType": "Goalie"
    }
  ],
  "result": {
    "event": "Shot",
    "eventCode": "CHI11",
    "eventTypeId": "SHOT",
    "description": "Evander Kane Wrist Shot saved by Corey Crawford",
    "secondaryType": "Wrist Shot"
  },
  "about": {
    "eventIdx": 8,
    "eventId": 11,
    "period": 1,
    "periodType": "REGULAR",
    "ordinalNum": "1st",
    "periodTime": "01:04",
    "periodTimeRemaining": "18:56",
    "dateTime": "2020-03-12T00:12:14Z",
    "goals": {"away": 25, "home": 1}
  },
  "coordinates": {"x": 81, "y": -2},
  "team": {
    "id": 28,
    "name": "San Jose Sharks",
    "link": "/api/v1/teams/28",
    "triCode": "SJS"
  }
};

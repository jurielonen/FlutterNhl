import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/player/player_enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('player', () {
    checkPlayer(Player actual, Player expected) {
      expect(actual.id, expected.id);
      expect(actual.fullname, expected.fullname);
    }

    checkPlayerPlay(PlayerPlay actual, PlayerPlay expected) {
      expect(actual.id, expected.id);
      expect(actual.fullname, expected.fullname);
      expect(actual.playerType, expected.playerType);
    }

    checkPlayerGame(PlayerGame actual, PlayerGame expected) {
      expect(actual.id, expected.id);
      expect(actual.fullname, expected.fullname);
      expect(actual.jerseyNumber, expected.jerseyNumber);
      expect(actual.position.name, expected.position.name);
      expect(actual.position.code, expected.position.code);
      expect(actual.stats, expected.stats);
    }

    test('player', () {
      checkPlayer(Player.fromJson(null), empty);
      checkPlayer(Player.fromJson({}), empty);

      checkPlayer(Player.fromJson(playerTestJson), playerTest);
    });

    test('playerPlay', () {
      checkPlayerPlay(PlayerPlay.fromJson(null), playerPlayEmpty);
      checkPlayerPlay(PlayerPlay.fromJson({}), playerPlayEmpty);

      checkPlayerPlay(PlayerPlay.fromJson(playerPlayJson), playerPlay);
    });

    test('playerGame', () {
      checkPlayerGame(PlayerGame.fromJsonFinal(null), playerGameEmpty);
      checkPlayerGame(PlayerGame.fromJsonFinal({}), playerGameEmpty);

      checkPlayerGame(PlayerGame.fromJsonPreview(null), playerGameEmpty);
      checkPlayerGame(PlayerGame.fromJsonPreview({}), playerGameEmpty);

      checkPlayerGame(PlayerGame.fromJsonFinal(playerFinalJson), playerFinal);
      checkPlayerGame(PlayerGame.fromJsonFinal(goalieFinalJson), goalieFinal);

      checkPlayerGame(
          PlayerGame.fromJsonPreview(playerPreviewJson), playerPreview);
    });
  });
}

final Player empty = Player(id: -1, fullname: '');

final playerTest = Player(id: 3452345, fullname: 'Testtest');

final Map<String, dynamic> playerTestJson = {
  'id': 3452345,
  'fullName': 'Testtest'
};

final PlayerPlay playerPlayEmpty = PlayerPlay(player: empty, playerType: '');

final PlayerPlay playerPlay =
    PlayerPlay(player: playerTest, playerType: 'Goalie');

final Map<String, dynamic> playerPlayJson = {
  'player': playerTestJson,
  'playerType': 'Goalie'
};

final PlayerGame playerGameEmpty = PlayerGame(
    jerseyNumber: '',
    player: empty,
    position: PersonPosition(code: Position.N_A, name: ''),
    stats: {});

final PlayerGame playerFinal = PlayerGame(
    jerseyNumber: "19",
    player: Player(id: 8466138, fullname: 'Joe Thornton'),
    position: PersonPosition(code: Position.C, name: 'Center'),
    stats: {
      "timeOnIce": "15:44",
      "assists": 1,
      "goals": 0,
      "shots": 0,
      "hits": 0,
      "powerPlayGoals": 0,
      "powerPlayAssists": 1,
      "penaltyMinutes": 0,
      "faceOffPct": 37.5,
      "faceOffWins": 3,
      "faceoffTaken": 8,
      "takeaways": 0,
      "giveaways": 0,
      "shortHandedGoals": 0,
      "shortHandedAssists": 0,
      "blocked": 0,
      "plusMinus": -3,
      "evenTimeOnIce": "12:47",
      "powerPlayTimeOnIce": "2:57",
      "shortHandedTimeOnIce": "0:00"
    });

final Map<String, dynamic> playerFinalJson = {
  "person": {
    "id": 8466138,
    "fullName": "Joe Thornton",
    "link": "/api/v1/people/8466138",
    "shootsCatches": "L",
    "rosterStatus": "Y"
  },
  "jerseyNumber": "19",
  "position": {
    "code": "C",
    "name": "Center",
    "type": "Forward",
    "abbreviation": "C"
  },
  "stats": {
    "skaterStats": {
      "timeOnIce": "15:44",
      "assists": 1,
      "goals": 0,
      "shots": 0,
      "hits": 0,
      "powerPlayGoals": 0,
      "powerPlayAssists": 1,
      "penaltyMinutes": 0,
      "faceOffPct": 37.5,
      "faceOffWins": 3,
      "faceoffTaken": 8,
      "takeaways": 0,
      "giveaways": 0,
      "shortHandedGoals": 0,
      "shortHandedAssists": 0,
      "blocked": 0,
      "plusMinus": -3,
      "evenTimeOnIce": "12:47",
      "powerPlayTimeOnIce": "2:57",
      "shortHandedTimeOnIce": "0:00"
    }
  }
};

final PlayerGame goalieFinal = PlayerGame(
    jerseyNumber: "30",
    player: Player(id: 8477180, fullname: 'Aaron Dell'),
    position: PersonPosition(code: Position.G, name: 'Goalie'),
    stats: {
      "timeOnIce": "59:48",
      "assists": 0,
      "goals": 0,
      "pim": 0,
      "shots": 45,
      "saves": 39,
      "powerPlaySaves": 2,
      "shortHandedSaves": 0,
      "evenSaves": 37,
      "shortHandedShotsAgainst": 0,
      "evenShotsAgainst": 41,
      "powerPlayShotsAgainst": 4,
      "decision": "L",
      "savePercentage": 86.66666666666667,
      "evenStrengthSavePercentage": 90.2439024390244,
      "powerPlaySavePercentage": 50
    });

final Map<String, dynamic> goalieFinalJson = {
  "person": {
    "id": 8477180,
    "fullName": "Aaron Dell",
    "link": "/api/v1/people/8477180",
    "shootsCatches": "L",
    "rosterStatus": "Y"
  },
  "jerseyNumber": "30",
  "position": {
    "code": "G",
    "name": "Goalie",
    "type": "Goalie",
    "abbreviation": "G"
  },
  "stats": {
    "goalieStats": {
      "timeOnIce": "59:48",
      "assists": 0,
      "goals": 0,
      "pim": 0,
      "shots": 45,
      "saves": 39,
      "powerPlaySaves": 2,
      "shortHandedSaves": 0,
      "evenSaves": 37,
      "shortHandedShotsAgainst": 0,
      "evenShotsAgainst": 41,
      "powerPlayShotsAgainst": 4,
      "decision": "L",
      "savePercentage": 86.66666666666667,
      "evenStrengthSavePercentage": 90.2439024390244,
      "powerPlaySavePercentage": 50
    }
  }
};

final PlayerGame playerPreview = PlayerGame(
    jerseyNumber: "19",
    player: Player(id: 8473604, fullname: 'Jonathan Toews'),
    position: PersonPosition(code: Position.C, name: 'Center'),
    stats: {
      "timeOnIce": "1384:23",
      "assists": 42,
      "goals": 18,
      "pim": 48,
      "shots": 172,
      "games": 70,
      "hits": 56,
      "powerPlayGoals": 1,
      "powerPlayPoints": 8,
      "powerPlayTimeOnIce": "231:50",
      "evenTimeOnIce": "1017:58",
      "penaltyMinutes": "48",
      "faceOffPct": 57.29,
      "shotPct": 10.5,
      "gameWinningGoals": 3,
      "overTimeGoals": 3,
      "shortHandedGoals": 1,
      "shortHandedPoints": 1,
      "shortHandedTimeOnIce": "134:35",
      "blocked": 35,
      "plusMinus": -2,
      "points": 60,
      "shifts": 1683,
      "timeOnIcePerGame": "19:46",
      "evenTimeOnIcePerGame": "14:32",
      "shortHandedTimeOnIcePerGame": "01:55",
      "powerPlayTimeOnIcePerGame": "03:18"
    });

final Map<String, dynamic> playerPreviewJson = {
  "person": {
    "id": 8473604,
    "fullName": "Jonathan Toews",
    "link": "/api/v1/people/8473604",
    "firstName": "Jonathan",
    "lastName": "Toews",
    "primaryNumber": "19",
    "birthDate": "1988-04-29",
    "currentAge": 32,
    "birthCity": "Winnipeg",
    "birthStateProvince": "MB",
    "birthCountry": "CAN",
    "nationality": "CAN",
    "height": "6' 2\"",
    "weight": 201,
    "active": true,
    "alternateCaptain": false,
    "captain": true,
    "rookie": false,
    "shootsCatches": "L",
    "rosterStatus": "Y",
    "currentTeam": {
      "id": 16,
      "name": "Chicago Blackhawks",
      "link": "/api/v1/teams/16"
    },
    "primaryPosition": {
      "code": "C",
      "name": "Center",
      "type": "Forward",
      "abbreviation": "C"
    },
    "stats": [
      {
        "type": {"displayName": "statsSingleSeason"},
        "splits": [
          {
            "season": "20192020",
            "stat": {
              "timeOnIce": "1384:23",
              "assists": 42,
              "goals": 18,
              "pim": 48,
              "shots": 172,
              "games": 70,
              "hits": 56,
              "powerPlayGoals": 1,
              "powerPlayPoints": 8,
              "powerPlayTimeOnIce": "231:50",
              "evenTimeOnIce": "1017:58",
              "penaltyMinutes": "48",
              "faceOffPct": 57.29,
              "shotPct": 10.5,
              "gameWinningGoals": 3,
              "overTimeGoals": 3,
              "shortHandedGoals": 1,
              "shortHandedPoints": 1,
              "shortHandedTimeOnIce": "134:35",
              "blocked": 35,
              "plusMinus": -2,
              "points": 60,
              "shifts": 1683,
              "timeOnIcePerGame": "19:46",
              "evenTimeOnIcePerGame": "14:32",
              "shortHandedTimeOnIcePerGame": "01:55",
              "powerPlayTimeOnIcePerGame": "03:18"
            }
          }
        ]
      }
    ]
  },
  "jerseyNumber": "19",
  "position": {
    "code": "C",
    "name": "Center",
    "type": "Forward",
    "abbreviation": "C"
  }
};

import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/player/player_enums.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Team', () {
    checkTeam(Team actual, Team expected) {
      expect(actual.name, expected.name);
      expect(actual.id, expected.id);
      expect(actual.abb, expected.abb);
    }

    checkTeamSchedule(TeamSchedule actual, TeamSchedule expected) {
      expect(actual.name, expected.name);
      expect(actual.id, expected.id);
      expect(actual.abb, expected.abb);
      expect(actual.score, expected.score);
      expect(actual.record, expected.record);
    }

    checkPlayerGame(PlayerGame actual, PlayerGame expected) {
      expect(actual.id, expected.id);
      expect(actual.fullname, expected.fullname);
      expect(actual.jerseyNumber, expected.jerseyNumber);
      expect(actual.position.name, expected.position.name);
      expect(actual.position.code, expected.position.code);
      expect(actual.stats, expected.stats);
    }

    checkTeamFinal(TeamFinal actual, TeamFinal expected) {
      expect(actual.name, expected.name);
      expect(actual.id, expected.id);
      expect(actual.abb, expected.abb);
      expect(actual.teamStats, expected.teamStats);
      expect(actual.playerStats.length, expected.playerStats.length);
      actual.playerStats.asMap().forEach((key, value) {
        checkPlayerGame(value, expected.playerStats[key]);
      });
    }

    checkTeamPreview(TeamPreview actual, TeamPreview expected) {
      expect(actual.name, expected.name);
      expect(actual.id, expected.id);
      expect(actual.abb, expected.abb);
      expect(actual.teamStats, expected.teamStats);
      expect(actual.playerStats.length, expected.playerStats.length);
      actual.playerStats.asMap().forEach((key, value) {
        checkPlayerGame(value, expected.playerStats[key]);
      });
    }

    test('Team', () {
      checkTeam(Team.fromJson(null), empty);
      checkTeam(Team.fromJson({}), empty);

      checkTeam(Team.fromJson(teamJson), team);
    });

    test('TeamSchedule', () {
      checkTeamSchedule(TeamSchedule.fromJson(null), scheduleTeamEmpty);
      checkTeamSchedule(TeamSchedule.fromJson({}), scheduleTeamEmpty);

      checkTeamSchedule(TeamSchedule.fromJson(scheduleJson), scheduleTeam);
    });

    test('TeamPreview', () {
      checkTeamPreview(TeamPreview.fromJson(null), teamPreviewEmpty);
      checkTeamPreview(TeamPreview.fromJson({}), teamPreviewEmpty);

      checkTeamPreview(TeamPreview.fromJson(previewJson), previewTeam);
    });

    test('TeamFinal', () {
      checkTeamFinal(TeamFinal.fromJson(null), teamFinalEmpty);
      checkTeamFinal(TeamFinal.fromJson({}), teamFinalEmpty);

      checkTeamFinal(TeamFinal.fromJson(finalJson), teamFinal);
    });
  });
}

final Team empty = Team(id: -1, name: '', abb: '');

final Team team = Team(id: 28, name: 'San Jose Sharks', abb: '');

final Map<String, dynamic> teamJson = {
  "id": 28,
  "name": "San Jose Sharks",
  "link": "/api/v1/teams/28",
  "triCode": "SJS"
};

final TeamSchedule scheduleTeamEmpty =
    TeamSchedule(team: empty, record: {}, score: -1);

final TeamSchedule scheduleTeam = TeamSchedule(
    team: Team(id: 28, name: 'San Jose Sharks', abb: 'SJS'),
    record: {"wins": 29, "losses": 36, "ot": 5, "type": "league"},
    score: 2);

final Map<String, dynamic> scheduleJson = {
  "leagueRecord": {"wins": 29, "losses": 36, "ot": 5, "type": "league"},
  "score": 2,
  "team": {
    "id": 28,
    "name": "San Jose Sharks",
    "link": "/api/v1/teams/28",
    "venue": {
      "name": "SAP Center at San Jose",
      "link": "/api/v1/venues/null",
      "city": "San Jose",
      "timeZone": {"id": "America/Los_Angeles", "offset": -7, "tz": "PDT"}
    },
    "abbreviation": "SJS",
    "teamName": "Sharks",
    "locationName": "San Jose",
    "firstYearOfPlay": "1991",
    "division": {
      "id": 15,
      "name": "Pacific",
      "nameShort": "PAC",
      "link": "/api/v1/divisions/15",
      "abbreviation": "P"
    },
    "conference": {"id": 5, "name": "Western", "link": "/api/v1/conferences/5"},
    "franchise": {
      "franchiseId": 29,
      "teamName": "Sharks",
      "link": "/api/v1/franchises/29"
    },
    "shortName": "San Jose",
    "officialSiteUrl": "http://www.sjsharks.com/",
    "franchiseId": 29,
    "active": true
  }
};

final TeamFinal teamFinalEmpty =
    TeamFinal(team: empty, teamStats: {}, playerStats: []);

final TeamFinal teamFinal = TeamFinal(
    team: Team(id: 28, name: 'San Jose Sharks', abb: 'SJS'),
    teamStats: {
      "goals": 2,
      "pim": 6,
      "shots": 36,
      "powerPlayPercentage": "33.3",
      "powerPlayGoals": 1,
      "powerPlayOpportunities": 3,
      "faceOffWinPercentage": "46.8",
      "blocked": 12,
      "takeaways": 7,
      "giveaways": 11,
      "hits": 35
    },
    playerStats: [
      PlayerGame(
          player: Player(id: 8466138, fullname: 'Joe Thornton'),
          jerseyNumber: '19',
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
          }),
      PlayerGame(
          player: Player(id: 8470613, fullname: 'Brent Burns'),
          jerseyNumber: '88',
          position: PersonPosition(code: Position.D, name: 'Defenseman'),
          stats: {
            "timeOnIce": "27:30",
            "assists": 0,
            "goals": 0,
            "shots": 3,
            "hits": 4,
            "powerPlayGoals": 0,
            "powerPlayAssists": 0,
            "penaltyMinutes": 2,
            "faceOffWins": 0,
            "faceoffTaken": 0,
            "takeaways": 2,
            "giveaways": 2,
            "shortHandedGoals": 0,
            "shortHandedAssists": 0,
            "blocked": 2,
            "plusMinus": -1,
            "evenTimeOnIce": "23:25",
            "powerPlayTimeOnIce": "2:52",
            "shortHandedTimeOnIce": "1:13"
          })
    ]);

final Map<String, dynamic> finalJson = {
  "team": {
    "id": 28,
    "name": "San Jose Sharks",
    "link": "/api/v1/teams/28",
    "abbreviation": "SJS",
    "triCode": "SJS"
  },
  "teamStats": {
    "teamSkaterStats": {
      "goals": 2,
      "pim": 6,
      "shots": 36,
      "powerPlayPercentage": "33.3",
      "powerPlayGoals": 1,
      "powerPlayOpportunities": 3,
      "faceOffWinPercentage": "46.8",
      "blocked": 12,
      "takeaways": 7,
      "giveaways": 11,
      "hits": 35
    }
  },
  "players": {
    "ID8466138": {
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
    },
    "ID8470613": {
      "person": {
        "id": 8470613,
        "fullName": "Brent Burns",
        "link": "/api/v1/people/8470613",
        "shootsCatches": "R",
        "rosterStatus": "Y"
      },
      "jerseyNumber": "88",
      "position": {
        "code": "D",
        "name": "Defenseman",
        "type": "Defenseman",
        "abbreviation": "D"
      },
      "stats": {
        "skaterStats": {
          "timeOnIce": "27:30",
          "assists": 0,
          "goals": 0,
          "shots": 3,
          "hits": 4,
          "powerPlayGoals": 0,
          "powerPlayAssists": 0,
          "penaltyMinutes": 2,
          "faceOffWins": 0,
          "faceoffTaken": 0,
          "takeaways": 2,
          "giveaways": 2,
          "shortHandedGoals": 0,
          "shortHandedAssists": 0,
          "blocked": 2,
          "plusMinus": -1,
          "evenTimeOnIce": "23:25",
          "powerPlayTimeOnIce": "2:52",
          "shortHandedTimeOnIce": "1:13"
        }
      }
    }
  }
};

final TeamPreview teamPreviewEmpty =
    TeamPreview(team: empty, teamStats: {}, playerStats: []);

final TeamPreview previewTeam = TeamPreview(
    team: Team(id: 28, name: 'San Jose Sharks', abb: 'SJS'),
    teamStats: {
      "gamesPlayed": 70,
      "wins": 29,
      "losses": 36,
      "ot": 5,
      "pts": 63,
      "ptPctg": "45.0",
      "goalsPerGame": 2.571,
      "goalsAgainstPerGame": 3.214,
      "evGGARatio": 0.7593,
      "powerPlayPercentage": "17.5",
      "powerPlayGoals": 33,
      "powerPlayGoalsAgainst": 32,
      "powerPlayOpportunities": 189,
      "penaltyKillPercentage": "85.7",
      "shotsPerGame": 30.0143,
      "shotsAllowed": 30.5714,
      "winScoreFirst": 0.625,
      "winOppScoreFirst": 0.237,
      "winLeadFirstPer": 0.737,
      "winLeadSecondPer": 0.87,
      "winOutshootOpp": 0.417,
      "winOutshotByOpp": 0.419,
      "faceOffsTaken": 3817,
      "faceOffsWon": 1868,
      "faceOffsLost": 1949,
      "faceOffWinPercentage": "48.9",
      "shootingPctg": 8.6,
      "savePctg": 0.895
    },
    playerStats: [
      PlayerGame(
          player: Player(id: 8474578, fullname: 'Erik Karlsson'),
          jerseyNumber: '65',
          position: PersonPosition(code: Position.D, name: 'Defenseman'),
          stats: {
            "timeOnIce": "1373:17",
            "assists": 34,
            "goals": 6,
            "pim": 16,
            "shots": 120,
            "games": 56,
            "hits": 26,
            "powerPlayGoals": 1,
            "powerPlayPoints": 13,
            "powerPlayTimeOnIce": "168:13",
            "evenTimeOnIce": "1060:50",
            "penaltyMinutes": "16",
            "faceOffPct": 0,
            "shotPct": 5,
            "gameWinningGoals": 0,
            "overTimeGoals": 0,
            "shortHandedGoals": 1,
            "shortHandedPoints": 1,
            "shortHandedTimeOnIce": "144:14",
            "blocked": 74,
            "plusMinus": -15,
            "points": 40,
            "shifts": 1531,
            "timeOnIcePerGame": "24:31",
            "evenTimeOnIcePerGame": "18:56",
            "shortHandedTimeOnIcePerGame": "02:34",
            "powerPlayTimeOnIcePerGame": "03:00"
          }),
      PlayerGame(
          player: Player(id: 8474774, fullname: 'Dalton Prout'),
          jerseyNumber: '45',
          position: PersonPosition(code: Position.C, name: 'Center'),
          stats: {
            "timeOnIce": "25:37",
            "assists": 0,
            "goals": 0,
            "pim": 7,
            "shots": 2,
            "games": 2,
            "hits": 3,
            "powerPlayGoals": 0,
            "powerPlayPoints": 0,
            "powerPlayTimeOnIce": "00:00",
            "evenTimeOnIce": "24:46",
            "penaltyMinutes": "7",
            "faceOffPct": 0,
            "shotPct": 0,
            "gameWinningGoals": 0,
            "overTimeGoals": 0,
            "shortHandedGoals": 0,
            "shortHandedPoints": 0,
            "shortHandedTimeOnIce": "00:51",
            "blocked": 3,
            "plusMinus": 0,
            "points": 0,
            "shifts": 35,
            "timeOnIcePerGame": "12:48",
            "evenTimeOnIcePerGame": "12:23",
            "shortHandedTimeOnIcePerGame": "00:25",
            "powerPlayTimeOnIcePerGame": "00:00"
          })
    ]);

final Map<String, dynamic> previewJson = {
  "id": 28,
  "name": "San Jose Sharks",
  "link": "/api/v1/teams/28",
  "venue": {
    "name": "SAP Center at San Jose",
    "link": "/api/v1/venues/null",
    "city": "San Jose",
    "timeZone": {"id": "America/Los_Angeles", "offset": -7, "tz": "PDT"}
  },
  "abbreviation": "SJS",
  "teamName": "Sharks",
  "locationName": "San Jose",
  "firstYearOfPlay": "1990",
  "division": {
    "id": 15,
    "name": "Pacific",
    "nameShort": "PAC",
    "link": "/api/v1/divisions/15",
    "abbreviation": "P"
  },
  "conference": {"id": 5, "name": "Western", "link": "/api/v1/conferences/5"},
  "franchise": {
    "franchiseId": 29,
    "teamName": "Sharks",
    "link": "/api/v1/franchises/29"
  },
  "teamStats": [
    {
      "type": {"displayName": "statsSingleSeason"},
      "splits": [
        {
          "stat": {
            "gamesPlayed": 70,
            "wins": 29,
            "losses": 36,
            "ot": 5,
            "pts": 63,
            "ptPctg": "45.0",
            "goalsPerGame": 2.571,
            "goalsAgainstPerGame": 3.214,
            "evGGARatio": 0.7593,
            "powerPlayPercentage": "17.5",
            "powerPlayGoals": 33,
            "powerPlayGoalsAgainst": 32,
            "powerPlayOpportunities": 189,
            "penaltyKillPercentage": "85.7",
            "shotsPerGame": 30.0143,
            "shotsAllowed": 30.5714,
            "winScoreFirst": 0.625,
            "winOppScoreFirst": 0.237,
            "winLeadFirstPer": 0.737,
            "winLeadSecondPer": 0.87,
            "winOutshootOpp": 0.417,
            "winOutshotByOpp": 0.419,
            "faceOffsTaken": 3817,
            "faceOffsWon": 1868,
            "faceOffsLost": 1949,
            "faceOffWinPercentage": "48.9",
            "shootingPctg": 8.6,
            "savePctg": 0.895
          },
          "team": {
            "id": 28,
            "name": "San Jose Sharks",
            "link": "/api/v1/teams/28"
          }
        },
        {
          "stat": {
            "wins": "28th",
            "losses": "30th",
            "ot": "30th",
            "pts": "29th",
            "ptPctg": "29th",
            "goalsPerGame": "28th",
            "goalsAgainstPerGame": "27th",
            "evGGARatio": "30th",
            "powerPlayPercentage": "23rd",
            "powerPlayGoals": "26th",
            "powerPlayGoalsAgainst": "3rd",
            "powerPlayOpportunities": "28th",
            "penaltyKillOpportunities": "25th",
            "penaltyKillPercentage": "1st",
            "shotsPerGame": "26th",
            "shotsAllowed": "10th",
            "winScoreFirst": "28th",
            "winOppScoreFirst": "25th",
            "winLeadFirstPer": "18th",
            "winLeadSecondPer": "13th",
            "winOutshootOpp": "25th",
            "winOutshotByOpp": "25th",
            "faceOffsTaken": "29th",
            "faceOffsWon": "28th",
            "faceOffsLost": "9th",
            "faceOffWinPercentage": "24th",
            "savePctRank": "30th",
            "shootingPctRank": "27th"
          },
          "team": {
            "id": 28,
            "name": "San Jose Sharks",
            "link": "/api/v1/teams/28"
          }
        }
      ]
    }
  ],
  "roster": {
    "roster": [
      {
        "person": {
          "id": 8474578,
          "fullName": "Erik Karlsson",
          "link": "/api/v1/people/8474578",
          "firstName": "Erik",
          "lastName": "Karlsson",
          "primaryNumber": "65",
          "birthDate": "1990-05-31",
          "currentAge": 30,
          "birthCity": "Landsbro",
          "birthCountry": "SWE",
          "nationality": "SWE",
          "height": "6' 0\"",
          "weight": 190,
          "active": true,
          "alternateCaptain": true,
          "captain": false,
          "rookie": false,
          "shootsCatches": "R",
          "rosterStatus": "I",
          "currentTeam": {
            "id": 28,
            "name": "San Jose Sharks",
            "link": "/api/v1/teams/28"
          },
          "primaryPosition": {
            "code": "D",
            "name": "Defenseman",
            "type": "Defenseman",
            "abbreviation": "D"
          },
          "stats": [
            {
              "type": {"displayName": "statsSingleSeason"},
              "splits": [
                {
                  "season": "20192020",
                  "stat": {
                    "timeOnIce": "1373:17",
                    "assists": 34,
                    "goals": 6,
                    "pim": 16,
                    "shots": 120,
                    "games": 56,
                    "hits": 26,
                    "powerPlayGoals": 1,
                    "powerPlayPoints": 13,
                    "powerPlayTimeOnIce": "168:13",
                    "evenTimeOnIce": "1060:50",
                    "penaltyMinutes": "16",
                    "faceOffPct": 0,
                    "shotPct": 5,
                    "gameWinningGoals": 0,
                    "overTimeGoals": 0,
                    "shortHandedGoals": 1,
                    "shortHandedPoints": 1,
                    "shortHandedTimeOnIce": "144:14",
                    "blocked": 74,
                    "plusMinus": -15,
                    "points": 40,
                    "shifts": 1531,
                    "timeOnIcePerGame": "24:31",
                    "evenTimeOnIcePerGame": "18:56",
                    "shortHandedTimeOnIcePerGame": "02:34",
                    "powerPlayTimeOnIcePerGame": "03:00"
                  }
                }
              ]
            }
          ]
        },
        "jerseyNumber": "65",
        "position": {
          "code": "D",
          "name": "Defenseman",
          "type": "Defenseman",
          "abbreviation": "D"
        }
      },
      {
        "person": {
          "id": 8474774,
          "fullName": "Dalton Prout",
          "link": "/api/v1/people/8474774",
          "firstName": "Dalton",
          "lastName": "Prout",
          "primaryNumber": "5",
          "birthDate": "1990-03-13",
          "currentAge": 30,
          "birthCity": "Kingsville",
          "birthStateProvince": "ON",
          "birthCountry": "CAN",
          "nationality": "CAN",
          "height": "6' 3\"",
          "weight": 215,
          "active": true,
          "alternateCaptain": false,
          "captain": false,
          "rookie": false,
          "shootsCatches": "R",
          "rosterStatus": "I",
          "currentTeam": {
            "id": 28,
            "name": "San Jose Sharks",
            "link": "/api/v1/teams/28"
          },
          "primaryPosition": {
            "code": "D",
            "name": "Defenseman",
            "type": "Defenseman",
            "abbreviation": "D"
          },
          "stats": [
            {
              "type": {"displayName": "statsSingleSeason"},
              "splits": [
                {
                  "season": "20192020",
                  "stat": {
                    "timeOnIce": "25:37",
                    "assists": 0,
                    "goals": 0,
                    "pim": 7,
                    "shots": 2,
                    "games": 2,
                    "hits": 3,
                    "powerPlayGoals": 0,
                    "powerPlayPoints": 0,
                    "powerPlayTimeOnIce": "00:00",
                    "evenTimeOnIce": "24:46",
                    "penaltyMinutes": "7",
                    "faceOffPct": 0,
                    "shotPct": 0,
                    "gameWinningGoals": 0,
                    "overTimeGoals": 0,
                    "shortHandedGoals": 0,
                    "shortHandedPoints": 0,
                    "shortHandedTimeOnIce": "00:51",
                    "blocked": 3,
                    "plusMinus": 0,
                    "points": 0,
                    "shifts": 35,
                    "timeOnIcePerGame": "12:48",
                    "evenTimeOnIcePerGame": "12:23",
                    "shortHandedTimeOnIcePerGame": "00:25",
                    "powerPlayTimeOnIcePerGame": "00:00"
                  }
                }
              ]
            }
          ]
        },
        "jerseyNumber": "45",
        "position": {
          "code": "C",
          "name": "Center",
          "type": "Forward",
          "abbreviation": "C"
        }
      }
    ],
    "link": "/api/v1/teams/28/roster"
  },
  "shortName": "San Jose",
  "officialSiteUrl": "http://www.sjsharks.com/",
  "franchiseId": 29,
  "active": true
};

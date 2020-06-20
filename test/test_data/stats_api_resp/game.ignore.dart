const Map<String, dynamic> gameScheduleJson = {
  "gamePk": 2019021079,
  "link": "/api/v1/game/2019021079/feed/live",
  "gameType": "R",
  "season": "20192020",
  "gameDate": "2020-03-12T00:00:00Z",
  "status": {
    "abstractGameState": "Final",
    "codedGameState": "7",
    "detailedState": "Final",
    "statusCode": "7",
    "startTimeTBD": false
  },
  "teams": {
    "away": {
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
        "conference": {
          "id": 5,
          "name": "Western",
          "link": "/api/v1/conferences/5"
        },
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
    },
    "home": {
      "leagueRecord": {"wins": 32, "losses": 30, "ot": 8, "type": "league"},
      "score": 6,
      "team": {
        "id": 16,
        "name": "Chicago Blackhawks",
        "link": "/api/v1/teams/16",
        "venue": {
          "id": 5092,
          "name": "United Center",
          "link": "/api/v1/venues/5092",
          "city": "Chicago",
          "timeZone": {"id": "America/Chicago", "offset": -5, "tz": "CDT"}
        },
        "abbreviation": "CHI",
        "teamName": "Blackhawks",
        "locationName": "Chicago",
        "firstYearOfPlay": "1926",
        "division": {
          "id": 16,
          "name": "Central",
          "nameShort": "CEN",
          "link": "/api/v1/divisions/16",
          "abbreviation": "C"
        },
        "conference": {
          "id": 5,
          "name": "Western",
          "link": "/api/v1/conferences/5"
        },
        "franchise": {
          "franchiseId": 11,
          "teamName": "Blackhawks",
          "link": "/api/v1/franchises/11"
        },
        "shortName": "Chicago",
        "officialSiteUrl": "http://www.chicagoblackhawks.com/",
        "franchiseId": 11,
        "active": true
      }
    }
  },
  "linescore": {
    "currentPeriod": 3,
    "currentPeriodOrdinal": "3rd",
    "currentPeriodTimeRemaining": "Final",
    "periods": [
      {
        "periodType": "REGULAR",
        "startTime": "2020-03-12T00:10:45Z",
        "endTime": "2020-03-12T00:43:57Z",
        "num": 1,
        "ordinalNum": "1st",
        "home": {"goals": 0, "shotsOnGoal": 14, "rinkSide": "right"},
        "away": {"goals": 1, "shotsOnGoal": 15, "rinkSide": "left"}
      },
      {
        "periodType": "REGULAR",
        "startTime": "2020-03-12T01:02:21Z",
        "endTime": "2020-03-12T01:38:54Z",
        "num": 2,
        "ordinalNum": "2nd",
        "home": {"goals": 3, "shotsOnGoal": 17, "rinkSide": "left"},
        "away": {"goals": 0, "shotsOnGoal": 10, "rinkSide": "right"}
      },
      {
        "periodType": "REGULAR",
        "startTime": "2020-03-12T01:57:50Z",
        "endTime": "2020-03-12T02:30:59Z",
        "num": 3,
        "ordinalNum": "3rd",
        "home": {"goals": 3, "shotsOnGoal": 14, "rinkSide": "right"},
        "away": {"goals": 1, "shotsOnGoal": 11, "rinkSide": "left"}
      }
    ],
    "shootoutInfo": {
      "away": {"scores": 0, "attempts": 0},
      "home": {"scores": 0, "attempts": 0}
    },
    "teams": {
      "home": {
        "team": {
          "id": 16,
          "name": "Chicago Blackhawks",
          "link": "/api/v1/teams/16"
        },
        "goals": 6,
        "shotsOnGoal": 45,
        "goaliePulled": false,
        "numSkaters": 5,
        "powerPlay": false
      },
      "away": {
        "team": {
          "id": 28,
          "name": "San Jose Sharks",
          "link": "/api/v1/teams/28"
        },
        "goals": 2,
        "shotsOnGoal": 36,
        "goaliePulled": false,
        "numSkaters": 5,
        "powerPlay": false
      }
    },
    "powerPlayStrength": "Even",
    "hasShootout": false,
    "intermissionInfo": {
      "intermissionTimeRemaining": 0,
      "intermissionTimeElapsed": 0,
      "inIntermission": false
    },
    "powerPlayInfo": {
      "situationTimeRemaining": 0,
      "situationTimeElapsed": 10,
      "inSituation": false
    }
  },
  "decisions": {
    "winner": {
      "id": 8470645,
      "fullName": "Corey Crawford",
      "link": "/api/v1/people/8470645"
    },
    "loser": {
      "id": 8477180,
      "fullName": "Aaron Dell",
      "link": "/api/v1/people/8477180"
    },
    "firstStar": {
      "id": 8479337,
      "fullName": "Alex DeBrincat",
      "link": "/api/v1/people/8479337"
    },
    "secondStar": {
      "id": 8474141,
      "fullName": "Patrick Kane",
      "link": "/api/v1/people/8474141"
    },
    "thirdStar": {
      "id": 8470281,
      "fullName": "Duncan Keith",
      "link": "/api/v1/people/8470281"
    }
  },
  "scoringPlays": [
    {
      "players": [
        {
          "player": {
            "id": 8475169,
            "fullName": "Evander Kane",
            "link": "/api/v1/people/8475169"
          },
          "playerType": "Scorer",
          "seasonTotal": 26
        },
        {
          "player": {
            "id": 8466138,
            "fullName": "Joe Thornton",
            "link": "/api/v1/people/8466138"
          },
          "playerType": "Assist",
          "seasonTotal": 24
        },
        {
          "player": {
            "id": 8478414,
            "fullName": "Timo Meier",
            "link": "/api/v1/people/8478414"
          },
          "playerType": "Assist",
          "seasonTotal": 27
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
        "event": "Goal",
        "eventCode": "CHI43",
        "eventTypeId": "GOAL",
        "description":
            "Evander Kane (26) Tip-In, assists: Joe Thornton (24), Timo Meier (27)",
        "secondaryType": "Tip-In",
        "strength": {"code": "PPG", "name": "Power Play"},
        "gameWinningGoal": false,
        "emptyNet": false
      },
      "about": {
        "eventIdx": 64,
        "eventId": 43,
        "period": 1,
        "periodType": "REGULAR",
        "ordinalNum": "1st",
        "periodTime": "10:49",
        "periodTimeRemaining": "09:11",
        "dateTime": "2020-03-12T00:27:41Z",
        "goals": {"away": 1, "home": 0}
      },
      "coordinates": {"x": 74, "y": -1},
      "team": {"id": 28, "name": "San Jose Sharks", "link": "/api/v1/teams/28"}
    },
    {
      "players": [
        {
          "player": {
            "id": 8470281,
            "fullName": "Duncan Keith",
            "link": "/api/v1/people/8470281"
          },
          "playerType": "Scorer",
          "seasonTotal": 3
        },
        {
          "player": {
            "id": 8473604,
            "fullName": "Jonathan Toews",
            "link": "/api/v1/people/8473604"
          },
          "playerType": "Assist",
          "seasonTotal": 41
        },
        {
          "player": {
            "id": 8479337,
            "fullName": "Alex DeBrincat",
            "link": "/api/v1/people/8479337"
          },
          "playerType": "Assist",
          "seasonTotal": 25
        },
        {
          "player": {
            "id": 8477180,
            "fullName": "Aaron Dell",
            "link": "/api/v1/people/8477180"
          },
          "playerType": "Goalie"
        }
      ],
      "result": {
        "event": "Goal",
        "eventCode": "CHI227",
        "eventTypeId": "GOAL",
        "description":
            "Duncan Keith (3) Wrist Shot, assists: Jonathan Toews (41), Alex DeBrincat (25)",
        "secondaryType": "Wrist Shot",
        "strength": {"code": "PPG", "name": "Power Play"},
        "gameWinningGoal": false,
        "emptyNet": false
      },
      "about": {
        "eventIdx": 138,
        "eventId": 227,
        "period": 2,
        "periodType": "REGULAR",
        "ordinalNum": "2nd",
        "periodTime": "04:33",
        "periodTimeRemaining": "15:27",
        "dateTime": "2020-03-12T01:08:45Z",
        "goals": {"away": 1, "home": 1}
      },
      "coordinates": {"x": 38, "y": 13},
      "team": {
        "id": 16,
        "name": "Chicago Blackhawks",
        "link": "/api/v1/teams/16"
      }
    },
    {
      "players": [
        {
          "player": {
            "id": 8474141,
            "fullName": "Patrick Kane",
            "link": "/api/v1/people/8474141"
          },
          "playerType": "Scorer",
          "seasonTotal": 32
        },
        {
          "player": {
            "id": 8479337,
            "fullName": "Alex DeBrincat",
            "link": "/api/v1/people/8479337"
          },
          "playerType": "Assist",
          "seasonTotal": 26
        },
        {
          "player": {
            "id": 8470281,
            "fullName": "Duncan Keith",
            "link": "/api/v1/people/8470281"
          },
          "playerType": "Assist",
          "seasonTotal": 24
        },
        {
          "player": {
            "id": 8477180,
            "fullName": "Aaron Dell",
            "link": "/api/v1/people/8477180"
          },
          "playerType": "Goalie"
        }
      ],
      "result": {
        "event": "Goal",
        "eventCode": "CHI458",
        "eventTypeId": "GOAL",
        "description":
            "Patrick Kane (32) Tip-In, assists: Alex DeBrincat (26), Duncan Keith (24)",
        "secondaryType": "Tip-In",
        "strength": {"code": "PPG", "name": "Power Play"},
        "gameWinningGoal": false,
        "emptyNet": false
      },
      "about": {
        "eventIdx": 205,
        "eventId": 458,
        "period": 2,
        "periodType": "REGULAR",
        "ordinalNum": "2nd",
        "periodTime": "16:33",
        "periodTimeRemaining": "03:27",
        "dateTime": "2020-03-12T01:31:48Z",
        "goals": {"away": 1, "home": 2}
      },
      "coordinates": {"x": 82, "y": 4},
      "team": {
        "id": 16,
        "name": "Chicago Blackhawks",
        "link": "/api/v1/teams/16"
      }
    },
    {
      "players": [
        {
          "player": {
            "id": 8476438,
            "fullName": "Brandon Saad",
            "link": "/api/v1/people/8476438"
          },
          "playerType": "Scorer",
          "seasonTotal": 21
        },
        {
          "player": {
            "id": 8479337,
            "fullName": "Alex DeBrincat",
            "link": "/api/v1/people/8479337"
          },
          "playerType": "Assist",
          "seasonTotal": 27
        },
        {
          "player": {
            "id": 8473604,
            "fullName": "Jonathan Toews",
            "link": "/api/v1/people/8473604"
          },
          "playerType": "Assist",
          "seasonTotal": 42
        },
        {
          "player": {
            "id": 8477180,
            "fullName": "Aaron Dell",
            "link": "/api/v1/people/8477180"
          },
          "playerType": "Goalie"
        }
      ],
      "result": {
        "event": "Goal",
        "eventCode": "CHI461",
        "eventTypeId": "GOAL",
        "description":
            "Brandon Saad (21) Wrist Shot, assists: Alex DeBrincat (27), Jonathan Toews (42)",
        "secondaryType": "Wrist Shot",
        "strength": {"code": "EVEN", "name": "Even"},
        "gameWinningGoal": true,
        "emptyNet": false
      },
      "about": {
        "eventIdx": 211,
        "eventId": 461,
        "period": 2,
        "periodType": "REGULAR",
        "ordinalNum": "2nd",
        "periodTime": "17:58",
        "periodTimeRemaining": "02:02",
        "dateTime": "2020-03-12T01:34:16Z",
        "goals": {"away": 1, "home": 3}
      },
      "coordinates": {"x": 72, "y": 3},
      "team": {
        "id": 16,
        "name": "Chicago Blackhawks",
        "link": "/api/v1/teams/16"
      }
    },
    {
      "players": [
        {
          "player": {
            "id": 8479423,
            "fullName": "Alex Nylander",
            "link": "/api/v1/people/8479423"
          },
          "playerType": "Scorer",
          "seasonTotal": 10
        },
        {
          "player": {
            "id": 8478440,
            "fullName": "Dylan Strome",
            "link": "/api/v1/people/8478440"
          },
          "playerType": "Assist",
          "seasonTotal": 26
        },
        {
          "player": {
            "id": 8477180,
            "fullName": "Aaron Dell",
            "link": "/api/v1/people/8477180"
          },
          "playerType": "Goalie"
        }
      ],
      "result": {
        "event": "Goal",
        "eventCode": "CHI483",
        "eventTypeId": "GOAL",
        "description":
            "Alex Nylander (10) Slap Shot, assists: Dylan Strome (26)",
        "secondaryType": "Slap Shot",
        "strength": {"code": "EVEN", "name": "Even"},
        "gameWinningGoal": false,
        "emptyNet": false
      },
      "about": {
        "eventIdx": 246,
        "eventId": 483,
        "period": 3,
        "periodType": "REGULAR",
        "ordinalNum": "3rd",
        "periodTime": "01:31",
        "periodTimeRemaining": "18:29",
        "dateTime": "2020-03-12T01:59:56Z",
        "goals": {"away": 1, "home": 4}
      },
      "coordinates": {"x": -63, "y": 1},
      "team": {
        "id": 16,
        "name": "Chicago Blackhawks",
        "link": "/api/v1/teams/16"
      }
    },
    {
      "players": [
        {
          "player": {
            "id": 8478414,
            "fullName": "Timo Meier",
            "link": "/api/v1/people/8478414"
          },
          "playerType": "Scorer",
          "seasonTotal": 22
        },
        {
          "player": {
            "id": 8475169,
            "fullName": "Evander Kane",
            "link": "/api/v1/people/8475169"
          },
          "playerType": "Assist",
          "seasonTotal": 21
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
        "event": "Goal",
        "eventCode": "CHI495",
        "eventTypeId": "GOAL",
        "description": "Timo Meier (22) Wrist Shot, assists: Evander Kane (21)",
        "secondaryType": "Wrist Shot",
        "strength": {"code": "EVEN", "name": "Even"},
        "gameWinningGoal": false,
        "emptyNet": false
      },
      "about": {
        "eventIdx": 272,
        "eventId": 495,
        "period": 3,
        "periodType": "REGULAR",
        "ordinalNum": "3rd",
        "periodTime": "06:39",
        "periodTimeRemaining": "13:21",
        "dateTime": "2020-03-12T02:09:17Z",
        "goals": {"away": 2, "home": 4}
      },
      "coordinates": {"x": 64, "y": 12},
      "team": {"id": 28, "name": "San Jose Sharks", "link": "/api/v1/teams/28"}
    },
    {
      "players": [
        {
          "player": {
            "id": 8474141,
            "fullName": "Patrick Kane",
            "link": "/api/v1/people/8474141"
          },
          "playerType": "Scorer",
          "seasonTotal": 33
        },
        {
          "player": {
            "id": 8476886,
            "fullName": "Slater Koekkoek",
            "link": "/api/v1/people/8476886"
          },
          "playerType": "Assist",
          "seasonTotal": 9
        },
        {
          "player": {
            "id": 8479423,
            "fullName": "Alex Nylander",
            "link": "/api/v1/people/8479423"
          },
          "playerType": "Assist",
          "seasonTotal": 16
        },
        {
          "player": {
            "id": 8477180,
            "fullName": "Aaron Dell",
            "link": "/api/v1/people/8477180"
          },
          "playerType": "Goalie"
        }
      ],
      "result": {
        "event": "Goal",
        "eventCode": "CHI665",
        "eventTypeId": "GOAL",
        "description":
            "Patrick Kane (33) Wrist Shot, assists: Slater Koekkoek (9), Alex Nylander (16)",
        "secondaryType": "Wrist Shot",
        "strength": {"code": "EVEN", "name": "Even"},
        "gameWinningGoal": false,
        "emptyNet": false
      },
      "about": {
        "eventIdx": 310,
        "eventId": 665,
        "period": 3,
        "periodType": "REGULAR",
        "ordinalNum": "3rd",
        "periodTime": "16:19",
        "periodTimeRemaining": "03:41",
        "dateTime": "2020-03-12T02:25:21Z",
        "goals": {"away": 2, "home": 5}
      },
      "coordinates": {"x": -82, "y": 4},
      "team": {
        "id": 16,
        "name": "Chicago Blackhawks",
        "link": "/api/v1/teams/16"
      }
    },
    {
      "players": [
        {
          "player": {
            "id": 8477330,
            "fullName": "Dominik Kubalik",
            "link": "/api/v1/people/8477330"
          },
          "playerType": "Scorer",
          "seasonTotal": 30
        },
        {
          "player": {
            "id": 8481523,
            "fullName": "Kirby Dach",
            "link": "/api/v1/people/8481523"
          },
          "playerType": "Assist",
          "seasonTotal": 15
        },
        {
          "player": {
            "id": 8477180,
            "fullName": "Aaron Dell",
            "link": "/api/v1/people/8477180"
          },
          "playerType": "Goalie"
        }
      ],
      "result": {
        "event": "Goal",
        "eventCode": "CHI669",
        "eventTypeId": "GOAL",
        "description":
            "Dominik Kubalik (30) Slap Shot, assists: Kirby Dach (15)",
        "secondaryType": "Slap Shot",
        "strength": {"code": "EVEN", "name": "Even"},
        "gameWinningGoal": false,
        "emptyNet": false
      },
      "about": {
        "eventIdx": 319,
        "eventId": 669,
        "period": 3,
        "periodType": "REGULAR",
        "ordinalNum": "3rd",
        "periodTime": "18:03",
        "periodTimeRemaining": "01:57",
        "dateTime": "2020-03-12T02:28:13Z",
        "goals": {"away": 2, "home": 6}
      },
      "coordinates": {"x": -61, "y": -11},
      "team": {
        "id": 16,
        "name": "Chicago Blackhawks",
        "link": "/api/v1/teams/16"
      }
    }
  ],
  "venue": {"id": 5092, "name": "United Center", "link": "/api/v1/venues/5092"},
  "tickets": [
    {
      "ticketType": "clubWebSchedule",
      "ticketLink":
          "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_TEAM_CHI_SCHEDULE_PAGE_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_CHI&utm_content=SCHEDULE_PAGE_GAME37&CAMEFROM=CFC_BLACKHAWKS_WEB_SCHEDULE_EVENTBUYTIX"
    },
    {
      "ticketType": "clubWebScheduleBuySell",
      "ticketLink":
          "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_TEAM_CHI_SCHEDULE_BUYSELL_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_CHI&utm_content=SCHEDULE_BUYSELL_GAME37"
    },
    {
      "ticketType": "leagueWebScoresPage",
      "ticketLink":
          "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_SCORES_PAGE_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=SCORES_PAGE_GAME37"
    },
    {
      "ticketType": "leagueWebGamecenterPreview",
      "ticketLink":
          "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_GAMECENTER_PREVIEW_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=GAMECENTER_PREVIEW_GAME37"
    },
    {
      "ticketType": "clubWebMIG",
      "ticketLink":
          "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_TEAM_CHI_WEB_MIG_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_CHI&utm_content=WEB_MIG_GAME37"
    },
    {
      "ticketType": "leagueWebHorizontalScoreboard",
      "ticketLink":
          "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_HORIZONTAL_SCOREBOARD_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=HORIZONTAL_SCOREBOARD_GAME37"
    },
    {
      "ticketType": "leagueWebScheduleBuySell",
      "ticketLink":
          "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_SCHEDULE_BUYSELL_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=SCHEDULE_BUYSELL_GAME37"
    },
    {
      "ticketType": "leagueAppScoreTab",
      "ticketLink":
          "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_SCORE_TAB_APP_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=SCORE_TAB_APP_GAME37"
    },
    {
      "ticketType": "leagueWebSchedule",
      "ticketLink":
          "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_SCHEDULE_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=SCHEDULE_GAME37"
    },
    {
      "ticketType": "clubWebHorizontalScoreboard",
      "ticketLink":
          "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_TEAM_CHI_HORIZONTAL_SCOREBOARD_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_CHI&utm_content=HORIZONTAL_SCOREBOARD_GAME37"
    },
    {
      "ticketType": "clubAppScoreTile",
      "ticketLink":
          "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_TEAM_CHI_SCORE_TAB_APP_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_CHI&utm_content=SCORE_TAB_APP_GAME37"
    },
    {
      "ticketType": "leagueAppGamecenterPreview",
      "ticketLink":
          "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_GAMECENTER_PREVIEW_APP_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=GAMECENTER_PREVIEW_APP_GAME37"
    },
    {
      "ticketType": "googleOneBox",
      "ticketLink":
          "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_GOOGLE_ONE_BOX_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=GOOGLE_ONE_BOX_GAME37"
    }
  ],
  "content": {
    "link": "/api/v1/game/2019021079/content",
    "editorial": {},
    "media": {
      "epg": [
        {
          "title": "NHLTV",
          "platform": "web",
          "items": [
            {
              "guid": "76271f9e-dbef-424f-af66-da940a9304bf",
              "mediaState": "MEDIA_ARCHIVE",
              "mediaPlaybackId": "71314003",
              "mediaFeedType": "NATIONAL",
              "callLetters": "NBCSN",
              "eventId": "221-2004553",
              "language": "eng",
              "freeGame": true,
              "feedName": "",
              "gamePlus": false
            },
            {
              "guid": "ad6589f4-dd2c-4dc2-8757-828eef349a4b",
              "mediaState": "MEDIA_ARCHIVE",
              "mediaPlaybackId": "71314703",
              "mediaFeedType": "COMPOSITE",
              "callLetters": "",
              "eventId": "221-2004553",
              "language": "eng",
              "freeGame": true,
              "feedName": "Multi-Cam 1",
              "gamePlus": false
            }
          ]
        },
        {
          "title": "Audio",
          "items": [
            {
              "mediaState": "MEDIA_DONE",
              "mediaPlaybackId": "71314303",
              "mediaFeedType": "HOME",
              "callLetters": "WGN",
              "eventId": "221-2004553",
              "language": "eng",
              "freeGame": false,
              "feedName": "",
              "gamePlus": false
            },
            {
              "mediaState": "MEDIA_DONE",
              "mediaPlaybackId": "71314403",
              "mediaFeedType": "AWAY",
              "callLetters": "KFOX",
              "eventId": "221-2004553",
              "language": "eng",
              "freeGame": false,
              "feedName": "",
              "gamePlus": false
            }
          ]
        },
        {
          "title": "Extended Highlights",
          "topicList": "313536042",
          "items": [
            {
              "type": "video",
              "id": "5356805",
              "date": "2020-03-11T20:00:00-0400",
              "title": "SJS @ CHI",
              "blurb": "Condensed Game: Sharks @ Blackhawks",
              "description":
                  "Extended highlights of the San Jose Sharks at the Chicago Blackhawks",
              "duration": "08:59",
              "authFlow": false,
              "mediaPlaybackId": "5356805",
              "mediaState": "MEDIA_ARCHIVE",
              "keywords": [
                {"type": "shareable", "value": "Y", "displayName": "Y"},
                {"type": "embeddable", "value": "Y", "displayName": "Y"},
                {"type": "teamId", "value": "28", "displayName": "28"},
                {
                  "type": "content",
                  "value": "extendedHighlights",
                  "displayName": "Condensed Game"
                },
                {"type": "language", "value": "en", "displayName": "English"},
                {"type": "teamId", "value": "16", "displayName": "16"}
              ],
              "image": {
                "title": "",
                "altText": "",
                "cuts": {
                  "1136x640": {
                    "aspectRatio": "16:9",
                    "width": 1136,
                    "height": 640,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316140018/1136x640/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316140018/1136x640/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316140018/1136x640/cut.jpg"
                  },
                  "1024x576": {
                    "aspectRatio": "16:9",
                    "width": 1024,
                    "height": 576,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316140018/1024x576/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316140018/1024x576/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316140018/1024x576/cut.jpg"
                  },
                  "960x540": {
                    "aspectRatio": "16:9",
                    "width": 960,
                    "height": 540,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316140018/960x540/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316140018/960x540/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316140018/960x540/cut.jpg"
                  },
                  "768x432": {
                    "aspectRatio": "16:9",
                    "width": 768,
                    "height": 432,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316140018/768x432/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316140018/768x432/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316140018/768x432/cut.jpg"
                  },
                  "640x360": {
                    "aspectRatio": "16:9",
                    "width": 640,
                    "height": 360,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316140018/640x360/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316140018/640x360/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316140018/640x360/cut.jpg"
                  },
                  "568x320": {
                    "aspectRatio": "16:9",
                    "width": 568,
                    "height": 320,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316140018/568x320/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316140018/1136x640/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316140018/568x320/cut.jpg"
                  },
                  "372x210": {
                    "aspectRatio": "16:9",
                    "width": 372,
                    "height": 210,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316140018/372x210/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316140018/372x210/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316140018/372x210/cut.jpg"
                  },
                  "320x180": {
                    "aspectRatio": "16:9",
                    "width": 320,
                    "height": 180,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316140018/320x180/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316140018/640x360/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316140018/960x540/cut.jpg"
                  },
                  "248x140": {
                    "aspectRatio": "16:9",
                    "width": 248,
                    "height": 140,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316140018/248x140/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316140018/248x140/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316140018/248x140/cut.jpg"
                  },
                  "124x70": {
                    "aspectRatio": "16:9",
                    "width": 124,
                    "height": 70,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316140018/124x70/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316140018/248x140/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316140018/372x210/cut.jpg"
                  }
                }
              },
              "playbacks": [
                {
                  "name": "FLASH_192K_320X180",
                  "width": "320",
                  "height": "180",
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish/09d19818-804b-4023-abe2-83d8997303c0.mp4"
                },
                {
                  "name": "FLASH_450K_384x216",
                  "width": null,
                  "height": null,
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish/6fb791ef-5d32-45f7-913d-19a1d6caf8e8.mp4"
                },
                {
                  "name": "FLASH_1200K_640X360",
                  "width": "640",
                  "height": "360",
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish/c51d0ec5-b528-4943-9964-c529d2d0497c.mp4"
                },
                {
                  "name": "FLASH_1800K_896x504",
                  "width": null,
                  "height": null,
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish/b3084343-f56e-4bb9-8c2b-69578ef57207.mp4"
                },
                {
                  "name": "HTTP_CLOUD_MOBILE",
                  "width": "null",
                  "height": "null",
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterMobile.m3u8"
                },
                {
                  "name": "HTTP_CLOUD_TABLET",
                  "width": "null",
                  "height": "null",
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterTablet.m3u8"
                },
                {
                  "name": "HTTP_CLOUD_TABLET_60",
                  "width": null,
                  "height": null,
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterTablet60.m3u8"
                },
                {
                  "name": "HTTP_CLOUD_WIRED",
                  "width": "null",
                  "height": "null",
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterWired.m3u8"
                },
                {
                  "name": "HTTP_CLOUD_WIRED_60",
                  "width": null,
                  "height": null,
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterWired60.m3u8"
                },
                {
                  "name": "HTTP_CLOUD_WIRED_WEB",
                  "width": null,
                  "height": null,
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterWiredWeb.m3u8"
                }
              ]
            }
          ]
        },
        {
          "title": "Recap",
          "topicList": "313536042",
          "items": [
            {
              "type": "video",
              "id": "5356806",
              "date": "2020-03-11T20:00:00-0400",
              "title": "Recap: SJS 2, CHI 6",
              "blurb": "Kane's two goals lead Blackhawks past Sharks",
              "description":
                  "Patrick Kane scored two goals and Alex DeBrincat collected two assists, leading the Blackhawks to a 6-2 victory against the Sharks at home",
              "duration": "05:02",
              "authFlow": false,
              "mediaPlaybackId": "5356806",
              "mediaState": "MEDIA_ARCHIVE",
              "keywords": [
                {"type": "shareable", "value": "Y", "displayName": "Y"},
                {"type": "embeddable", "value": "Y", "displayName": "Y"},
                {
                  "type": "content",
                  "value": "gameRecap",
                  "displayName": "game recap"
                },
                {
                  "type": "content",
                  "value": "teamRecap",
                  "displayName": "Team Recap"
                },
                {"type": "language", "value": "en", "displayName": "English"},
                {"type": "teamId", "value": "16", "displayName": "16"}
              ],
              "image": {
                "title": "",
                "altText": "",
                "cuts": {
                  "1136x640": {
                    "aspectRatio": "16:9",
                    "width": 1136,
                    "height": 640,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316139238/1136x640/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316139238/1136x640/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316139238/1136x640/cut.jpg"
                  },
                  "1024x576": {
                    "aspectRatio": "16:9",
                    "width": 1024,
                    "height": 576,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316139238/1024x576/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316139238/1024x576/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316139238/1024x576/cut.jpg"
                  },
                  "960x540": {
                    "aspectRatio": "16:9",
                    "width": 960,
                    "height": 540,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316139238/960x540/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316139238/960x540/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316139238/960x540/cut.jpg"
                  },
                  "768x432": {
                    "aspectRatio": "16:9",
                    "width": 768,
                    "height": 432,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316139238/768x432/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316139238/768x432/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316139238/768x432/cut.jpg"
                  },
                  "640x360": {
                    "aspectRatio": "16:9",
                    "width": 640,
                    "height": 360,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316139238/640x360/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316139238/640x360/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316139238/640x360/cut.jpg"
                  },
                  "568x320": {
                    "aspectRatio": "16:9",
                    "width": 568,
                    "height": 320,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316139238/568x320/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316139238/1136x640/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316139238/568x320/cut.jpg"
                  },
                  "372x210": {
                    "aspectRatio": "16:9",
                    "width": 372,
                    "height": 210,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316139238/372x210/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316139238/372x210/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316139238/372x210/cut.jpg"
                  },
                  "320x180": {
                    "aspectRatio": "16:9",
                    "width": 320,
                    "height": 180,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316139238/320x180/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316139238/640x360/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316139238/960x540/cut.jpg"
                  },
                  "248x140": {
                    "aspectRatio": "16:9",
                    "width": 248,
                    "height": 140,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316139238/248x140/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316139238/248x140/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316139238/248x140/cut.jpg"
                  },
                  "124x70": {
                    "aspectRatio": "16:9",
                    "width": 124,
                    "height": 70,
                    "src":
                        "https://nhl.bamcontent.com/images/photos/316139238/124x70/cut.jpg",
                    "at2x":
                        "https://nhl.bamcontent.com/images/photos/316139238/248x140/cut.jpg",
                    "at3x":
                        "https://nhl.bamcontent.com/images/photos/316139238/372x210/cut.jpg"
                  }
                }
              },
              "playbacks": [
                {
                  "name": "FLASH_192K_320X180",
                  "width": "320",
                  "height": "180",
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish/85ad83a0-434c-4bbc-ad6e-cc579d21afa8.mp4"
                },
                {
                  "name": "FLASH_450K_384x216",
                  "width": null,
                  "height": null,
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish/97c29acb-014b-485e-b562-f5eb17e1def2.mp4"
                },
                {
                  "name": "FLASH_1200K_640X360",
                  "width": "640",
                  "height": "360",
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish/d43da7bf-9f68-4469-9337-5d61504b7dd5.mp4"
                },
                {
                  "name": "FLASH_1800K_896x504",
                  "width": null,
                  "height": null,
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish/a2442933-e96c-4216-acc2-13d840ede0be.mp4"
                },
                {
                  "name": "HTTP_CLOUD_MOBILE",
                  "width": "null",
                  "height": "null",
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterMobile.m3u8"
                },
                {
                  "name": "HTTP_CLOUD_TABLET",
                  "width": "null",
                  "height": "null",
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterTablet.m3u8"
                },
                {
                  "name": "HTTP_CLOUD_TABLET_60",
                  "width": null,
                  "height": null,
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterTablet60.m3u8"
                },
                {
                  "name": "HTTP_CLOUD_WIRED",
                  "width": "null",
                  "height": "null",
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterWired.m3u8"
                },
                {
                  "name": "HTTP_CLOUD_WIRED_60",
                  "width": null,
                  "height": null,
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterWired60.m3u8"
                },
                {
                  "name": "HTTP_CLOUD_WIRED_WEB",
                  "width": null,
                  "height": null,
                  "url":
                      "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterWiredWeb.m3u8"
                }
              ]
            }
          ]
        },
        {"title": "Power Play", "items": []}
      ]
    },
    "highlights": {
      "scoreboard": {
        "title": "Highlights",
        "topicList": "313536042",
        "items": [
          {
            "type": "video",
            "id": "5356154",
            "date": "2020-03-11T20:00:00-0400",
            "title": "Saad goes five-hole in front",
            "blurb": "SJS@CHI: Saad slips DeBrincat's pass past Dell",
            "description":
                "Brandon Saad receives a pass from Alex DeBrincat, dekes to his forehand and slips a shot through Aaron Dell's five-hole for a 3-1 lead",
            "duration": "00:44",
            "authFlow": false,
            "mediaPlaybackId": "5356154",
            "mediaState": "MEDIA_ARCHIVE",
            "keywords": [
              {"type": "shareable", "value": "Y", "displayName": "Y"},
              {"type": "statsEventId", "value": "461", "displayName": "461"},
              {"type": "embeddable", "value": "Y", "displayName": "Y"},
              {
                "type": "content",
                "value": "highlight",
                "displayName": "highlight"
              },
              {
                "type": "content",
                "value": "realTimeHighlight",
                "displayName": "Real-Time Highlight"
              },
              {"type": "language", "value": "en", "displayName": "English"},
              {"type": "teamId", "value": "16", "displayName": "16"}
            ],
            "image": {
              "title": "",
              "altText": "",
              "cuts": {
                "1136x640": {
                  "aspectRatio": "16:9",
                  "width": 1136,
                  "height": 640,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg"
                },
                "1024x576": {
                  "aspectRatio": "16:9",
                  "width": 1024,
                  "height": 576,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg"
                },
                "960x540": {
                  "aspectRatio": "16:9",
                  "width": 960,
                  "height": 540,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg"
                },
                "768x432": {
                  "aspectRatio": "16:9",
                  "width": 768,
                  "height": 432,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg"
                },
                "640x360": {
                  "aspectRatio": "16:9",
                  "width": 640,
                  "height": 360,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg"
                },
                "568x320": {
                  "aspectRatio": "16:9",
                  "width": 568,
                  "height": 320,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136044/568x320/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136044/568x320/cut.jpg"
                },
                "372x210": {
                  "aspectRatio": "16:9",
                  "width": 372,
                  "height": 210,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg"
                },
                "320x180": {
                  "aspectRatio": "16:9",
                  "width": 320,
                  "height": 180,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136044/320x180/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg"
                },
                "248x140": {
                  "aspectRatio": "16:9",
                  "width": 248,
                  "height": 140,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg"
                },
                "124x70": {
                  "aspectRatio": "16:9",
                  "width": 124,
                  "height": 70,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136044/124x70/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg"
                }
              }
            },
            "playbacks": [
              {
                "name": "FLASH_192K_320X180",
                "width": "320",
                "height": "180",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/cd4b6236-552d-4472-a38d-4cea5dd91772.mp4"
              },
              {
                "name": "FLASH_450K_384x216",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/f583981b-7ffe-45c5-9d01-6e69ef9711ab.mp4"
              },
              {
                "name": "FLASH_1200K_640X360",
                "width": "640",
                "height": "360",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/77dbcc48-e5ca-4a35-83fe-64fd85a13b8c.mp4"
              },
              {
                "name": "FLASH_1800K_896x504",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/c74beed0-d9ca-480b-a9ec-6158ba091d9b.mp4"
              },
              {
                "name": "HTTP_CLOUD_MOBILE",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterMobile.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterTablet.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterTablet60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWired.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWired60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_WEB",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWiredWeb.m3u8"
              }
            ]
          },
          {
            "type": "video",
            "id": "5356393",
            "date": "2020-03-11T20:00:00-0400",
            "title": "Nylander's quick one-timer",
            "blurb": "SJS@CHI: Nylander hammers Strome's feed past Dell",
            "description":
                "Dylan Strome sends a pass to Alex Nylander, who quickly blasts a one-timer past Aaron Dell, extending the Blackhawks' lead to 4-1 in the 3rd",
            "duration": "00:40",
            "authFlow": false,
            "mediaPlaybackId": "5356393",
            "mediaState": "MEDIA_ARCHIVE",
            "keywords": [
              {"type": "shareable", "value": "Y", "displayName": "Y"},
              {"type": "statsEventId", "value": "483", "displayName": "483"},
              {"type": "embeddable", "value": "Y", "displayName": "Y"},
              {
                "type": "content",
                "value": "highlight",
                "displayName": "highlight"
              },
              {
                "type": "content",
                "value": "realTimeHighlight",
                "displayName": "Real-Time Highlight"
              },
              {"type": "language", "value": "en", "displayName": "English"},
              {"type": "teamId", "value": "16", "displayName": "16"}
            ],
            "image": {
              "title": "",
              "altText": "",
              "cuts": {
                "1136x640": {
                  "aspectRatio": "16:9",
                  "width": 1136,
                  "height": 640,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg"
                },
                "1024x576": {
                  "aspectRatio": "16:9",
                  "width": 1024,
                  "height": 576,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg"
                },
                "960x540": {
                  "aspectRatio": "16:9",
                  "width": 960,
                  "height": 540,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg"
                },
                "768x432": {
                  "aspectRatio": "16:9",
                  "width": 768,
                  "height": 432,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg"
                },
                "640x360": {
                  "aspectRatio": "16:9",
                  "width": 640,
                  "height": 360,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg"
                },
                "568x320": {
                  "aspectRatio": "16:9",
                  "width": 568,
                  "height": 320,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316135616/568x320/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316135616/568x320/cut.jpg"
                },
                "372x210": {
                  "aspectRatio": "16:9",
                  "width": 372,
                  "height": 210,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg"
                },
                "320x180": {
                  "aspectRatio": "16:9",
                  "width": 320,
                  "height": 180,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316135616/320x180/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg"
                },
                "248x140": {
                  "aspectRatio": "16:9",
                  "width": 248,
                  "height": 140,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg"
                },
                "124x70": {
                  "aspectRatio": "16:9",
                  "width": 124,
                  "height": 70,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316135616/124x70/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg"
                }
              }
            },
            "playbacks": [
              {
                "name": "FLASH_192K_320X180",
                "width": "320",
                "height": "180",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/c22ab9eb-292e-4923-a709-0f6bb596b36a.mp4"
              },
              {
                "name": "FLASH_450K_384x216",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/d081a99c-45f6-40c2-a8df-1b4daabcfa06.mp4"
              },
              {
                "name": "FLASH_1200K_640X360",
                "width": "640",
                "height": "360",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/4dedd87d-b6f5-4944-981c-18dd9d1d3943.mp4"
              },
              {
                "name": "FLASH_1800K_896x504",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/12d370f5-4fa0-4d7b-ad70-865db594f823.mp4"
              },
              {
                "name": "HTTP_CLOUD_MOBILE",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterMobile.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterTablet.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterTablet60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWired.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWired60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_WEB",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWiredWeb.m3u8"
              }
            ]
          },
          {
            "type": "video",
            "id": "5355504",
            "date": "2020-03-11T20:00:00-0400",
            "title": "Kane opens scoring with PPG",
            "blurb": "SJS@CHI: Kane nets redirection from slot for PPG",
            "description":
                "Joe Thornton sends a pass to Evander Kane, who deflects the puck past Corey Crawford on the power play to give the Sharks a 1-0 lead in the 1st",
            "duration": "00:48",
            "authFlow": false,
            "mediaPlaybackId": "5355504",
            "mediaState": "MEDIA_ARCHIVE",
            "keywords": [
              {"type": "shareable", "value": "Y", "displayName": "Y"},
              {"type": "statsEventId", "value": "43", "displayName": "43"},
              {"type": "embeddable", "value": "Y", "displayName": "Y"},
              {"type": "teamId", "value": "28", "displayName": "28"},
              {
                "type": "content",
                "value": "highlight",
                "displayName": "highlight"
              },
              {
                "type": "content",
                "value": "realTimeHighlight",
                "displayName": "Real-Time Highlight"
              },
              {"type": "language", "value": "en", "displayName": "English"}
            ],
            "image": {
              "title": "",
              "altText": "",
              "cuts": {
                "1136x640": {
                  "aspectRatio": "16:9",
                  "width": 1136,
                  "height": 640,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg"
                },
                "1024x576": {
                  "aspectRatio": "16:9",
                  "width": 1024,
                  "height": 576,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg"
                },
                "960x540": {
                  "aspectRatio": "16:9",
                  "width": 960,
                  "height": 540,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg"
                },
                "768x432": {
                  "aspectRatio": "16:9",
                  "width": 768,
                  "height": 432,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg"
                },
                "640x360": {
                  "aspectRatio": "16:9",
                  "width": 640,
                  "height": 360,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg"
                },
                "568x320": {
                  "aspectRatio": "16:9",
                  "width": 568,
                  "height": 320,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316134926/568x320/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316134926/568x320/cut.jpeg"
                },
                "372x210": {
                  "aspectRatio": "16:9",
                  "width": 372,
                  "height": 210,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg"
                },
                "320x180": {
                  "aspectRatio": "16:9",
                  "width": 320,
                  "height": 180,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316134926/320x180/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg"
                },
                "248x140": {
                  "aspectRatio": "16:9",
                  "width": 248,
                  "height": 140,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg"
                },
                "124x70": {
                  "aspectRatio": "16:9",
                  "width": 124,
                  "height": 70,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316134926/124x70/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg"
                }
              }
            },
            "playbacks": [
              {
                "name": "FLASH_192K_320X180",
                "width": "320",
                "height": "180",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/908b987c-df59-4f89-a8a7-72742bd74c2b.mp4"
              },
              {
                "name": "FLASH_450K_384x216",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/2e122ff1-39b5-413c-98b8-1abce4ad6202.mp4"
              },
              {
                "name": "FLASH_1200K_640X360",
                "width": "640",
                "height": "360",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/a672d40a-211a-4fe5-9d08-ec474ceb02c7.mp4"
              },
              {
                "name": "FLASH_1800K_896x504",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/a7cf8598-3112-4697-8935-cc098326ed7c.mp4"
              },
              {
                "name": "HTTP_CLOUD_MOBILE",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterMobile.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterTablet.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterTablet60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWired.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWired60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_WEB",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWiredWeb.m3u8"
              }
            ]
          },
          {
            "type": "video",
            "id": "5356140",
            "date": "2020-03-11T20:00:00-0400",
            "title": "Kane, DeBrincat connect for PPG",
            "blurb": "SJS@CHI: Kane taps DeBrincat's nice feed home for PPG",
            "description":
                "Alex DeBrincat sends a pretty backdoor pass to Patrick Kane, who taps the puck past Aaron Dell for a power-play goal and a 2-1 lead in the 2nd",
            "duration": "00:51",
            "authFlow": false,
            "mediaPlaybackId": "5356140",
            "mediaState": "MEDIA_ARCHIVE",
            "keywords": [
              {"type": "shareable", "value": "Y", "displayName": "Y"},
              {"type": "statsEventId", "value": "458", "displayName": "458"},
              {"type": "embeddable", "value": "Y", "displayName": "Y"},
              {
                "type": "content",
                "value": "highlight",
                "displayName": "highlight"
              },
              {
                "type": "content",
                "value": "realTimeHighlight",
                "displayName": "Real-Time Highlight"
              },
              {"type": "language", "value": "en", "displayName": "English"},
              {"type": "teamId", "value": "16", "displayName": "16"}
            ],
            "image": {
              "title": "",
              "altText": "",
              "cuts": {
                "1136x640": {
                  "aspectRatio": "16:9",
                  "width": 1136,
                  "height": 640,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg"
                },
                "1024x576": {
                  "aspectRatio": "16:9",
                  "width": 1024,
                  "height": 576,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg"
                },
                "960x540": {
                  "aspectRatio": "16:9",
                  "width": 960,
                  "height": 540,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg"
                },
                "768x432": {
                  "aspectRatio": "16:9",
                  "width": 768,
                  "height": 432,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg"
                },
                "640x360": {
                  "aspectRatio": "16:9",
                  "width": 640,
                  "height": 360,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg"
                },
                "568x320": {
                  "aspectRatio": "16:9",
                  "width": 568,
                  "height": 320,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136260/568x320/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136260/568x320/cut.jpeg"
                },
                "372x210": {
                  "aspectRatio": "16:9",
                  "width": 372,
                  "height": 210,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg"
                },
                "320x180": {
                  "aspectRatio": "16:9",
                  "width": 320,
                  "height": 180,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136260/320x180/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg"
                },
                "248x140": {
                  "aspectRatio": "16:9",
                  "width": 248,
                  "height": 140,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg"
                },
                "124x70": {
                  "aspectRatio": "16:9",
                  "width": 124,
                  "height": 70,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136260/124x70/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg"
                }
              }
            },
            "playbacks": [
              {
                "name": "FLASH_192K_320X180",
                "width": "320",
                "height": "180",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/a6b5b899-57ec-491f-ac7f-5270df77d7bd.mp4"
              },
              {
                "name": "FLASH_450K_384x216",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/d9f0768d-8893-4a0a-b3a4-0938b5190a87.mp4"
              },
              {
                "name": "FLASH_1200K_640X360",
                "width": "640",
                "height": "360",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/e94caf54-9622-4a42-8924-384a5dc79f60.mp4"
              },
              {
                "name": "FLASH_1800K_896x504",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/28f0831d-e5cd-4f78-9f8d-4a62f3d2f275.mp4"
              },
              {
                "name": "HTTP_CLOUD_MOBILE",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterMobile.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterTablet.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterTablet60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWired.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWired60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_WEB",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWiredWeb.m3u8"
              }
            ]
          },
          {
            "type": "video",
            "id": "5356647",
            "date": "2020-03-11T20:00:00-0400",
            "title": "Kane's second goal of the game",
            "blurb": "SJS@CHI: Kane nets own rebound for second goal",
            "description":
                "Patrick Kane is denied by Aaron Dell, but he finds his own rebound in the crease and taps it into the back of the net for a 5-2 lead in the 3rd",
            "duration": "00:49",
            "authFlow": false,
            "mediaPlaybackId": "5356647",
            "mediaState": "MEDIA_ARCHIVE",
            "keywords": [
              {"type": "shareable", "value": "Y", "displayName": "Y"},
              {"type": "statsEventId", "value": "665", "displayName": "665"},
              {"type": "embeddable", "value": "Y", "displayName": "Y"},
              {
                "type": "content",
                "value": "highlight",
                "displayName": "highlight"
              },
              {
                "type": "content",
                "value": "realTimeHighlight",
                "displayName": "Real-Time Highlight"
              },
              {"type": "language", "value": "en", "displayName": "English"},
              {"type": "teamId", "value": "16", "displayName": "16"}
            ],
            "image": {
              "title": "",
              "altText": "",
              "cuts": {
                "1136x640": {
                  "aspectRatio": "16:9",
                  "width": 1136,
                  "height": 640,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg"
                },
                "1024x576": {
                  "aspectRatio": "16:9",
                  "width": 1024,
                  "height": 576,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg"
                },
                "960x540": {
                  "aspectRatio": "16:9",
                  "width": 960,
                  "height": 540,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg"
                },
                "768x432": {
                  "aspectRatio": "16:9",
                  "width": 768,
                  "height": 432,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg"
                },
                "640x360": {
                  "aspectRatio": "16:9",
                  "width": 640,
                  "height": 360,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg"
                },
                "568x320": {
                  "aspectRatio": "16:9",
                  "width": 568,
                  "height": 320,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138472/568x320/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138472/568x320/cut.jpg"
                },
                "372x210": {
                  "aspectRatio": "16:9",
                  "width": 372,
                  "height": 210,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg"
                },
                "320x180": {
                  "aspectRatio": "16:9",
                  "width": 320,
                  "height": 180,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138472/320x180/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg"
                },
                "248x140": {
                  "aspectRatio": "16:9",
                  "width": 248,
                  "height": 140,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg"
                },
                "124x70": {
                  "aspectRatio": "16:9",
                  "width": 124,
                  "height": 70,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138472/124x70/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg"
                }
              }
            },
            "playbacks": [
              {
                "name": "FLASH_192K_320X180",
                "width": "320",
                "height": "180",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/e608ed07-ab4d-48c8-90ea-4ff3a79ecf0d.mp4"
              },
              {
                "name": "FLASH_450K_384x216",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/5c5a46ab-170a-49f7-9bc3-431ac4445ed7.mp4"
              },
              {
                "name": "FLASH_1200K_640X360",
                "width": "640",
                "height": "360",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/21c762a5-07eb-4644-a35d-e0d6cd2e4a70.mp4"
              },
              {
                "name": "FLASH_1800K_896x504",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/7ae919a8-ddfa-42d0-9947-fbb56d1500d4.mp4"
              },
              {
                "name": "HTTP_CLOUD_MOBILE",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterMobile.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterTablet.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterTablet60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWired.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWired60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_WEB",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWiredWeb.m3u8"
              }
            ]
          },
          {
            "type": "video",
            "id": "5355964",
            "date": "2020-03-11T20:00:00-0400",
            "title": "Keith nets PPG through traffic",
            "blurb": "SJS@CHI: Keith rips shot through screen for PPG",
            "description":
                "Duncan Keith receives a pass, walks across the blue line and fires a wrist shot through a screen and past Aaron Dell for a power-play goal",
            "duration": "00:47",
            "authFlow": false,
            "mediaPlaybackId": "5355964",
            "mediaState": "MEDIA_ARCHIVE",
            "keywords": [
              {"type": "shareable", "value": "Y", "displayName": "Y"},
              {"type": "embeddable", "value": "Y", "displayName": "Y"},
              {
                "type": "content",
                "value": "highlight",
                "displayName": "highlight"
              },
              {
                "type": "content",
                "value": "realTimeHighlight",
                "displayName": "Real-Time Highlight"
              },
              {"type": "statsEventId", "value": "227", "displayName": "227"},
              {"type": "language", "value": "en", "displayName": "English"},
              {"type": "teamId", "value": "16", "displayName": "16"}
            ],
            "image": {
              "title": "",
              "altText": "",
              "cuts": {
                "1136x640": {
                  "aspectRatio": "16:9",
                  "width": 1136,
                  "height": 640,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg"
                },
                "1024x576": {
                  "aspectRatio": "16:9",
                  "width": 1024,
                  "height": 576,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg"
                },
                "960x540": {
                  "aspectRatio": "16:9",
                  "width": 960,
                  "height": 540,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg"
                },
                "768x432": {
                  "aspectRatio": "16:9",
                  "width": 768,
                  "height": 432,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg"
                },
                "640x360": {
                  "aspectRatio": "16:9",
                  "width": 640,
                  "height": 360,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg"
                },
                "568x320": {
                  "aspectRatio": "16:9",
                  "width": 568,
                  "height": 320,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136042/568x320/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136042/568x320/cut.jpeg"
                },
                "372x210": {
                  "aspectRatio": "16:9",
                  "width": 372,
                  "height": 210,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg"
                },
                "320x180": {
                  "aspectRatio": "16:9",
                  "width": 320,
                  "height": 180,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136042/320x180/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg"
                },
                "248x140": {
                  "aspectRatio": "16:9",
                  "width": 248,
                  "height": 140,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg"
                },
                "124x70": {
                  "aspectRatio": "16:9",
                  "width": 124,
                  "height": 70,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136042/124x70/cut.jpeg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg"
                }
              }
            },
            "playbacks": [
              {
                "name": "FLASH_192K_320X180",
                "width": "320",
                "height": "180",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/606db2d3-a9df-4e64-a054-6095f8fe561f.mp4"
              },
              {
                "name": "FLASH_450K_384x216",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/deb77b93-a5b9-4ea8-adec-330528201204.mp4"
              },
              {
                "name": "FLASH_1200K_640X360",
                "width": "640",
                "height": "360",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/0a5594dd-2252-4df0-aca4-27455bcefcb1.mp4"
              },
              {
                "name": "FLASH_1800K_896x504",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/3ce06651-4e0e-4953-b949-82d1cdb0cdb8.mp4"
              },
              {
                "name": "HTTP_CLOUD_MOBILE",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterMobile.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterTablet.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterTablet60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWired.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWired60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_WEB",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWiredWeb.m3u8"
              }
            ]
          },
          {
            "type": "video",
            "id": "5356441",
            "date": "2020-03-11T20:00:00-0400",
            "title": "Meier scores off the draw",
            "blurb": "SJS@CHI: Meier roofs shot past Crawford off the draw",
            "description":
                "Timo Meier picks up the puck in the face-off circle and lifts a shot over Corey Crawford's glove, cutting the Sharks' deficit to 4-2 in the 3rd",
            "duration": "00:29",
            "authFlow": false,
            "mediaPlaybackId": "5356441",
            "mediaState": "MEDIA_ARCHIVE",
            "keywords": [
              {"type": "shareable", "value": "Y", "displayName": "Y"},
              {"type": "embeddable", "value": "Y", "displayName": "Y"},
              {"type": "teamId", "value": "28", "displayName": "28"},
              {
                "type": "content",
                "value": "highlight",
                "displayName": "highlight"
              },
              {"type": "statsEventId", "value": "495", "displayName": "495"},
              {
                "type": "content",
                "value": "realTimeHighlight",
                "displayName": "Real-Time Highlight"
              },
              {"type": "language", "value": "en", "displayName": "English"}
            ],
            "image": {
              "title": "",
              "altText": "",
              "cuts": {
                "1136x640": {
                  "aspectRatio": "16:9",
                  "width": 1136,
                  "height": 640,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg"
                },
                "1024x576": {
                  "aspectRatio": "16:9",
                  "width": 1024,
                  "height": 576,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg"
                },
                "960x540": {
                  "aspectRatio": "16:9",
                  "width": 960,
                  "height": 540,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg"
                },
                "768x432": {
                  "aspectRatio": "16:9",
                  "width": 768,
                  "height": 432,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg"
                },
                "640x360": {
                  "aspectRatio": "16:9",
                  "width": 640,
                  "height": 360,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg"
                },
                "568x320": {
                  "aspectRatio": "16:9",
                  "width": 568,
                  "height": 320,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136932/568x320/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136932/568x320/cut.jpg"
                },
                "372x210": {
                  "aspectRatio": "16:9",
                  "width": 372,
                  "height": 210,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg"
                },
                "320x180": {
                  "aspectRatio": "16:9",
                  "width": 320,
                  "height": 180,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136932/320x180/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg"
                },
                "248x140": {
                  "aspectRatio": "16:9",
                  "width": 248,
                  "height": 140,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg"
                },
                "124x70": {
                  "aspectRatio": "16:9",
                  "width": 124,
                  "height": 70,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316136932/124x70/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg"
                }
              }
            },
            "playbacks": [
              {
                "name": "FLASH_192K_320X180",
                "width": "320",
                "height": "180",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/17253577-c40f-47bd-a823-b45753da0429.mp4"
              },
              {
                "name": "FLASH_450K_384x216",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/554b2086-f42d-4c14-8948-f2838bc8ff54.mp4"
              },
              {
                "name": "FLASH_1200K_640X360",
                "width": "640",
                "height": "360",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/162d00e0-032b-4874-8fc2-f656d1a54b96.mp4"
              },
              {
                "name": "FLASH_1800K_896x504",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/f3331c47-7b41-4ac1-9942-0ebbae91087f.mp4"
              },
              {
                "name": "HTTP_CLOUD_MOBILE",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterMobile.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterTablet.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterTablet60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWired.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWired60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_WEB",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWiredWeb.m3u8"
              }
            ]
          },
          {
            "type": "video",
            "id": "5356785",
            "date": "2020-03-11T20:00:00-0400",
            "title": "Kubalik's blistering one-timer",
            "blurb": "SJS@CHI: Kubalik goes top shelf off Dach's slick feed",
            "description":
                "Kirby Dach drops a pass to Dominik Kubalik, who hammers a one-timer top shelf over Aaron Dell's glove for a 6-2 lead in the 3rd period",
            "duration": "00:47",
            "authFlow": false,
            "mediaPlaybackId": "5356785",
            "mediaState": "MEDIA_ARCHIVE",
            "keywords": [
              {"type": "shareable", "value": "Y", "displayName": "Y"},
              {"type": "embeddable", "value": "Y", "displayName": "Y"},
              {
                "type": "content",
                "value": "highlight",
                "displayName": "highlight"
              },
              {
                "type": "content",
                "value": "realTimeHighlight",
                "displayName": "Real-Time Highlight"
              },
              {"type": "statsEventId", "value": "669", "displayName": "669"},
              {"type": "language", "value": "en", "displayName": "English"},
              {"type": "teamId", "value": "16", "displayName": "16"}
            ],
            "image": {
              "title": "",
              "altText": "",
              "cuts": {
                "1136x640": {
                  "aspectRatio": "16:9",
                  "width": 1136,
                  "height": 640,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg"
                },
                "1024x576": {
                  "aspectRatio": "16:9",
                  "width": 1024,
                  "height": 576,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg"
                },
                "960x540": {
                  "aspectRatio": "16:9",
                  "width": 960,
                  "height": 540,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg"
                },
                "768x432": {
                  "aspectRatio": "16:9",
                  "width": 768,
                  "height": 432,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg"
                },
                "640x360": {
                  "aspectRatio": "16:9",
                  "width": 640,
                  "height": 360,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg"
                },
                "568x320": {
                  "aspectRatio": "16:9",
                  "width": 568,
                  "height": 320,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138532/568x320/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138532/568x320/cut.jpg"
                },
                "372x210": {
                  "aspectRatio": "16:9",
                  "width": 372,
                  "height": 210,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg"
                },
                "320x180": {
                  "aspectRatio": "16:9",
                  "width": 320,
                  "height": 180,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138532/320x180/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg"
                },
                "248x140": {
                  "aspectRatio": "16:9",
                  "width": 248,
                  "height": 140,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg"
                },
                "124x70": {
                  "aspectRatio": "16:9",
                  "width": 124,
                  "height": 70,
                  "src":
                      "https://nhl.bamcontent.com/images/photos/316138532/124x70/cut.jpg",
                  "at2x":
                      "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
                  "at3x":
                      "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg"
                }
              }
            },
            "playbacks": [
              {
                "name": "FLASH_192K_320X180",
                "width": "320",
                "height": "180",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/cb1417c3-bd68-4647-ae78-e182698c5faf.mp4"
              },
              {
                "name": "FLASH_450K_384x216",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/05d66888-d551-4479-a935-a9e5fce9a61d.mp4"
              },
              {
                "name": "FLASH_1200K_640X360",
                "width": "640",
                "height": "360",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/44539768-0eb8-4e75-a2c8-cf1d0e9ade4c.mp4"
              },
              {
                "name": "FLASH_1800K_896x504",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish/559be6f4-69bc-4393-8265-386a94c44187.mp4"
              },
              {
                "name": "HTTP_CLOUD_MOBILE",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterMobile.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterTablet.m3u8"
              },
              {
                "name": "HTTP_CLOUD_TABLET_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterTablet60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED",
                "width": "null",
                "height": "null",
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWired.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_60",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWired60.m3u8"
              },
              {
                "name": "HTTP_CLOUD_WIRED_WEB",
                "width": null,
                "height": null,
                "url":
                    "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWiredWeb.m3u8"
              }
            ]
          }
        ]
      }
    }
  }
};

const Map<String, dynamic> gamePreviewJson = {
  "copyright":
      "NHL and the NHL Shield are registered trademarks of the National Hockey League. NHL and NHL team marks are the property of the NHL and its teams. © NHL 2020. All Rights Reserved.",
  "teams": [
    {
      "id": 16,
      "name": "Chicago Blackhawks",
      "link": "/api/v1/teams/16",
      "venue": {
        "id": 5092,
        "name": "United Center",
        "link": "/api/v1/venues/5092",
        "city": "Chicago",
        "timeZone": {"id": "America/Chicago", "offset": -5, "tz": "CDT"}
      },
      "abbreviation": "CHI",
      "teamName": "Blackhawks",
      "locationName": "Chicago",
      "firstYearOfPlay": "1926",
      "division": {
        "id": 16,
        "name": "Central",
        "nameShort": "CEN",
        "link": "/api/v1/divisions/16",
        "abbreviation": "C"
      },
      "conference": {
        "id": 5,
        "name": "Western",
        "link": "/api/v1/conferences/5"
      },
      "franchise": {
        "franchiseId": 11,
        "teamName": "Blackhawks",
        "link": "/api/v1/franchises/11"
      },
      "teamStats": [
        {
          "type": {"displayName": "statsSingleSeason"},
          "splits": [
            {
              "stat": {
                "gamesPlayed": 70,
                "wins": 32,
                "losses": 30,
                "ot": 8,
                "pts": 72,
                "ptPctg": "51.4",
                "goalsPerGame": 2.971,
                "goalsAgainstPerGame": 3.057,
                "evGGARatio": 1,
                "powerPlayPercentage": "15.2",
                "powerPlayGoals": 33,
                "powerPlayGoalsAgainst": 37,
                "powerPlayOpportunities": 217,
                "penaltyKillPercentage": "82.1",
                "shotsPerGame": 31.8143,
                "shotsAllowed": 35.1143,
                "winScoreFirst": 0.625,
                "winOppScoreFirst": 0.316,
                "winLeadFirstPer": 0.731,
                "winLeadSecondPer": 0.786,
                "winOutshootOpp": 0.478,
                "winOutshotByOpp": 0.467,
                "faceOffsTaken": 3933,
                "faceOffsWon": 1964,
                "faceOffsLost": 1969,
                "faceOffWinPercentage": "49.9",
                "shootingPctg": 9.3,
                "savePctg": 0.913
              },
              "team": {
                "id": 16,
                "name": "Chicago Blackhawks",
                "link": "/api/v1/teams/16"
              }
            },
            {
              "stat": {
                "wins": "23rd",
                "losses": "24th",
                "ot": "18th",
                "pts": "23rd",
                "ptPctg": "23rd",
                "goalsPerGame": "18th",
                "goalsAgainstPerGame": "17th",
                "evGGARatio": "18th",
                "powerPlayPercentage": "28th",
                "powerPlayGoals": "23rd",
                "powerPlayGoalsAgainst": "9th",
                "powerPlayOpportunities": "8th",
                "penaltyKillOpportunities": "14th",
                "penaltyKillPercentage": "9th",
                "shotsPerGame": "13th",
                "shotsAllowed": "31st",
                "winScoreFirst": "27th",
                "winOppScoreFirst": "19th",
                "winLeadFirstPer": "20th",
                "winLeadSecondPer": "26th",
                "winOutshootOpp": "15th",
                "winOutshotByOpp": "15th",
                "faceOffsTaken": "24th",
                "faceOffsWon": "20th",
                "faceOffsLost": "12th",
                "faceOffWinPercentage": "17th",
                "savePctRank": "6th",
                "shootingPctRank": "19th"
              },
              "team": {
                "id": 16,
                "name": "Chicago Blackhawks",
                "link": "/api/v1/teams/16"
              }
            }
          ]
        }
      ],
      "roster": {
        "roster": [
          {
            "person": {
              "id": 8470607,
              "fullName": "Brent Seabrook",
              "link": "/api/v1/people/8470607",
              "firstName": "Brent",
              "lastName": "Seabrook",
              "primaryNumber": "7",
              "birthDate": "1985-04-20",
              "currentAge": 35,
              "birthCity": "Richmond",
              "birthStateProvince": "BC",
              "birthCountry": "CAN",
              "nationality": "CAN",
              "height": "6' 3\"",
              "weight": 220,
              "active": true,
              "alternateCaptain": true,
              "captain": false,
              "rookie": false,
              "shootsCatches": "R",
              "rosterStatus": "I",
              "currentTeam": {
                "id": 16,
                "name": "Chicago Blackhawks",
                "link": "/api/v1/teams/16"
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
                        "timeOnIce": "580:46",
                        "assists": 1,
                        "goals": 3,
                        "pim": 8,
                        "shots": 40,
                        "games": 32,
                        "hits": 52,
                        "powerPlayGoals": 1,
                        "powerPlayPoints": 1,
                        "powerPlayTimeOnIce": "22:58",
                        "evenTimeOnIce": "508:56",
                        "penaltyMinutes": "8",
                        "faceOffPct": 0,
                        "shotPct": 7.5,
                        "gameWinningGoals": 1,
                        "overTimeGoals": 0,
                        "shortHandedGoals": 0,
                        "shortHandedPoints": 0,
                        "shortHandedTimeOnIce": "48:52",
                        "blocked": 61,
                        "plusMinus": 1,
                        "points": 4,
                        "shifts": 765,
                        "timeOnIcePerGame": "18:08",
                        "evenTimeOnIcePerGame": "15:54",
                        "shortHandedTimeOnIcePerGame": "01:31",
                        "powerPlayTimeOnIcePerGame": "00:43"
                      }
                    }
                  ]
                }
              ]
            },
            "jerseyNumber": "7",
            "position": {
              "code": "D",
              "name": "Defenseman",
              "type": "Defenseman",
              "abbreviation": "D"
            }
          }
        ],
      },
      "shortName": "Chicago",
      "officialSiteUrl": "http://www.chicagoblackhawks.com/",
      "franchiseId": 11,
      "active": true
    },
    {
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
      "conference": {
        "id": 5,
        "name": "Western",
        "link": "/api/v1/conferences/5"
      },
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
      },
      "shortName": "San Jose",
      "officialSiteUrl": "http://www.sjsharks.com/",
      "franchiseId": 29,
      "active": true
    }
  ]
};

const Map<String, dynamic> gameFinalJson = {
  "copyright":
      "NHL and the NHL Shield are registered trademarks of the National Hockey League. NHL and NHL team marks are the property of the NHL and its teams. © NHL 2020. All Rights Reserved.",
  "gamePk": 2019021079,
  "link": "/api/v1/game/2019021079/feed/live",
  "metaData": {"wait": 10, "timeStamp": "20200315_185725"},
  "gameData": {
    "game": {"pk": 2019021079, "season": "20192020", "type": "R"},
    "datetime": {
      "dateTime": "2020-03-12T00:00:00Z",
      "endDateTime": "2020-03-12T02:31:02Z"
    },
    "status": {
      "abstractGameState": "Final",
      "codedGameState": "7",
      "detailedState": "Final",
      "statusCode": "7",
      "startTimeTBD": false
    },
    "teams": {
      "away": {
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
        "triCode": "SJS",
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
        "conference": {
          "id": 5,
          "name": "Western",
          "link": "/api/v1/conferences/5"
        },
        "franchise": {
          "franchiseId": 29,
          "teamName": "Sharks",
          "link": "/api/v1/franchises/29"
        },
        "shortName": "San Jose",
        "officialSiteUrl": "http://www.sjsharks.com/",
        "franchiseId": 29,
        "active": true
      },
      "home": {
        "id": 16,
        "name": "Chicago Blackhawks",
        "link": "/api/v1/teams/16",
        "venue": {
          "id": 5092,
          "name": "United Center",
          "link": "/api/v1/venues/5092",
          "city": "Chicago",
          "timeZone": {"id": "America/Chicago", "offset": -5, "tz": "CDT"}
        },
        "abbreviation": "CHI",
        "triCode": "CHI",
        "teamName": "Blackhawks",
        "locationName": "Chicago",
        "firstYearOfPlay": "1926",
        "division": {
          "id": 16,
          "name": "Central",
          "nameShort": "CEN",
          "link": "/api/v1/divisions/16",
          "abbreviation": "C"
        },
        "conference": {
          "id": 5,
          "name": "Western",
          "link": "/api/v1/conferences/5"
        },
        "franchise": {
          "franchiseId": 11,
          "teamName": "Blackhawks",
          "link": "/api/v1/franchises/11"
        },
        "shortName": "Chicago",
        "officialSiteUrl": "http://www.chicagoblackhawks.com/",
        "franchiseId": 11,
        "active": true
      }
    },
    "venue": {
      "id": 5092,
      "name": "United Center",
      "link": "/api/v1/venues/5092"
    }
  },
  "liveData": {
    "plays": {
      "allPlays": [
        {
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
        },
        {
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
        }
      ]
    },
    "linescore": {
      "currentPeriod": 3,
      "currentPeriodOrdinal": "3rd",
      "currentPeriodTimeRemaining": "Final",
      "periods": [
        {
          "periodType": "REGULAR",
          "startTime": "2020-03-12T00:10:45Z",
          "endTime": "2020-03-12T00:43:57Z",
          "num": 1,
          "ordinalNum": "1st",
          "home": {"goals": 0, "shotsOnGoal": 14, "rinkSide": "right"},
          "away": {"goals": 1, "shotsOnGoal": 15, "rinkSide": "left"}
        },
        {
          "periodType": "REGULAR",
          "startTime": "2020-03-12T01:02:21Z",
          "endTime": "2020-03-12T01:38:54Z",
          "num": 2,
          "ordinalNum": "2nd",
          "home": {"goals": 3, "shotsOnGoal": 17, "rinkSide": "left"},
          "away": {"goals": 0, "shotsOnGoal": 10, "rinkSide": "right"}
        },
        {
          "periodType": "REGULAR",
          "startTime": "2020-03-12T01:57:50Z",
          "endTime": "2020-03-12T02:30:59Z",
          "num": 3,
          "ordinalNum": "3rd",
          "home": {"goals": 3, "shotsOnGoal": 14, "rinkSide": "right"},
          "away": {"goals": 1, "shotsOnGoal": 11, "rinkSide": "left"}
        }
      ],
      "shootoutInfo": {
        "away": {"scores": 0, "attempts": 0},
        "home": {"scores": 0, "attempts": 0}
      },
      "teams": {
        "home": {
          "team": {
            "id": 16,
            "name": "Chicago Blackhawks",
            "link": "/api/v1/teams/16",
            "abbreviation": "CHI",
            "triCode": "CHI"
          },
          "goals": 6,
          "shotsOnGoal": 45,
          "goaliePulled": false,
          "numSkaters": 5,
          "powerPlay": false
        },
        "away": {
          "team": {
            "id": 28,
            "name": "San Jose Sharks",
            "link": "/api/v1/teams/28",
            "abbreviation": "SJS",
            "triCode": "SJS"
          },
          "goals": 2,
          "shotsOnGoal": 36,
          "goaliePulled": false,
          "numSkaters": 5,
          "powerPlay": false
        }
      },
      "powerPlayStrength": "Even",
      "hasShootout": false,
      "intermissionInfo": {
        "intermissionTimeRemaining": 0,
        "intermissionTimeElapsed": 0,
        "inIntermission": false
      },
      "powerPlayInfo": {
        "situationTimeRemaining": 0,
        "situationTimeElapsed": 10,
        "inSituation": false
      }
    },
    "boxscore": {
      "teams": {
        "away": {
          "team": {
            "id": 16,
            "name": "Chicago Blackhawks",
            "link": "/api/v1/teams/16",
            "abbreviation": "CHI",
            "triCode": "CHI"
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
            "ID435235": {
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
            },
            "ID1234567": {
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
            }
          },
          "goalies": [8477180],
          "skaters": [
            8479580,
            8475169,
            8476474,
            8466138,
            8475834,
            8475869,
            8478414,
            8480965,
            8471709,
            8481640,
            8481516,
            8480160,
            8478099,
            8477922,
            8481812,
            8475841,
            8479393,
            8470613,
            8479983,
            8474053,
            8480084,
            8478136,
            8480384
          ],
          "onIce": [8471709, 8475869, 8479580, 8480965, 8481640],
          "onIcePlus": [
            {"playerId": 8471709, "shiftDuration": 39, "stamina": 66},
            {"playerId": 8475869, "shiftDuration": 39, "stamina": 66},
            {"playerId": 8479580, "shiftDuration": 39, "stamina": 66},
            {"playerId": 8480965, "shiftDuration": 10, "stamina": 100},
            {"playerId": 8481640, "shiftDuration": 10, "stamina": 100}
          ],
          "scratches": [8479983, 8474053, 8480084, 8478136, 8480384],
          "penaltyBox": [],
          "coaches": [
            {
              "person": {
                "fullName": "Bob Boughner",
                "link": "/api/v1/people/null"
              },
              "position": {
                "code": "HC",
                "name": "Head Coach",
                "type": "Head Coach",
                "abbreviation": "Head Coach"
              }
            }
          ]
        },
        "home": {
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
          },
          "goalies": [8470645],
          "skaters": [
            8470281,
            8476473,
            8476874,
            8477330,
            8479337,
            8478440,
            8473604,
            8476438,
            8477846,
            8478146,
            8479542,
            8479523,
            8480144,
            8476886,
            8480814,
            8481523,
            8474141,
            8479423,
            8474250,
            8480871,
            8476372,
            8479465
          ],
          "onIce": [8470645, 8477846, 8478146, 8479523, 8480144, 8480814],
          "onIcePlus": [
            {"playerId": 8470645, "shiftDuration": 389, "stamina": 33},
            {"playerId": 8477846, "shiftDuration": 40, "stamina": 66},
            {"playerId": 8478146, "shiftDuration": 33, "stamina": 66},
            {"playerId": 8479523, "shiftDuration": 20, "stamina": 100},
            {"playerId": 8480144, "shiftDuration": 40, "stamina": 66},
            {"playerId": 8480814, "shiftDuration": 20, "stamina": 100}
          ],
          "scratches": [8474250, 8480871, 8476372, 8479465],
          "penaltyBox": [],
          "coaches": [
            {
              "person": {
                "fullName": "Jeremy Colliton",
                "link": "/api/v1/people/null"
              },
              "position": {
                "code": "HC",
                "name": "Head Coach",
                "type": "Head Coach",
                "abbreviation": "Head Coach"
              }
            }
          ]
        }
      },
      "officials": [
        {
          "official": {
            "id": 2462,
            "fullName": "Francois StLaurent",
            "link": "/api/v1/people/2462"
          },
          "officialType": "Referee"
        },
        {
          "official": {
            "id": 6818,
            "fullName": "Jake Brenk",
            "link": "/api/v1/people/6818"
          },
          "officialType": "Referee"
        },
        {
          "official": {
            "id": 2301,
            "fullName": "Darren Gibbs",
            "link": "/api/v1/people/2301"
          },
          "officialType": "Linesman"
        },
        {
          "official": {
            "id": 7672,
            "fullName": "Travis Toomey",
            "link": "/api/v1/people/7672"
          },
          "officialType": "Linesman"
        }
      ]
    },
    "decisions": {
      "winner": {
        "id": 8470645,
        "fullName": "Corey Crawford",
        "link": "/api/v1/people/8470645"
      },
      "loser": {
        "id": 8477180,
        "fullName": "Aaron Dell",
        "link": "/api/v1/people/8477180"
      },
      "firstStar": {
        "id": 8479337,
        "fullName": "Alex DeBrincat",
        "link": "/api/v1/people/8479337"
      },
      "secondStar": {
        "id": 8474141,
        "fullName": "Patrick Kane",
        "link": "/api/v1/people/8474141"
      },
      "thirdStar": {
        "id": 8470281,
        "fullName": "Duncan Keith",
        "link": "/api/v1/people/8470281"
      }
    }
  }
};

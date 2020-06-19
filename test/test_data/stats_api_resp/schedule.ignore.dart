const String scheduleEmptyResp = '''
{
"copyright": "NHL and the NHL Shield are registered trademarks of the National Hockey League. NHL and NHL team marks are the property of the NHL and its teams. © NHL 2020. All Rights Reserved.",
"totalItems": 0,
"totalEvents": 0,
"totalGames": 0,
"totalMatches": 0,
"wait": 10,
"dates": []
}
''';

const String schedulePreviewResp = '''
{
  "copyright" : "NHL and the NHL Shield are registered trademarks of the National Hockey League. NHL and NHL team marks are the property of the NHL and its teams. © NHL 2018. All Rights Reserved.",
  "totalItems" : 1,
  "totalEvents" : 0,
  "totalGames" : 1,
  "totalMatches" : 0,
  "wait" : 10,
  "dates" : [ {
    "date" : "2018-01-09",
    "totalItems" : 1,
    "totalEvents" : 0,
    "totalGames" : 1,
    "totalMatches" : 0,
    "games" : [ {
      "gamePk" : 2017020659,
      "link" : "/api/v1/game/2017020659/feed/live",
      "gameType" : "R",
      "season" : "20172018",
      "gameDate" : "2018-01-10T01:00:00Z",
      "status" : {
        "abstractGameState" : "Preview",
        "codedGameState" : "1",
        "detailedState" : "Scheduled",
        "statusCode" : "1",
        "startTimeTBD" : false
      },
      "teams" : {
        "away" : {
          "leagueRecord" : {
            "wins" : 21,
            "losses" : 16,
            "ot" : 4,
            "type" : "league"
          },
          "score" : 0,
          "team" : {
            "id" : 20,
            "name" : "Calgary Flames",
            "link" : "/api/v1/teams/20"
          }
        },
        "home" : {
          "leagueRecord" : {
            "wins" : 22,
            "losses" : 17,
            "ot" : 3,
            "type" : "league"
          },
          "score" : 0,
          "team" : {
            "id" : 30,
            "name" : "Minnesota Wild",
            "link" : "/api/v1/teams/30"
          }
        }
      },
      "venue" : {
        "name" : "Xcel Energy Center",
        "link" : "/api/v1/venues/null"
      },
      "content" : {
        "link" : "/api/v1/game/2017020659/content"
      }
    } ],
    "events" : [ ],
    "matches" : [ ]
  } ]
}

''';

const String scheduleFinalResp = '''
{
  "copyright" : "NHL and the NHL Shield are registered trademarks of the National Hockey League. NHL and NHL team marks are the property of the NHL and its teams. © NHL 2020. All Rights Reserved.",
  "totalItems" : 5,
  "totalEvents" : 0,
  "totalGames" : 5,
  "totalMatches" : 0,
  "wait" : 10,
  "dates" : [ {
    "date" : "2020-03-11",
    "totalItems" : 5,
    "totalEvents" : 0,
    "totalGames" : 5,
    "totalMatches" : 0,
    "games" : [ {
      "gamePk" : 2019021079,
      "link" : "/api/v1/game/2019021079/feed/live",
      "gameType" : "R",
      "season" : "20192020",
      "gameDate" : "2020-03-12T00:00:00Z",
      "status" : {
        "abstractGameState" : "Final",
        "codedGameState" : "7",
        "detailedState" : "Final",
        "statusCode" : "7",
        "startTimeTBD" : false
      },
      "teams" : {
        "away" : {
          "leagueRecord" : {
            "wins" : 29,
            "losses" : 36,
            "ot" : 5,
            "type" : "league"
          },
          "score" : 2,
          "team" : {
            "id" : 28,
            "name" : "San Jose Sharks",
            "link" : "/api/v1/teams/28",
            "venue" : {
              "name" : "SAP Center at San Jose",
              "link" : "/api/v1/venues/null",
              "city" : "San Jose",
              "timeZone" : {
                "id" : "America/Los_Angeles",
                "offset" : -7,
                "tz" : "PDT"
              }
            },
            "abbreviation" : "SJS",
            "teamName" : "Sharks",
            "locationName" : "San Jose",
            "firstYearOfPlay" : "1991",
            "division" : {
              "id" : 15,
              "name" : "Pacific",
              "nameShort" : "PAC",
              "link" : "/api/v1/divisions/15",
              "abbreviation" : "P"
            },
            "conference" : {
              "id" : 5,
              "name" : "Western",
              "link" : "/api/v1/conferences/5"
            },
            "franchise" : {
              "franchiseId" : 29,
              "teamName" : "Sharks",
              "link" : "/api/v1/franchises/29"
            },
            "shortName" : "San Jose",
            "officialSiteUrl" : "http://www.sjsharks.com/",
            "franchiseId" : 29,
            "active" : true
          }
        },
        "home" : {
          "leagueRecord" : {
            "wins" : 32,
            "losses" : 30,
            "ot" : 8,
            "type" : "league"
          },
          "score" : 6,
          "team" : {
            "id" : 16,
            "name" : "Chicago Blackhawks",
            "link" : "/api/v1/teams/16",
            "venue" : {
              "id" : 5092,
              "name" : "United Center",
              "link" : "/api/v1/venues/5092",
              "city" : "Chicago",
              "timeZone" : {
                "id" : "America/Chicago",
                "offset" : -5,
                "tz" : "CDT"
              }
            },
            "abbreviation" : "CHI",
            "teamName" : "Blackhawks",
            "locationName" : "Chicago",
            "firstYearOfPlay" : "1926",
            "division" : {
              "id" : 16,
              "name" : "Central",
              "nameShort" : "CEN",
              "link" : "/api/v1/divisions/16",
              "abbreviation" : "C"
            },
            "conference" : {
              "id" : 5,
              "name" : "Western",
              "link" : "/api/v1/conferences/5"
            },
            "franchise" : {
              "franchiseId" : 11,
              "teamName" : "Blackhawks",
              "link" : "/api/v1/franchises/11"
            },
            "shortName" : "Chicago",
            "officialSiteUrl" : "http://www.chicagoblackhawks.com/",
            "franchiseId" : 11,
            "active" : true
          }
        }
      },
      "linescore" : {
        "currentPeriod" : 3,
        "currentPeriodOrdinal" : "3rd",
        "currentPeriodTimeRemaining" : "Final",
        "periods" : [ {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T00:10:45Z",
          "endTime" : "2020-03-12T00:43:57Z",
          "num" : 1,
          "ordinalNum" : "1st",
          "home" : {
            "goals" : 0,
            "shotsOnGoal" : 14,
            "rinkSide" : "right"
          },
          "away" : {
            "goals" : 1,
            "shotsOnGoal" : 15,
            "rinkSide" : "left"
          }
        }, {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T01:02:21Z",
          "endTime" : "2020-03-12T01:38:54Z",
          "num" : 2,
          "ordinalNum" : "2nd",
          "home" : {
            "goals" : 3,
            "shotsOnGoal" : 17,
            "rinkSide" : "left"
          },
          "away" : {
            "goals" : 0,
            "shotsOnGoal" : 10,
            "rinkSide" : "right"
          }
        }, {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T01:57:50Z",
          "endTime" : "2020-03-12T02:30:59Z",
          "num" : 3,
          "ordinalNum" : "3rd",
          "home" : {
            "goals" : 3,
            "shotsOnGoal" : 14,
            "rinkSide" : "right"
          },
          "away" : {
            "goals" : 1,
            "shotsOnGoal" : 11,
            "rinkSide" : "left"
          }
        } ],
        "shootoutInfo" : {
          "away" : {
            "scores" : 0,
            "attempts" : 0
          },
          "home" : {
            "scores" : 0,
            "attempts" : 0
          }
        },
        "teams" : {
          "home" : {
            "team" : {
              "id" : 16,
              "name" : "Chicago Blackhawks",
              "link" : "/api/v1/teams/16"
            },
            "goals" : 6,
            "shotsOnGoal" : 45,
            "goaliePulled" : false,
            "numSkaters" : 5,
            "powerPlay" : false
          },
          "away" : {
            "team" : {
              "id" : 28,
              "name" : "San Jose Sharks",
              "link" : "/api/v1/teams/28"
            },
            "goals" : 2,
            "shotsOnGoal" : 36,
            "goaliePulled" : false,
            "numSkaters" : 5,
            "powerPlay" : false
          }
        },
        "powerPlayStrength" : "Even",
        "hasShootout" : false,
        "intermissionInfo" : {
          "intermissionTimeRemaining" : 0,
          "intermissionTimeElapsed" : 0,
          "inIntermission" : false
        },
        "powerPlayInfo" : {
          "situationTimeRemaining" : 0,
          "situationTimeElapsed" : 10,
          "inSituation" : false
        }
      },
      "decisions" : {
        "winner" : {
          "id" : 8470645,
          "fullName" : "Corey Crawford",
          "link" : "/api/v1/people/8470645"
        },
        "loser" : {
          "id" : 8477180,
          "fullName" : "Aaron Dell",
          "link" : "/api/v1/people/8477180"
        },
        "firstStar" : {
          "id" : 8479337,
          "fullName" : "Alex DeBrincat",
          "link" : "/api/v1/people/8479337"
        },
        "secondStar" : {
          "id" : 8474141,
          "fullName" : "Patrick Kane",
          "link" : "/api/v1/people/8474141"
        },
        "thirdStar" : {
          "id" : 8470281,
          "fullName" : "Duncan Keith",
          "link" : "/api/v1/people/8470281"
        }
      },
      "scoringPlays" : [ {
        "players" : [ {
          "player" : {
            "id" : 8475169,
            "fullName" : "Evander Kane",
            "link" : "/api/v1/people/8475169"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 26
        }, {
          "player" : {
            "id" : 8466138,
            "fullName" : "Joe Thornton",
            "link" : "/api/v1/people/8466138"
          },
          "playerType" : "Assist",
          "seasonTotal" : 24
        }, {
          "player" : {
            "id" : 8478414,
            "fullName" : "Timo Meier",
            "link" : "/api/v1/people/8478414"
          },
          "playerType" : "Assist",
          "seasonTotal" : 27
        }, {
          "player" : {
            "id" : 8470645,
            "fullName" : "Corey Crawford",
            "link" : "/api/v1/people/8470645"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "CHI43",
          "eventTypeId" : "GOAL",
          "description" : "Evander Kane (26) Tip-In, assists: Joe Thornton (24), Timo Meier (27)",
          "secondaryType" : "Tip-In",
          "strength" : {
            "code" : "PPG",
            "name" : "Power Play"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 64,
          "eventId" : 43,
          "period" : 1,
          "periodType" : "REGULAR",
          "ordinalNum" : "1st",
          "periodTime" : "10:49",
          "periodTimeRemaining" : "09:11",
          "dateTime" : "2020-03-12T00:27:41Z",
          "goals" : {
            "away" : 1,
            "home" : 0
          }
        },
        "coordinates" : {
          "x" : 74.0,
          "y" : -1.0
        },
        "team" : {
          "id" : 28,
          "name" : "San Jose Sharks",
          "link" : "/api/v1/teams/28"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8470281,
            "fullName" : "Duncan Keith",
            "link" : "/api/v1/people/8470281"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 3
        }, {
          "player" : {
            "id" : 8473604,
            "fullName" : "Jonathan Toews",
            "link" : "/api/v1/people/8473604"
          },
          "playerType" : "Assist",
          "seasonTotal" : 41
        }, {
          "player" : {
            "id" : 8479337,
            "fullName" : "Alex DeBrincat",
            "link" : "/api/v1/people/8479337"
          },
          "playerType" : "Assist",
          "seasonTotal" : 25
        }, {
          "player" : {
            "id" : 8477180,
            "fullName" : "Aaron Dell",
            "link" : "/api/v1/people/8477180"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "CHI227",
          "eventTypeId" : "GOAL",
          "description" : "Duncan Keith (3) Wrist Shot, assists: Jonathan Toews (41), Alex DeBrincat (25)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "PPG",
            "name" : "Power Play"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 138,
          "eventId" : 227,
          "period" : 2,
          "periodType" : "REGULAR",
          "ordinalNum" : "2nd",
          "periodTime" : "04:33",
          "periodTimeRemaining" : "15:27",
          "dateTime" : "2020-03-12T01:08:45Z",
          "goals" : {
            "away" : 1,
            "home" : 1
          }
        },
        "coordinates" : {
          "x" : 38.0,
          "y" : 13.0
        },
        "team" : {
          "id" : 16,
          "name" : "Chicago Blackhawks",
          "link" : "/api/v1/teams/16"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8474141,
            "fullName" : "Patrick Kane",
            "link" : "/api/v1/people/8474141"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 32
        }, {
          "player" : {
            "id" : 8479337,
            "fullName" : "Alex DeBrincat",
            "link" : "/api/v1/people/8479337"
          },
          "playerType" : "Assist",
          "seasonTotal" : 26
        }, {
          "player" : {
            "id" : 8470281,
            "fullName" : "Duncan Keith",
            "link" : "/api/v1/people/8470281"
          },
          "playerType" : "Assist",
          "seasonTotal" : 24
        }, {
          "player" : {
            "id" : 8477180,
            "fullName" : "Aaron Dell",
            "link" : "/api/v1/people/8477180"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "CHI458",
          "eventTypeId" : "GOAL",
          "description" : "Patrick Kane (32) Tip-In, assists: Alex DeBrincat (26), Duncan Keith (24)",
          "secondaryType" : "Tip-In",
          "strength" : {
            "code" : "PPG",
            "name" : "Power Play"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 205,
          "eventId" : 458,
          "period" : 2,
          "periodType" : "REGULAR",
          "ordinalNum" : "2nd",
          "periodTime" : "16:33",
          "periodTimeRemaining" : "03:27",
          "dateTime" : "2020-03-12T01:31:48Z",
          "goals" : {
            "away" : 1,
            "home" : 2
          }
        },
        "coordinates" : {
          "x" : 82.0,
          "y" : 4.0
        },
        "team" : {
          "id" : 16,
          "name" : "Chicago Blackhawks",
          "link" : "/api/v1/teams/16"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8476438,
            "fullName" : "Brandon Saad",
            "link" : "/api/v1/people/8476438"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 21
        }, {
          "player" : {
            "id" : 8479337,
            "fullName" : "Alex DeBrincat",
            "link" : "/api/v1/people/8479337"
          },
          "playerType" : "Assist",
          "seasonTotal" : 27
        }, {
          "player" : {
            "id" : 8473604,
            "fullName" : "Jonathan Toews",
            "link" : "/api/v1/people/8473604"
          },
          "playerType" : "Assist",
          "seasonTotal" : 42
        }, {
          "player" : {
            "id" : 8477180,
            "fullName" : "Aaron Dell",
            "link" : "/api/v1/people/8477180"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "CHI461",
          "eventTypeId" : "GOAL",
          "description" : "Brandon Saad (21) Wrist Shot, assists: Alex DeBrincat (27), Jonathan Toews (42)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : true,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 211,
          "eventId" : 461,
          "period" : 2,
          "periodType" : "REGULAR",
          "ordinalNum" : "2nd",
          "periodTime" : "17:58",
          "periodTimeRemaining" : "02:02",
          "dateTime" : "2020-03-12T01:34:16Z",
          "goals" : {
            "away" : 1,
            "home" : 3
          }
        },
        "coordinates" : {
          "x" : 72.0,
          "y" : 3.0
        },
        "team" : {
          "id" : 16,
          "name" : "Chicago Blackhawks",
          "link" : "/api/v1/teams/16"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8479423,
            "fullName" : "Alex Nylander",
            "link" : "/api/v1/people/8479423"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 10
        }, {
          "player" : {
            "id" : 8478440,
            "fullName" : "Dylan Strome",
            "link" : "/api/v1/people/8478440"
          },
          "playerType" : "Assist",
          "seasonTotal" : 26
        }, {
          "player" : {
            "id" : 8477180,
            "fullName" : "Aaron Dell",
            "link" : "/api/v1/people/8477180"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "CHI483",
          "eventTypeId" : "GOAL",
          "description" : "Alex Nylander (10) Slap Shot, assists: Dylan Strome (26)",
          "secondaryType" : "Slap Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 246,
          "eventId" : 483,
          "period" : 3,
          "periodType" : "REGULAR",
          "ordinalNum" : "3rd",
          "periodTime" : "01:31",
          "periodTimeRemaining" : "18:29",
          "dateTime" : "2020-03-12T01:59:56Z",
          "goals" : {
            "away" : 1,
            "home" : 4
          }
        },
        "coordinates" : {
          "x" : -63.0,
          "y" : 1.0
        },
        "team" : {
          "id" : 16,
          "name" : "Chicago Blackhawks",
          "link" : "/api/v1/teams/16"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8478414,
            "fullName" : "Timo Meier",
            "link" : "/api/v1/people/8478414"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 22
        }, {
          "player" : {
            "id" : 8475169,
            "fullName" : "Evander Kane",
            "link" : "/api/v1/people/8475169"
          },
          "playerType" : "Assist",
          "seasonTotal" : 21
        }, {
          "player" : {
            "id" : 8470645,
            "fullName" : "Corey Crawford",
            "link" : "/api/v1/people/8470645"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "CHI495",
          "eventTypeId" : "GOAL",
          "description" : "Timo Meier (22) Wrist Shot, assists: Evander Kane (21)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 272,
          "eventId" : 495,
          "period" : 3,
          "periodType" : "REGULAR",
          "ordinalNum" : "3rd",
          "periodTime" : "06:39",
          "periodTimeRemaining" : "13:21",
          "dateTime" : "2020-03-12T02:09:17Z",
          "goals" : {
            "away" : 2,
            "home" : 4
          }
        },
        "coordinates" : {
          "x" : 64.0,
          "y" : 12.0
        },
        "team" : {
          "id" : 28,
          "name" : "San Jose Sharks",
          "link" : "/api/v1/teams/28"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8474141,
            "fullName" : "Patrick Kane",
            "link" : "/api/v1/people/8474141"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 33
        }, {
          "player" : {
            "id" : 8476886,
            "fullName" : "Slater Koekkoek",
            "link" : "/api/v1/people/8476886"
          },
          "playerType" : "Assist",
          "seasonTotal" : 9
        }, {
          "player" : {
            "id" : 8479423,
            "fullName" : "Alex Nylander",
            "link" : "/api/v1/people/8479423"
          },
          "playerType" : "Assist",
          "seasonTotal" : 16
        }, {
          "player" : {
            "id" : 8477180,
            "fullName" : "Aaron Dell",
            "link" : "/api/v1/people/8477180"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "CHI665",
          "eventTypeId" : "GOAL",
          "description" : "Patrick Kane (33) Wrist Shot, assists: Slater Koekkoek (9), Alex Nylander (16)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 310,
          "eventId" : 665,
          "period" : 3,
          "periodType" : "REGULAR",
          "ordinalNum" : "3rd",
          "periodTime" : "16:19",
          "periodTimeRemaining" : "03:41",
          "dateTime" : "2020-03-12T02:25:21Z",
          "goals" : {
            "away" : 2,
            "home" : 5
          }
        },
        "coordinates" : {
          "x" : -82.0,
          "y" : 4.0
        },
        "team" : {
          "id" : 16,
          "name" : "Chicago Blackhawks",
          "link" : "/api/v1/teams/16"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8477330,
            "fullName" : "Dominik Kubalik",
            "link" : "/api/v1/people/8477330"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 30
        }, {
          "player" : {
            "id" : 8481523,
            "fullName" : "Kirby Dach",
            "link" : "/api/v1/people/8481523"
          },
          "playerType" : "Assist",
          "seasonTotal" : 15
        }, {
          "player" : {
            "id" : 8477180,
            "fullName" : "Aaron Dell",
            "link" : "/api/v1/people/8477180"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "CHI669",
          "eventTypeId" : "GOAL",
          "description" : "Dominik Kubalik (30) Slap Shot, assists: Kirby Dach (15)",
          "secondaryType" : "Slap Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 319,
          "eventId" : 669,
          "period" : 3,
          "periodType" : "REGULAR",
          "ordinalNum" : "3rd",
          "periodTime" : "18:03",
          "periodTimeRemaining" : "01:57",
          "dateTime" : "2020-03-12T02:28:13Z",
          "goals" : {
            "away" : 2,
            "home" : 6
          }
        },
        "coordinates" : {
          "x" : -61.0,
          "y" : -11.0
        },
        "team" : {
          "id" : 16,
          "name" : "Chicago Blackhawks",
          "link" : "/api/v1/teams/16"
        }
      } ],
      "venue" : {
        "id" : 5092,
        "name" : "United Center",
        "link" : "/api/v1/venues/5092"
      },
      "tickets" : [ {
        "ticketType" : "clubWebSchedule",
        "ticketLink" : "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_TEAM_CHI_SCHEDULE_PAGE_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_CHI&utm_content=SCHEDULE_PAGE_GAME37&CAMEFROM=CFC_BLACKHAWKS_WEB_SCHEDULE_EVENTBUYTIX"
      }, {
        "ticketType" : "clubWebScheduleBuySell",
        "ticketLink" : "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_TEAM_CHI_SCHEDULE_BUYSELL_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_CHI&utm_content=SCHEDULE_BUYSELL_GAME37"
      }, {
        "ticketType" : "leagueWebScoresPage",
        "ticketLink" : "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_SCORES_PAGE_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=SCORES_PAGE_GAME37"
      }, {
        "ticketType" : "leagueWebGamecenterPreview",
        "ticketLink" : "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_GAMECENTER_PREVIEW_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=GAMECENTER_PREVIEW_GAME37"
      }, {
        "ticketType" : "clubWebMIG",
        "ticketLink" : "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_TEAM_CHI_WEB_MIG_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_CHI&utm_content=WEB_MIG_GAME37"
      }, {
        "ticketType" : "leagueWebHorizontalScoreboard",
        "ticketLink" : "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_HORIZONTAL_SCOREBOARD_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=HORIZONTAL_SCOREBOARD_GAME37"
      }, {
        "ticketType" : "leagueWebScheduleBuySell",
        "ticketLink" : "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_SCHEDULE_BUYSELL_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=SCHEDULE_BUYSELL_GAME37"
      }, {
        "ticketType" : "leagueAppScoreTab",
        "ticketLink" : "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_SCORE_TAB_APP_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=SCORE_TAB_APP_GAME37"
      }, {
        "ticketType" : "leagueWebSchedule",
        "ticketLink" : "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_SCHEDULE_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=SCHEDULE_GAME37"
      }, {
        "ticketType" : "clubWebHorizontalScoreboard",
        "ticketLink" : "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_TEAM_CHI_HORIZONTAL_SCOREBOARD_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_CHI&utm_content=HORIZONTAL_SCOREBOARD_GAME37"
      }, {
        "ticketType" : "clubAppScoreTile",
        "ticketLink" : "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_TEAM_CHI_SCORE_TAB_APP_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_CHI&utm_content=SCORE_TAB_APP_GAME37"
      }, {
        "ticketType" : "leagueAppGamecenterPreview",
        "ticketLink" : "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_GAMECENTER_PREVIEW_APP_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=GAMECENTER_PREVIEW_APP_GAME37"
      }, {
        "ticketType" : "googleOneBox",
        "ticketLink" : "https://www.ticketmaster.com/event/040056D9B74D4723?wt.mc_id=NHL_LEAGUE_CHI_GOOGLE_ONE_BOX_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_CHI&utm_content=GOOGLE_ONE_BOX_GAME37"
      } ],
      "content" : {
        "link" : "/api/v1/game/2019021079/content",
        "editorial" : { },
        "media" : {
          "epg" : [ {
            "title" : "NHLTV",
            "platform" : "web",
            "items" : [ {
              "guid" : "76271f9e-dbef-424f-af66-da940a9304bf",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71314003",
              "mediaFeedType" : "NATIONAL",
              "callLetters" : "NBCSN",
              "eventId" : "221-2004553",
              "language" : "eng",
              "freeGame" : true,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "guid" : "ad6589f4-dd2c-4dc2-8757-828eef349a4b",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71314703",
              "mediaFeedType" : "COMPOSITE",
              "callLetters" : "",
              "eventId" : "221-2004553",
              "language" : "eng",
              "freeGame" : true,
              "feedName" : "Multi-Cam 1",
              "gamePlus" : false
            } ]
          }, {
            "title" : "Audio",
            "items" : [ {
              "mediaState" : "MEDIA_DONE",
              "mediaPlaybackId" : "71314303",
              "mediaFeedType" : "HOME",
              "callLetters" : "WGN",
              "eventId" : "221-2004553",
              "language" : "eng",
              "freeGame" : false,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "mediaState" : "MEDIA_DONE",
              "mediaPlaybackId" : "71314403",
              "mediaFeedType" : "AWAY",
              "callLetters" : "KFOX",
              "eventId" : "221-2004553",
              "language" : "eng",
              "freeGame" : false,
              "feedName" : "",
              "gamePlus" : false
            } ]
          }, {
            "title" : "Extended Highlights",
            "topicList" : "313536042",
            "items" : [ {
              "type" : "video",
              "id" : "5356805",
              "date" : "2020-03-11T20:00:00-0400",
              "title" : "SJS @ CHI",
              "blurb" : "Condensed Game: Sharks @ Blackhawks",
              "description" : "Extended highlights of the San Jose Sharks at the Chicago Blackhawks",
              "duration" : "08:59",
              "authFlow" : false,
              "mediaPlaybackId" : "5356805",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "28",
                "displayName" : "28"
              }, {
                "type" : "content",
                "value" : "extendedHighlights",
                "displayName" : "Condensed Game"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              }, {
                "type" : "teamId",
                "value" : "16",
                "displayName" : "16"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140018/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140018/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140018/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140018/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140018/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140018/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140018/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140018/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140018/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140018/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140018/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140018/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140018/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140018/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140018/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140018/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140018/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140018/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140018/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140018/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140018/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140018/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140018/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140018/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140018/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140018/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140018/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140018/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140018/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140018/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/09d19818-804b-4023-abe2-83d8997303c0.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/6fb791ef-5d32-45f7-913d-19a1d6caf8e8.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/c51d0ec5-b528-4943-9964-c529d2d0497c.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/b3084343-f56e-4bb9-8c2b-69578ef57207.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterWiredWeb.m3u8"
              } ]
            } ]
          }, {
            "title" : "Recap",
            "topicList" : "313536042",
            "items" : [ {
              "type" : "video",
              "id" : "5356806",
              "date" : "2020-03-11T20:00:00-0400",
              "title" : "Recap: SJS 2, CHI 6",
              "blurb" : "Kane's two goals lead Blackhawks past Sharks",
              "description" : "Patrick Kane scored two goals and Alex DeBrincat collected two assists, leading the Blackhawks to a 6-2 victory against the Sharks at home",
              "duration" : "05:02",
              "authFlow" : false,
              "mediaPlaybackId" : "5356806",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "gameRecap",
                "displayName" : "game recap"
              }, {
                "type" : "content",
                "value" : "teamRecap",
                "displayName" : "Team Recap"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              }, {
                "type" : "teamId",
                "value" : "16",
                "displayName" : "16"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139238/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139238/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139238/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139238/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139238/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139238/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139238/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139238/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139238/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139238/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139238/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139238/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139238/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139238/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139238/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139238/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139238/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139238/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139238/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139238/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139238/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139238/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139238/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139238/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139238/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139238/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139238/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139238/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139238/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139238/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/85ad83a0-434c-4bbc-ad6e-cc579d21afa8.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/97c29acb-014b-485e-b562-f5eb17e1def2.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/d43da7bf-9f68-4469-9337-5d61504b7dd5.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/a2442933-e96c-4216-acc2-13d840ede0be.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterWiredWeb.m3u8"
              } ]
            } ]
          }, {
            "title" : "Power Play",
            "items" : [ ]
          } ]
        },
        "highlights" : {
          "scoreboard" : {
            "title" : "Highlights",
            "topicList" : "313536042",
            "items" : [ {
              "type" : "video",
              "id" : "5356154",
              "date" : "2020-03-11T20:00:00-0400",
              "title" : "Saad goes five-hole in front",
              "blurb" : "SJS@CHI: Saad slips DeBrincat's pass past Dell",
              "description" : "Brandon Saad receives a pass from Alex DeBrincat, dekes to his forehand and slips a shot through Aaron Dell's five-hole for a 3-1 lead",
              "duration" : "00:44",
              "authFlow" : false,
              "mediaPlaybackId" : "5356154",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "statsEventId",
                "value" : "461",
                "displayName" : "461"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              }, {
                "type" : "teamId",
                "value" : "16",
                "displayName" : "16"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136044/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136044/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136044/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136044/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/cd4b6236-552d-4472-a38d-4cea5dd91772.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/f583981b-7ffe-45c5-9d01-6e69ef9711ab.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/77dbcc48-e5ca-4a35-83fe-64fd85a13b8c.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/c74beed0-d9ca-480b-a9ec-6158ba091d9b.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356393",
              "date" : "2020-03-11T20:00:00-0400",
              "title" : "Nylander's quick one-timer",
              "blurb" : "SJS@CHI: Nylander hammers Strome's feed past Dell",
              "description" : "Dylan Strome sends a pass to Alex Nylander, who quickly blasts a one-timer past Aaron Dell, extending the Blackhawks' lead to 4-1 in the 3rd",
              "duration" : "00:40",
              "authFlow" : false,
              "mediaPlaybackId" : "5356393",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "statsEventId",
                "value" : "483",
                "displayName" : "483"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              }, {
                "type" : "teamId",
                "value" : "16",
                "displayName" : "16"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316135616/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316135616/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316135616/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316135616/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/c22ab9eb-292e-4923-a709-0f6bb596b36a.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/d081a99c-45f6-40c2-a8df-1b4daabcfa06.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/4dedd87d-b6f5-4944-981c-18dd9d1d3943.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/12d370f5-4fa0-4d7b-ad70-865db594f823.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5355504",
              "date" : "2020-03-11T20:00:00-0400",
              "title" : "Kane opens scoring with PPG",
              "blurb" : "SJS@CHI: Kane nets redirection from slot for PPG",
              "description" : "Joe Thornton sends a pass to Evander Kane, who deflects the puck past Corey Crawford on the power play to give the Sharks a 1-0 lead in the 1st",
              "duration" : "00:48",
              "authFlow" : false,
              "mediaPlaybackId" : "5355504",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "statsEventId",
                "value" : "43",
                "displayName" : "43"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "28",
                "displayName" : "28"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316134926/568x320/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316134926/568x320/cut.jpeg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316134926/320x180/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316134926/124x70/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/908b987c-df59-4f89-a8a7-72742bd74c2b.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/2e122ff1-39b5-413c-98b8-1abce4ad6202.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/a672d40a-211a-4fe5-9d08-ec474ceb02c7.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/a7cf8598-3112-4697-8935-cc098326ed7c.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356140",
              "date" : "2020-03-11T20:00:00-0400",
              "title" : "Kane, DeBrincat connect for PPG",
              "blurb" : "SJS@CHI: Kane taps DeBrincat's nice feed home for PPG",
              "description" : "Alex DeBrincat sends a pretty backdoor pass to Patrick Kane, who taps the puck past Aaron Dell for a power-play goal and a 2-1 lead in the 2nd",
              "duration" : "00:51",
              "authFlow" : false,
              "mediaPlaybackId" : "5356140",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "statsEventId",
                "value" : "458",
                "displayName" : "458"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              }, {
                "type" : "teamId",
                "value" : "16",
                "displayName" : "16"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136260/568x320/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136260/568x320/cut.jpeg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136260/320x180/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136260/124x70/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/a6b5b899-57ec-491f-ac7f-5270df77d7bd.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/d9f0768d-8893-4a0a-b3a4-0938b5190a87.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/e94caf54-9622-4a42-8924-384a5dc79f60.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/28f0831d-e5cd-4f78-9f8d-4a62f3d2f275.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356647",
              "date" : "2020-03-11T20:00:00-0400",
              "title" : "Kane's second goal of the game",
              "blurb" : "SJS@CHI: Kane nets own rebound for second goal",
              "description" : "Patrick Kane is denied by Aaron Dell, but he finds his own rebound in the crease and taps it into the back of the net for a 5-2 lead in the 3rd",
              "duration" : "00:49",
              "authFlow" : false,
              "mediaPlaybackId" : "5356647",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "statsEventId",
                "value" : "665",
                "displayName" : "665"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              }, {
                "type" : "teamId",
                "value" : "16",
                "displayName" : "16"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138472/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138472/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138472/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138472/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/e608ed07-ab4d-48c8-90ea-4ff3a79ecf0d.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/5c5a46ab-170a-49f7-9bc3-431ac4445ed7.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/21c762a5-07eb-4644-a35d-e0d6cd2e4a70.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/7ae919a8-ddfa-42d0-9947-fbb56d1500d4.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5355964",
              "date" : "2020-03-11T20:00:00-0400",
              "title" : "Keith nets PPG through traffic",
              "blurb" : "SJS@CHI: Keith rips shot through screen for PPG",
              "description" : "Duncan Keith receives a pass, walks across the blue line and fires a wrist shot through a screen and past Aaron Dell for a power-play goal",
              "duration" : "00:47",
              "authFlow" : false,
              "mediaPlaybackId" : "5355964",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "statsEventId",
                "value" : "227",
                "displayName" : "227"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              }, {
                "type" : "teamId",
                "value" : "16",
                "displayName" : "16"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136042/568x320/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136042/568x320/cut.jpeg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136042/320x180/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136042/124x70/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/606db2d3-a9df-4e64-a054-6095f8fe561f.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/deb77b93-a5b9-4ea8-adec-330528201204.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/0a5594dd-2252-4df0-aca4-27455bcefcb1.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/3ce06651-4e0e-4953-b949-82d1cdb0cdb8.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356441",
              "date" : "2020-03-11T20:00:00-0400",
              "title" : "Meier scores off the draw",
              "blurb" : "SJS@CHI: Meier roofs shot past Crawford off the draw",
              "description" : "Timo Meier picks up the puck in the face-off circle and lifts a shot over Corey Crawford's glove, cutting the Sharks' deficit to 4-2 in the 3rd",
              "duration" : "00:29",
              "authFlow" : false,
              "mediaPlaybackId" : "5356441",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "28",
                "displayName" : "28"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "statsEventId",
                "value" : "495",
                "displayName" : "495"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136932/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136932/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136932/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136932/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/17253577-c40f-47bd-a823-b45753da0429.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/554b2086-f42d-4c14-8948-f2838bc8ff54.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/162d00e0-032b-4874-8fc2-f656d1a54b96.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/f3331c47-7b41-4ac1-9942-0ebbae91087f.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356785",
              "date" : "2020-03-11T20:00:00-0400",
              "title" : "Kubalik's blistering one-timer",
              "blurb" : "SJS@CHI: Kubalik goes top shelf off Dach's slick feed",
              "description" : "Kirby Dach drops a pass to Dominik Kubalik, who hammers a one-timer top shelf over Aaron Dell's glove for a 6-2 lead in the 3rd period",
              "duration" : "00:47",
              "authFlow" : false,
              "mediaPlaybackId" : "5356785",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "statsEventId",
                "value" : "669",
                "displayName" : "669"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              }, {
                "type" : "teamId",
                "value" : "16",
                "displayName" : "16"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138532/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138532/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138532/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138532/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/cb1417c3-bd68-4647-ae78-e182698c5faf.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/05d66888-d551-4479-a935-a9e5fce9a61d.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/44539768-0eb8-4e75-a2c8-cf1d0e9ade4c.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/559be6f4-69bc-4393-8265-386a94c44187.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWiredWeb.m3u8"
              } ]
            } ]
          }
        }
      }
    }, {
      "gamePk" : 2019021080,
      "link" : "/api/v1/game/2019021080/feed/live",
      "gameType" : "R",
      "season" : "20192020",
      "gameDate" : "2020-03-12T01:00:00Z",
      "status" : {
        "abstractGameState" : "Final",
        "codedGameState" : "7",
        "detailedState" : "Final",
        "statusCode" : "7",
        "startTimeTBD" : false
      },
      "teams" : {
        "away" : {
          "leagueRecord" : {
            "wins" : 37,
            "losses" : 28,
            "ot" : 6,
            "type" : "league"
          },
          "score" : 4,
          "team" : {
            "id" : 52,
            "name" : "Winnipeg Jets",
            "link" : "/api/v1/teams/52",
            "venue" : {
              "id" : 5058,
              "name" : "Bell MTS Place",
              "link" : "/api/v1/venues/5058",
              "city" : "Winnipeg",
              "timeZone" : {
                "id" : "America/Winnipeg",
                "offset" : -5,
                "tz" : "CDT"
              }
            },
            "abbreviation" : "WPG",
            "teamName" : "Jets",
            "locationName" : "Winnipeg",
            "firstYearOfPlay" : "2011",
            "division" : {
              "id" : 16,
              "name" : "Central",
              "nameShort" : "CEN",
              "link" : "/api/v1/divisions/16",
              "abbreviation" : "C"
            },
            "conference" : {
              "id" : 5,
              "name" : "Western",
              "link" : "/api/v1/conferences/5"
            },
            "franchise" : {
              "franchiseId" : 35,
              "teamName" : "Jets",
              "link" : "/api/v1/franchises/35"
            },
            "shortName" : "Winnipeg",
            "officialSiteUrl" : "http://winnipegjets.com/",
            "franchiseId" : 35,
            "active" : true
          }
        },
        "home" : {
          "leagueRecord" : {
            "wins" : 37,
            "losses" : 25,
            "ot" : 9,
            "type" : "league"
          },
          "score" : 2,
          "team" : {
            "id" : 22,
            "name" : "Edmonton Oilers",
            "link" : "/api/v1/teams/22",
            "venue" : {
              "id" : 5100,
              "name" : "Rogers Place",
              "link" : "/api/v1/venues/5100",
              "city" : "Edmonton",
              "timeZone" : {
                "id" : "America/Edmonton",
                "offset" : -6,
                "tz" : "MDT"
              }
            },
            "abbreviation" : "EDM",
            "teamName" : "Oilers",
            "locationName" : "Edmonton",
            "firstYearOfPlay" : "1979",
            "division" : {
              "id" : 15,
              "name" : "Pacific",
              "nameShort" : "PAC",
              "link" : "/api/v1/divisions/15",
              "abbreviation" : "P"
            },
            "conference" : {
              "id" : 5,
              "name" : "Western",
              "link" : "/api/v1/conferences/5"
            },
            "franchise" : {
              "franchiseId" : 25,
              "teamName" : "Oilers",
              "link" : "/api/v1/franchises/25"
            },
            "shortName" : "Edmonton",
            "officialSiteUrl" : "http://www.edmontonoilers.com/",
            "franchiseId" : 25,
            "active" : true
          }
        }
      },
      "linescore" : {
        "currentPeriod" : 3,
        "currentPeriodOrdinal" : "3rd",
        "currentPeriodTimeRemaining" : "Final",
        "periods" : [ {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T01:11:37Z",
          "endTime" : "2020-03-12T01:42:15Z",
          "num" : 1,
          "ordinalNum" : "1st",
          "home" : {
            "goals" : 0,
            "shotsOnGoal" : 9,
            "rinkSide" : "left"
          },
          "away" : {
            "goals" : 0,
            "shotsOnGoal" : 12,
            "rinkSide" : "right"
          }
        }, {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T02:00:47Z",
          "endTime" : "2020-03-12T02:35:24Z",
          "num" : 2,
          "ordinalNum" : "2nd",
          "home" : {
            "goals" : 2,
            "shotsOnGoal" : 17,
            "rinkSide" : "right"
          },
          "away" : {
            "goals" : 2,
            "shotsOnGoal" : 10,
            "rinkSide" : "left"
          }
        }, {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T02:53:55Z",
          "endTime" : "2020-03-12T03:27:06Z",
          "num" : 3,
          "ordinalNum" : "3rd",
          "home" : {
            "goals" : 0,
            "shotsOnGoal" : 12,
            "rinkSide" : "left"
          },
          "away" : {
            "goals" : 2,
            "shotsOnGoal" : 3,
            "rinkSide" : "right"
          }
        } ],
        "shootoutInfo" : {
          "away" : {
            "scores" : 0,
            "attempts" : 0
          },
          "home" : {
            "scores" : 0,
            "attempts" : 0
          }
        },
        "teams" : {
          "home" : {
            "team" : {
              "id" : 22,
              "name" : "Edmonton Oilers",
              "link" : "/api/v1/teams/22"
            },
            "goals" : 2,
            "shotsOnGoal" : 38,
            "goaliePulled" : false,
            "numSkaters" : 5,
            "powerPlay" : false
          },
          "away" : {
            "team" : {
              "id" : 52,
              "name" : "Winnipeg Jets",
              "link" : "/api/v1/teams/52"
            },
            "goals" : 4,
            "shotsOnGoal" : 25,
            "goaliePulled" : false,
            "numSkaters" : 5,
            "powerPlay" : false
          }
        },
        "powerPlayStrength" : "Even",
        "hasShootout" : false,
        "intermissionInfo" : {
          "intermissionTimeRemaining" : 0,
          "intermissionTimeElapsed" : 0,
          "inIntermission" : false
        },
        "powerPlayInfo" : {
          "situationTimeRemaining" : 0,
          "situationTimeElapsed" : 40,
          "inSituation" : false
        }
      },
      "decisions" : {
        "winner" : {
          "id" : 8476945,
          "fullName" : "Connor Hellebuyck",
          "link" : "/api/v1/people/8476945"
        },
        "loser" : {
          "id" : 8469608,
          "fullName" : "Mike Smith",
          "link" : "/api/v1/people/8469608"
        },
        "firstStar" : {
          "id" : 8471218,
          "fullName" : "Blake Wheeler",
          "link" : "/api/v1/people/8471218"
        },
        "secondStar" : {
          "id" : 8478398,
          "fullName" : "Kyle Connor",
          "link" : "/api/v1/people/8478398"
        },
        "thirdStar" : {
          "id" : 8477498,
          "fullName" : "Darnell Nurse",
          "link" : "/api/v1/people/8477498"
        }
      },
      "scoringPlays" : [ {
        "players" : [ {
          "player" : {
            "id" : 8474589,
            "fullName" : "Tyler Ennis",
            "link" : "/api/v1/people/8474589"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 16
        }, {
          "player" : {
            "id" : 8479977,
            "fullName" : "Kailer Yamamoto",
            "link" : "/api/v1/people/8479977"
          },
          "playerType" : "Assist",
          "seasonTotal" : 15
        }, {
          "player" : {
            "id" : 8476945,
            "fullName" : "Connor Hellebuyck",
            "link" : "/api/v1/people/8476945"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "EDM95",
          "eventTypeId" : "GOAL",
          "description" : "Tyler Ennis (16) Wrist Shot, assists: Kailer Yamamoto (15)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 85,
          "eventId" : 95,
          "period" : 2,
          "periodType" : "REGULAR",
          "ordinalNum" : "2nd",
          "periodTime" : "00:09",
          "periodTimeRemaining" : "19:51",
          "dateTime" : "2020-03-12T02:01:07Z",
          "goals" : {
            "away" : 0,
            "home" : 1
          }
        },
        "coordinates" : {
          "x" : -88.0,
          "y" : 2.0
        },
        "team" : {
          "id" : 22,
          "name" : "Edmonton Oilers",
          "link" : "/api/v1/teams/22"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8471218,
            "fullName" : "Blake Wheeler",
            "link" : "/api/v1/people/8471218"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 22
        }, {
          "player" : {
            "id" : 8477940,
            "fullName" : "Nikolaj Ehlers",
            "link" : "/api/v1/people/8477940"
          },
          "playerType" : "Assist",
          "seasonTotal" : 33
        }, {
          "player" : {
            "id" : 8476470,
            "fullName" : "Nathan Beaulieu",
            "link" : "/api/v1/people/8476470"
          },
          "playerType" : "Assist",
          "seasonTotal" : 7
        }, {
          "player" : {
            "id" : 8469608,
            "fullName" : "Mike Smith",
            "link" : "/api/v1/people/8469608"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "EDM365",
          "eventTypeId" : "GOAL",
          "description" : "Blake Wheeler (22) Tip-In, assists: Nikolaj Ehlers (33), Nathan Beaulieu (7)",
          "secondaryType" : "Tip-In",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 120,
          "eventId" : 365,
          "period" : 2,
          "periodType" : "REGULAR",
          "ordinalNum" : "2nd",
          "periodTime" : "09:25",
          "periodTimeRemaining" : "10:35",
          "dateTime" : "2020-03-12T02:12:45Z",
          "goals" : {
            "away" : 1,
            "home" : 1
          }
        },
        "coordinates" : {
          "x" : 57.0,
          "y" : 6.0
        },
        "team" : {
          "id" : 52,
          "name" : "Winnipeg Jets",
          "link" : "/api/v1/teams/52"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8479339,
            "fullName" : "Patrik Laine",
            "link" : "/api/v1/people/8479339"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 28
        }, {
          "player" : {
            "id" : 8475236,
            "fullName" : "Cody Eakin",
            "link" : "/api/v1/people/8475236"
          },
          "playerType" : "Assist",
          "seasonTotal" : 10
        }, {
          "player" : {
            "id" : 8469608,
            "fullName" : "Mike Smith",
            "link" : "/api/v1/people/8469608"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "EDM388",
          "eventTypeId" : "GOAL",
          "description" : "Patrik Laine (28) Wrist Shot, assists: Cody Eakin (10)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 160,
          "eventId" : 388,
          "period" : 2,
          "periodType" : "REGULAR",
          "ordinalNum" : "2nd",
          "periodTime" : "16:28",
          "periodTimeRemaining" : "03:32",
          "dateTime" : "2020-03-12T02:28:17Z",
          "goals" : {
            "away" : 2,
            "home" : 1
          }
        },
        "coordinates" : {
          "x" : 75.0,
          "y" : 3.0
        },
        "team" : {
          "id" : 52,
          "name" : "Winnipeg Jets",
          "link" : "/api/v1/teams/52"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8478402,
            "fullName" : "Connor McDavid",
            "link" : "/api/v1/people/8478402"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 34
        }, {
          "player" : {
            "id" : 8475178,
            "fullName" : "Zack Kassian",
            "link" : "/api/v1/people/8475178"
          },
          "playerType" : "Assist",
          "seasonTotal" : 19
        }, {
          "player" : {
            "id" : 8477498,
            "fullName" : "Darnell Nurse",
            "link" : "/api/v1/people/8477498"
          },
          "playerType" : "Assist",
          "seasonTotal" : 28
        }, {
          "player" : {
            "id" : 8476945,
            "fullName" : "Connor Hellebuyck",
            "link" : "/api/v1/people/8476945"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "EDM395",
          "eventTypeId" : "GOAL",
          "description" : "Connor McDavid (34) Wrist Shot, assists: Zack Kassian (19), Darnell Nurse (28)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 169,
          "eventId" : 395,
          "period" : 2,
          "periodType" : "REGULAR",
          "ordinalNum" : "2nd",
          "periodTime" : "18:23",
          "periodTimeRemaining" : "01:37",
          "dateTime" : "2020-03-12T02:31:56Z",
          "goals" : {
            "away" : 2,
            "home" : 2
          }
        },
        "coordinates" : {
          "x" : -86.0,
          "y" : -4.0
        },
        "team" : {
          "id" : 22,
          "name" : "Edmonton Oilers",
          "link" : "/api/v1/teams/22"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8478398,
            "fullName" : "Kyle Connor",
            "link" : "/api/v1/people/8478398"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 37
        }, {
          "player" : {
            "id" : 8471218,
            "fullName" : "Blake Wheeler",
            "link" : "/api/v1/people/8471218"
          },
          "playerType" : "Assist",
          "seasonTotal" : 43
        }, {
          "player" : {
            "id" : 8480145,
            "fullName" : "Neal Pionk",
            "link" : "/api/v1/people/8480145"
          },
          "playerType" : "Assist",
          "seasonTotal" : 39
        }, {
          "player" : {
            "id" : 8469608,
            "fullName" : "Mike Smith",
            "link" : "/api/v1/people/8469608"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "EDM552",
          "eventTypeId" : "GOAL",
          "description" : "Kyle Connor (37) Wrist Shot, assists: Blake Wheeler (43), Neal Pionk (39)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : true,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 187,
          "eventId" : 552,
          "period" : 3,
          "periodType" : "REGULAR",
          "ordinalNum" : "3rd",
          "periodTime" : "00:29",
          "periodTimeRemaining" : "19:31",
          "dateTime" : "2020-03-12T02:54:28Z",
          "goals" : {
            "away" : 3,
            "home" : 2
          }
        },
        "coordinates" : {
          "x" : -65.0,
          "y" : -2.0
        },
        "team" : {
          "id" : 52,
          "name" : "Winnipeg Jets",
          "link" : "/api/v1/teams/52"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8478398,
            "fullName" : "Kyle Connor",
            "link" : "/api/v1/people/8478398"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 38
        }, {
          "player" : {
            "id" : 8476460,
            "fullName" : "Mark Scheifele",
            "link" : "/api/v1/people/8476460"
          },
          "playerType" : "Assist",
          "seasonTotal" : 44
        }, {
          "player" : {
            "id" : 8477504,
            "fullName" : "Josh Morrissey",
            "link" : "/api/v1/people/8477504"
          },
          "playerType" : "Assist",
          "seasonTotal" : 26
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "EDM592",
          "eventTypeId" : "GOAL",
          "description" : "Kyle Connor (38) Wrist Shot, assists: Mark Scheifele (44), Josh Morrissey (26)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : true
        },
        "about" : {
          "eventIdx" : 260,
          "eventId" : 592,
          "period" : 3,
          "periodType" : "REGULAR",
          "ordinalNum" : "3rd",
          "periodTime" : "19:20",
          "periodTimeRemaining" : "00:40",
          "dateTime" : "2020-03-12T03:25:32Z",
          "goals" : {
            "away" : 4,
            "home" : 2
          }
        },
        "coordinates" : {
          "x" : -13.0,
          "y" : -33.0
        },
        "team" : {
          "id" : 52,
          "name" : "Winnipeg Jets",
          "link" : "/api/v1/teams/52"
        }
      } ],
      "venue" : {
        "id" : 5100,
        "name" : "Rogers Place",
        "link" : "/api/v1/venues/5100"
      },
      "tickets" : [ {
        "ticketType" : "clubWebSchedule",
        "ticketLink" : "https://www.ticketmaster.ca/event/110056F5192335B7?wt.mc_id=NHL_TEAM_EDM_SCHEDULE_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_EDM&utm_content=SCHEDULE_GAME37"
      }, {
        "ticketType" : "clubWebScheduleBuySell",
        "ticketLink" : "https://www.ticketmaster.ca/event/110056F5192335B7?wt.mc_id=NHL_TEAM_EDM_SCHEDULE_BUYSELL_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_EDM&utm_content=SCHEDULE_BUYSELL_GAME37"
      }, {
        "ticketType" : "leagueWebScoresPage",
        "ticketLink" : "https://www1.ticketmaster.ca/edmonton-oilers-vs-winnipeg-jets/event/110056F5192335B7?brand=edmontonoilers"
      }, {
        "ticketType" : "leagueWebGamecenterPreview",
        "ticketLink" : "https://www1.ticketmaster.ca/edmonton-oilers-vs-winnipeg-jets/event/110056F5192335B7?brand=edmontonoilers"
      }, {
        "ticketType" : "clubWebMIG",
        "ticketLink" : "https://www.ticketmaster.ca/event/110056F5192335B7?wt.mc_id=NHL_TEAM_EDM_WEB_MIG_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_EDM&utm_content=WEB_MIG_GAME37"
      }, {
        "ticketType" : "leagueWebHorizontalScoreboard",
        "ticketLink" : "https://www1.ticketmaster.ca/edmonton-oilers-vs-winnipeg-jets/event/110056F5192335B7?brand=edmontonoilers"
      }, {
        "ticketType" : "leagueWebScheduleBuySell",
        "ticketLink" : "https://www1.ticketmaster.ca/edmonton-oilers-vs-winnipeg-jets/event/110056F5192335B7?brand=edmontonoilers"
      }, {
        "ticketType" : "leagueAppScoreTab",
        "ticketLink" : "https://www1.ticketmaster.ca/edmonton-oilers-vs-winnipeg-jets/event/110056F5192335B7?brand=edmontonoilers"
      }, {
        "ticketType" : "leagueWebSchedule",
        "ticketLink" : "https://www1.ticketmaster.ca/edmonton-oilers-vs-winnipeg-jets/event/110056F5192335B7?brand=edmontonoilers"
      }, {
        "ticketType" : "clubWebHorizontalScoreboard",
        "ticketLink" : "https://www.ticketmaster.ca/event/110056F5192335B7?wt.mc_id=NHL_TEAM_EDM_HORIZONTAL_SCOREBOARD_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_EDM&utm_content=HORIZONTAL_SCOREBOARD_GAME37"
      }, {
        "ticketType" : "clubAppScoreTile",
        "ticketLink" : "https://www.ticketmaster.ca/event/110056F5192335B7?wt.mc_id=NHL_TEAM_EDM_SCORE_TAB_APP_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_EDM&utm_content=SCORE_TAB_APP_GAME37"
      }, {
        "ticketType" : "leagueAppGamecenterPreview",
        "ticketLink" : "https://www1.ticketmaster.ca/edmonton-oilers-vs-winnipeg-jets/event/110056F5192335B7?brand=edmontonoilers"
      }, {
        "ticketType" : "googleOneBox",
        "ticketLink" : "https://www1.ticketmaster.ca/edmonton-oilers-vs-winnipeg-jets/event/110056F5192335B7?brand=edmontonoilers"
      } ],
      "content" : {
        "link" : "/api/v1/game/2019021080/content",
        "editorial" : { },
        "media" : {
          "epg" : [ {
            "title" : "NHLTV",
            "platform" : "web",
            "items" : [ {
              "guid" : "82472f53-7aac-425f-90d4-be504688ba73",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71315603",
              "mediaFeedType" : "NATIONAL",
              "callLetters" : "SN",
              "eventId" : "221-2004557",
              "language" : "eng",
              "freeGame" : true,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "guid" : "3a7badcc-e6f4-445c-91b1-647da9bd74b5",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71316203",
              "mediaFeedType" : "COMPOSITE",
              "callLetters" : "",
              "eventId" : "221-2004557",
              "language" : "eng",
              "freeGame" : true,
              "feedName" : "Multi-Cam 1",
              "gamePlus" : false
            }, {
              "guid" : "71ba277b-4df2-4e23-a589-513f8cef4ec6",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71588503",
              "mediaFeedType" : "FRENCH",
              "callLetters" : "TVAS",
              "eventId" : "221-2004557",
              "language" : "fra",
              "freeGame" : true,
              "feedName" : "",
              "gamePlus" : false
            } ]
          }, {
            "title" : "Audio",
            "items" : [ {
              "mediaState" : "MEDIA_DONE",
              "mediaPlaybackId" : "71315803",
              "mediaFeedType" : "HOME",
              "callLetters" : "CHED",
              "eventId" : "221-2004557",
              "language" : "eng",
              "freeGame" : false,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "mediaState" : "MEDIA_DONE",
              "mediaPlaybackId" : "71315903",
              "mediaFeedType" : "AWAY",
              "callLetters" : "TSN1290",
              "eventId" : "221-2004557",
              "language" : "eng",
              "freeGame" : false,
              "feedName" : "",
              "gamePlus" : false
            } ]
          }, {
            "title" : "Extended Highlights",
            "topicList" : "313535776",
            "items" : [ {
              "type" : "video",
              "id" : "5356986",
              "date" : "2020-03-11T21:00:00-0400",
              "title" : "WPG @ EDM",
              "blurb" : "Condensed Game: Jets @ Oilers",
              "description" : "Extended highlights of the Winnipeg Jets at the Edmonton Oilers",
              "duration" : "09:00",
              "authFlow" : false,
              "mediaPlaybackId" : "5356986",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "22",
                "displayName" : "22"
              }, {
                "type" : "content",
                "value" : "extendedHighlights",
                "displayName" : "Condensed Game"
              }, {
                "type" : "teamId",
                "value" : "52",
                "displayName" : "52"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316143186/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316143186/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316143186/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316143186/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316143186/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316143186/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316143186/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316143186/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316143186/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316143186/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316143186/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316143186/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316143186/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316143186/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316143186/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316143186/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316143186/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316143186/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316143186/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316143186/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316143186/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316143186/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316143186/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316143186/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316143186/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316143186/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316143186/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316143186/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316143186/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316143186/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/c7db30b8-725c-43db-bb39-8f7b397ef378.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/82f4daea-5d8e-44b0-ad31-a2a253ea5c08.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/bb41b96a-ca91-4729-b40a-f2796ba91373.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/fb4f1c4e-6f6f-4e30-8011-918a689f72c3.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286987/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286987/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286987/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286987/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286987/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286987/MasterWiredWeb.m3u8"
              } ]
            } ]
          }, {
            "title" : "Recap",
            "topicList" : "313535776",
            "items" : [ {
              "type" : "video",
              "id" : "5356985",
              "date" : "2020-03-11T21:00:00-0400",
              "title" : "Recap: WPG 4, EDM 2",
              "blurb" : "Connor, Wheeler lead Jets past Oilers, 4-2",
              "description" : "Kyle Connor and Blake Wheeler recorded two points each to lead the Jets to a 4-2 victory against the Oilers",
              "duration" : "04:59",
              "authFlow" : false,
              "mediaPlaybackId" : "5356985",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "gameRecap",
                "displayName" : "game recap"
              }, {
                "type" : "content",
                "value" : "teamRecap",
                "displayName" : "Team Recap"
              }, {
                "type" : "teamId",
                "value" : "52",
                "displayName" : "52"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316142834/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316142834/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316142834/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316142834/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316142834/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316142834/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316142834/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316142834/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316142834/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316142834/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316142834/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316142834/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316142834/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316142834/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316142834/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316142834/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316142834/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316142834/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316142834/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316142834/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316142834/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316142834/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316142834/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316142834/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316142834/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316142834/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316142834/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316142834/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316142834/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316142834/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/cb90c0f0-2cd8-45ee-85d1-882d2e73e39b.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/74ea2b7f-abc4-4aa9-b135-8fff9db65e96.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/bab67af3-09a2-4d1d-b374-8e186685febc.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/97dd60df-7d49-4f66-8e62-7d05b97d7f2d.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286986/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286986/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286986/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286986/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286986/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286986/MasterWiredWeb.m3u8"
              } ]
            } ]
          }, {
            "title" : "Power Play",
            "items" : [ ]
          } ]
        },
        "highlights" : {
          "scoreboard" : {
            "title" : "Highlights",
            "topicList" : "313535776",
            "items" : [ {
              "type" : "video",
              "id" : "5356392",
              "date" : "2020-03-11T21:00:00-0400",
              "title" : "Ennis opens the scoring",
              "blurb" : "WPG@EDM: Ennis cleans up loose puck in the crease",
              "description" : "Tyler Ennis capitalizes on a loose puck in the crease and sends it home to open the scoring in the 2nd period",
              "duration" : "00:42",
              "authFlow" : false,
              "mediaPlaybackId" : "5356392",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "22",
                "displayName" : "22"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "statsEventId",
                "value" : "95",
                "displayName" : "95"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136628/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136628/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136628/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136628/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136628/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136628/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136628/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136628/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136628/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136628/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136628/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136628/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136628/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136628/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136628/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136628/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136628/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136628/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136628/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136628/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136628/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136628/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136628/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136628/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136628/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136628/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136628/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316136628/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316136628/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316136628/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/88ea756d-4772-4bf1-afc7-2ec8f5e71889.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/eb4d7317-bcd3-4dd8-95be-0daa0d8709ee.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/806ddc6a-7a80-47ca-bd4c-bbda7d547860.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/53f6a3ac-f3e2-453b-a21e-2ac3034239b0.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286393/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286393/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286393/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286393/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286393/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286393/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356974",
              "date" : "2020-03-11T21:00:00-0400",
              "title" : "Connor's empty-net goal",
              "blurb" : "WPG@EDM: Connor scores second on empty net",
              "description" : "Kyle Connor tallies an empty-net goal late in the 3rd period to seal the Jets' 4-2 with his second of the night",
              "duration" : "00:28",
              "authFlow" : false,
              "mediaPlaybackId" : "5356974",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "statsEventId",
                "value" : "592",
                "displayName" : "592"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "teamId",
                "value" : "52",
                "displayName" : "52"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141844/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141844/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141844/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141844/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141844/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141844/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141844/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141844/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141844/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141844/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141844/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141844/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141844/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141844/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141844/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141844/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141844/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141844/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141844/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141844/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141844/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141844/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141844/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141844/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141844/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141844/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141844/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141844/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141844/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141844/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/ac947213-fe20-4dd6-a04c-527323c441b9.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/7dc230b8-9a3a-468d-9c93-c0b2e7c50435.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/b2176961-54a7-4a52-8ddb-585ff6cebe05.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/e1fe0289-5e44-44c8-82fc-4fbd67e597f5.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286975/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286975/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286975/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286975/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286975/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286975/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356915",
              "date" : "2020-03-11T21:00:00-0400",
              "title" : "Connor scores on breakaway",
              "blurb" : "WPG@EDM: Connor nets goal on breakaway",
              "description" : "Kyle Connor skates in on a breakaway and fires a shot through the five-hole of Mike Smith to give the Jets a 3-2 lead",
              "duration" : "00:31",
              "authFlow" : false,
              "mediaPlaybackId" : "5356915",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "statsEventId",
                "value" : "552",
                "displayName" : "552"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "teamId",
                "value" : "52",
                "displayName" : "52"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139978/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139978/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139978/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139978/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139978/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139978/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139978/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139978/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139978/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139978/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139978/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139978/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139978/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139978/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139978/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139978/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139978/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139978/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139978/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139978/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139978/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139978/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139978/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139978/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139978/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139978/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139978/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139978/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139978/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139978/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/c791a405-28fa-4c8e-8b4f-1ed678342789.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/126c8617-e9e8-4911-9030-7502d4c2874a.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/16d50e73-9929-49c7-b365-6f165d14a2ba.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/1b44d2a4-4ebb-4ab9-b4ef-37e13d2a6e75.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286916/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286916/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286916/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286916/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286916/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286916/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356791",
              "date" : "2020-03-11T21:00:00-0400",
              "title" : "McDavid tucks in nifty goal",
              "blurb" : "WPG@EDM: McDavid beats a sprawling Hellebuyck",
              "description" : "Connor McDavid makes a nice move to beat Connor Hellebuyck, tucking the puck past his skate from in close",
              "duration" : "00:49",
              "authFlow" : false,
              "mediaPlaybackId" : "5356791",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "22",
                "displayName" : "22"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "statsEventId",
                "value" : "395",
                "displayName" : "395"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139650/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139650/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139650/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139650/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139650/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139650/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139650/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139650/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139650/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139650/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139650/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139650/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139650/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139650/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139650/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139650/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139650/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139650/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139650/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139650/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139650/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139650/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139650/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139650/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139650/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139650/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139650/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139650/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139650/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139650/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/63d15ee4-ed33-449c-b598-f4bbd8941622.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/1dc42b2c-22b5-43fc-b3c5-c3503731567c.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/2449e7e0-c34f-41d7-815e-3d0d1cf3fca0.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/8624d739-72de-467a-b5ed-a23517a8d718.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286792/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286792/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286792/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286792/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286792/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286792/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356775",
              "date" : "2020-03-11T21:00:00-0400",
              "title" : "Laine buries one-timer",
              "blurb" : "WPG@EDM: Laine one-times goal from the slot",
              "description" : "Patrik Laine takes a pass from Cody Eakin and one-times a goal from the slot in the 2nd period",
              "duration" : "00:39",
              "authFlow" : false,
              "mediaPlaybackId" : "5356775",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "statsEventId",
                "value" : "388",
                "displayName" : "388"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "teamId",
                "value" : "52",
                "displayName" : "52"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139646/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139646/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139646/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139646/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139646/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139646/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139646/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139646/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139646/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139646/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139646/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139646/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139646/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139646/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139646/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139646/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139646/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139646/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139646/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139646/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139646/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139646/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139646/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139646/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139646/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139646/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139646/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139646/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139646/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139646/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/9d9b786e-e13b-4924-bd2f-073bc87a7610.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/6eb2a73d-7a60-4a14-88d2-da4e4b11dfcb.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/f51669b7-1041-4449-a5d5-25d8da23e640.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/63fc133d-6d32-4dfd-af76-1fc23b36c0c5.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286776/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286776/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286776/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286776/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286776/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286776/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356449",
              "date" : "2020-03-11T21:00:00-0400",
              "title" : "Wheeler scores off defender",
              "blurb" : "WPG@EDM: Wheeler deflects puck in off defender",
              "description" : "Blake Wheeler attempts to send a pass across the slot, but it is deflected into the net off a defender",
              "duration" : "00:45",
              "authFlow" : false,
              "mediaPlaybackId" : "5356449",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "statsEventId",
                "value" : "365",
                "displayName" : "365"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "teamId",
                "value" : "52",
                "displayName" : "52"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139220/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139220/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139220/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139220/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139220/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139220/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139220/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139220/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139220/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139220/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139220/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139220/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139220/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139220/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139220/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139220/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139220/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139220/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139220/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139220/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139220/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139220/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139220/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139220/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139220/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139220/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139220/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139220/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139220/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139220/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/dddcc76f-09d2-4451-8ddd-9ece11d10479.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/4365a9b6-27ef-4b90-8ea0-851e8a3428e2.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/ed0d8865-8d1a-4e38-8137-2063edff0466.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/98b55e89-929d-44f1-908e-56ab47313e95.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286450/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286450/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286450/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286450/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286450/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286450/MasterWiredWeb.m3u8"
              } ]
            } ]
          }
        }
      }
    }, {
      "gamePk" : 2019020876,
      "link" : "/api/v1/game/2019020876/feed/live",
      "gameType" : "R",
      "season" : "20192020",
      "gameDate" : "2020-03-12T02:00:00Z",
      "status" : {
        "abstractGameState" : "Final",
        "codedGameState" : "7",
        "detailedState" : "Final",
        "statusCode" : "7",
        "startTimeTBD" : false
      },
      "teams" : {
        "away" : {
          "leagueRecord" : {
            "wins" : 42,
            "losses" : 19,
            "ot" : 10,
            "type" : "league"
          },
          "score" : 4,
          "team" : {
            "id" : 19,
            "name" : "St. Louis Blues",
            "link" : "/api/v1/teams/19",
            "venue" : {
              "id" : 5076,
              "name" : "Enterprise Center",
              "link" : "/api/v1/venues/5076",
              "city" : "St. Louis",
              "timeZone" : {
                "id" : "America/Chicago",
                "offset" : -5,
                "tz" : "CDT"
              }
            },
            "abbreviation" : "STL",
            "teamName" : "Blues",
            "locationName" : "St. Louis",
            "firstYearOfPlay" : "1967",
            "division" : {
              "id" : 16,
              "name" : "Central",
              "nameShort" : "CEN",
              "link" : "/api/v1/divisions/16",
              "abbreviation" : "C"
            },
            "conference" : {
              "id" : 5,
              "name" : "Western",
              "link" : "/api/v1/conferences/5"
            },
            "franchise" : {
              "franchiseId" : 18,
              "teamName" : "Blues",
              "link" : "/api/v1/franchises/18"
            },
            "shortName" : "St Louis",
            "officialSiteUrl" : "http://www.stlouisblues.com/",
            "franchiseId" : 18,
            "active" : true
          }
        },
        "home" : {
          "leagueRecord" : {
            "wins" : 29,
            "losses" : 33,
            "ot" : 9,
            "type" : "league"
          },
          "score" : 2,
          "team" : {
            "id" : 24,
            "name" : "Anaheim Ducks",
            "link" : "/api/v1/teams/24",
            "venue" : {
              "id" : 5046,
              "name" : "Honda Center",
              "link" : "/api/v1/venues/5046",
              "city" : "Anaheim",
              "timeZone" : {
                "id" : "America/Los_Angeles",
                "offset" : -7,
                "tz" : "PDT"
              }
            },
            "abbreviation" : "ANA",
            "teamName" : "Ducks",
            "locationName" : "Anaheim",
            "firstYearOfPlay" : "1993",
            "division" : {
              "id" : 15,
              "name" : "Pacific",
              "nameShort" : "PAC",
              "link" : "/api/v1/divisions/15",
              "abbreviation" : "P"
            },
            "conference" : {
              "id" : 5,
              "name" : "Western",
              "link" : "/api/v1/conferences/5"
            },
            "franchise" : {
              "franchiseId" : 32,
              "teamName" : "Ducks",
              "link" : "/api/v1/franchises/32"
            },
            "shortName" : "Anaheim",
            "officialSiteUrl" : "http://www.anaheimducks.com/",
            "franchiseId" : 32,
            "active" : true
          }
        }
      },
      "linescore" : {
        "currentPeriod" : 3,
        "currentPeriodOrdinal" : "3rd",
        "currentPeriodTimeRemaining" : "Final",
        "periods" : [ {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T02:08:21Z",
          "endTime" : "2020-03-12T02:41:15Z",
          "num" : 1,
          "ordinalNum" : "1st",
          "home" : {
            "goals" : 1,
            "shotsOnGoal" : 9,
            "rinkSide" : "left"
          },
          "away" : {
            "goals" : 2,
            "shotsOnGoal" : 16,
            "rinkSide" : "right"
          }
        }, {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T02:59:40Z",
          "endTime" : "2020-03-12T03:33:33Z",
          "num" : 2,
          "ordinalNum" : "2nd",
          "home" : {
            "goals" : 1,
            "shotsOnGoal" : 10,
            "rinkSide" : "right"
          },
          "away" : {
            "goals" : 1,
            "shotsOnGoal" : 9,
            "rinkSide" : "left"
          }
        }, {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T03:52:10Z",
          "endTime" : "2020-03-12T04:28:58Z",
          "num" : 3,
          "ordinalNum" : "3rd",
          "home" : {
            "goals" : 0,
            "shotsOnGoal" : 8,
            "rinkSide" : "left"
          },
          "away" : {
            "goals" : 1,
            "shotsOnGoal" : 12,
            "rinkSide" : "right"
          }
        } ],
        "shootoutInfo" : {
          "away" : {
            "scores" : 0,
            "attempts" : 0
          },
          "home" : {
            "scores" : 0,
            "attempts" : 0
          }
        },
        "teams" : {
          "home" : {
            "team" : {
              "id" : 24,
              "name" : "Anaheim Ducks",
              "link" : "/api/v1/teams/24"
            },
            "goals" : 2,
            "shotsOnGoal" : 27,
            "goaliePulled" : false,
            "numSkaters" : 5,
            "powerPlay" : false
          },
          "away" : {
            "team" : {
              "id" : 19,
              "name" : "St. Louis Blues",
              "link" : "/api/v1/teams/19"
            },
            "goals" : 4,
            "shotsOnGoal" : 37,
            "goaliePulled" : false,
            "numSkaters" : 5,
            "powerPlay" : false
          }
        },
        "powerPlayStrength" : "Even",
        "hasShootout" : false,
        "intermissionInfo" : {
          "intermissionTimeRemaining" : 0,
          "intermissionTimeElapsed" : 0,
          "inIntermission" : false
        },
        "powerPlayInfo" : {
          "situationTimeRemaining" : 0,
          "situationTimeElapsed" : 0,
          "inSituation" : false
        }
      },
      "decisions" : {
        "winner" : {
          "id" : 8474596,
          "fullName" : "Jake Allen",
          "link" : "/api/v1/people/8474596"
        },
        "loser" : {
          "id" : 8476932,
          "fullName" : "Anthony Stolarz",
          "link" : "/api/v1/people/8476932"
        },
        "firstStar" : {
          "id" : 8475158,
          "fullName" : "Ryan O'Reilly",
          "link" : "/api/v1/people/8475158"
        },
        "secondStar" : {
          "id" : 8475825,
          "fullName" : "Jani Hakanpaa",
          "link" : "/api/v1/people/8475825"
        },
        "thirdStar" : {
          "id" : 8474596,
          "fullName" : "Jake Allen",
          "link" : "/api/v1/people/8474596"
        }
      },
      "scoringPlays" : [ {
        "players" : [ {
          "player" : {
            "id" : 8474641,
            "fullName" : "Adam Henrique",
            "link" : "/api/v1/people/8474641"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 26
        }, {
          "player" : {
            "id" : 8476854,
            "fullName" : "Hampus Lindholm",
            "link" : "/api/v1/people/8476854"
          },
          "playerType" : "Assist",
          "seasonTotal" : 21
        }, {
          "player" : {
            "id" : 8476312,
            "fullName" : "Josh Manson",
            "link" : "/api/v1/people/8476312"
          },
          "playerType" : "Assist",
          "seasonTotal" : 8
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "ANA51",
          "eventTypeId" : "GOAL",
          "description" : "Adam Henrique (26) , assists: Hampus Lindholm (21), Josh Manson (8)",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 2,
          "eventId" : 51,
          "period" : 1,
          "periodType" : "REGULAR",
          "ordinalNum" : "1st",
          "periodTime" : "00:00",
          "periodTimeRemaining" : "20:00",
          "dateTime" : "2020-03-12T01:57:32Z",
          "goals" : {
            "away" : 0,
            "home" : 1
          }
        },
        "coordinates" : {
          "x" : 57.0,
          "y" : -14.0
        },
        "team" : {
          "id" : 24,
          "name" : "Anaheim Ducks",
          "link" : "/api/v1/teams/24"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8477964,
            "fullName" : "Ivan Barbashev",
            "link" : "/api/v1/people/8477964"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 11
        }, {
          "player" : {
            "id" : 8479385,
            "fullName" : "Jordan Kyrou",
            "link" : "/api/v1/people/8479385"
          },
          "playerType" : "Assist",
          "seasonTotal" : 5
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "ANA52",
          "eventTypeId" : "GOAL",
          "description" : "Ivan Barbashev (11) , assists: Jordan Kyrou (5)",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 3,
          "eventId" : 52,
          "period" : 1,
          "periodType" : "REGULAR",
          "ordinalNum" : "1st",
          "periodTime" : "00:00",
          "periodTimeRemaining" : "20:00",
          "dateTime" : "2020-03-12T01:57:32Z",
          "goals" : {
            "away" : 1,
            "home" : 1
          }
        },
        "coordinates" : {
          "x" : -57.0,
          "y" : 26.0
        },
        "team" : {
          "id" : 19,
          "name" : "St. Louis Blues",
          "link" : "/api/v1/teams/19"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8474565,
            "fullName" : "Alex Pietrangelo",
            "link" : "/api/v1/people/8474565"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 15
        }, {
          "player" : {
            "id" : 8475170,
            "fullName" : "Brayden Schenn",
            "link" : "/api/v1/people/8475170"
          },
          "playerType" : "Assist",
          "seasonTotal" : 33
        }, {
          "player" : {
            "id" : 8475158,
            "fullName" : "Ryan O'Reilly",
            "link" : "/api/v1/people/8475158"
          },
          "playerType" : "Assist",
          "seasonTotal" : 48
        }, {
          "player" : {
            "id" : 8476932,
            "fullName" : "Anthony Stolarz",
            "link" : "/api/v1/people/8476932"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "ANA211",
          "eventTypeId" : "GOAL",
          "description" : "Alex Pietrangelo (15) Slap Shot, assists: Brayden Schenn (33), Ryan O'Reilly (48)",
          "secondaryType" : "Slap Shot",
          "strength" : {
            "code" : "PPG",
            "name" : "Power Play"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 88,
          "eventId" : 211,
          "period" : 1,
          "periodType" : "REGULAR",
          "ordinalNum" : "1st",
          "periodTime" : "16:08",
          "periodTimeRemaining" : "03:52",
          "dateTime" : "2020-03-12T02:36:28Z",
          "goals" : {
            "away" : 2,
            "home" : 1
          }
        },
        "coordinates" : {
          "x" : -41.0,
          "y" : -1.0
        },
        "team" : {
          "id" : 19,
          "name" : "St. Louis Blues",
          "link" : "/api/v1/teams/19"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8475825,
            "fullName" : "Jani Hakanpaa",
            "link" : "/api/v1/people/8475825"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 1
        }, {
          "player" : {
            "id" : 8474641,
            "fullName" : "Adam Henrique",
            "link" : "/api/v1/people/8474641"
          },
          "playerType" : "Assist",
          "seasonTotal" : 17
        }, {
          "player" : {
            "id" : 8474596,
            "fullName" : "Jake Allen",
            "link" : "/api/v1/people/8474596"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "ANA470",
          "eventTypeId" : "GOAL",
          "description" : "Jani Hakanpaa (1) Snap Shot, assists: Adam Henrique (17)",
          "secondaryType" : "Snap Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 174,
          "eventId" : 470,
          "period" : 2,
          "periodType" : "REGULAR",
          "ordinalNum" : "2nd",
          "periodTime" : "13:28",
          "periodTimeRemaining" : "06:32",
          "dateTime" : "2020-03-12T03:21:53Z",
          "goals" : {
            "away" : 2,
            "home" : 2
          }
        },
        "coordinates" : {
          "x" : -45.0,
          "y" : 3.0
        },
        "team" : {
          "id" : 24,
          "name" : "Anaheim Ducks",
          "link" : "/api/v1/teams/24"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8477482,
            "fullName" : "Zach Sanford",
            "link" : "/api/v1/people/8477482"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 16
        }, {
          "player" : {
            "id" : 8475158,
            "fullName" : "Ryan O'Reilly",
            "link" : "/api/v1/people/8475158"
          },
          "playerType" : "Assist",
          "seasonTotal" : 49
        }, {
          "player" : {
            "id" : 8478104,
            "fullName" : "Sammy Blais",
            "link" : "/api/v1/people/8478104"
          },
          "playerType" : "Assist",
          "seasonTotal" : 7
        }, {
          "player" : {
            "id" : 8476932,
            "fullName" : "Anthony Stolarz",
            "link" : "/api/v1/people/8476932"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "ANA481",
          "eventTypeId" : "GOAL",
          "description" : "Zach Sanford (16) Backhand, assists: Ryan O'Reilly (49), Sammy Blais (7)",
          "secondaryType" : "Backhand",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : true,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 190,
          "eventId" : 481,
          "period" : 2,
          "periodType" : "REGULAR",
          "ordinalNum" : "2nd",
          "periodTime" : "17:13",
          "periodTimeRemaining" : "02:47",
          "dateTime" : "2020-03-12T03:26:24Z",
          "goals" : {
            "away" : 3,
            "home" : 2
          }
        },
        "coordinates" : {
          "x" : 81.0,
          "y" : -6.0
        },
        "team" : {
          "id" : 19,
          "name" : "St. Louis Blues",
          "link" : "/api/v1/teams/19"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8474565,
            "fullName" : "Alex Pietrangelo",
            "link" : "/api/v1/people/8474565"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 16
        }, {
          "player" : {
            "id" : 8475753,
            "fullName" : "Justin Faulk",
            "link" : "/api/v1/people/8475753"
          },
          "playerType" : "Assist",
          "seasonTotal" : 11
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "ANA713",
          "eventTypeId" : "GOAL",
          "description" : "Alex Pietrangelo (16) Wrist Shot, assists: Justin Faulk (11)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : true
        },
        "about" : {
          "eventIdx" : 318,
          "eventId" : 713,
          "period" : 3,
          "periodType" : "REGULAR",
          "ordinalNum" : "3rd",
          "periodTime" : "19:00",
          "periodTimeRemaining" : "01:00",
          "dateTime" : "2020-03-12T04:26:41Z",
          "goals" : {
            "away" : 4,
            "home" : 2
          }
        },
        "coordinates" : {
          "x" : 70.0,
          "y" : 33.0
        },
        "team" : {
          "id" : 19,
          "name" : "St. Louis Blues",
          "link" : "/api/v1/teams/19"
        }
      } ],
      "venue" : {
        "id" : 5046,
        "name" : "Honda Center",
        "link" : "/api/v1/venues/5046"
      },
      "tickets" : [ {
        "ticketType" : "clubWebSchedule",
        "ticketLink" : "https://www.ticketmaster.com/event/09005706870F1B67?wt.mc_id=NHL_TEAM_ANA_SCHEDULE_GAME29&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_ANA&utm_content=SCHEDULE_GAME29"
      }, {
        "ticketType" : "clubWebScheduleBuySell",
        "ticketLink" : "https://www.ticketmaster.com/event/09005706870F1B67?wt.mc_id=NHL_TEAM_ANA_SCHEDULE_BUYSELL_GAME29&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_ANA&utm_content=SCHEDULE_BUYSELL_GAME29"
      }, {
        "ticketType" : "leagueWebScoresPage",
        "ticketLink" : "https://www.ticketmaster.com/event/09005706870F1B67?wt.mc_id=NHL_LEAGUE_ANA_SCORES_PAGE_GAME29&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_ANA&utm_content=SCORES_PAGE_GAME29"
      }, {
        "ticketType" : "leagueWebGamecenterPreview",
        "ticketLink" : "https://www.ticketmaster.com/event/09005706870F1B67?wt.mc_id=NHL_LEAGUE_ANA_GAMECENTER_PREVIEW_GAME29&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_ANA&utm_content=GAMECENTER_PREVIEW_GAME29"
      }, {
        "ticketType" : "clubWebMIG",
        "ticketLink" : "https://www.ticketmaster.com/event/09005706870F1B67?wt.mc_id=NHL_TEAM_ANA_WEB_MIG_GAME29&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_ANA&utm_content=WEB_MIG_GAME29"
      }, {
        "ticketType" : "leagueWebHorizontalScoreboard",
        "ticketLink" : "https://www.ticketmaster.com/event/09005706870F1B67?wt.mc_id=NHL_LEAGUE_ANA_HORIZONTAL_SCOREBOARD_GAME29&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_ANA&utm_content=HORIZONTAL_SCOREBOARD_GAME29"
      }, {
        "ticketType" : "leagueWebScheduleBuySell",
        "ticketLink" : "https://www.ticketmaster.com/event/09005706870F1B67?wt.mc_id=NHL_LEAGUE_ANA_SCHEDULE_BUYSELL_GAME29&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_ANA&utm_content=SCHEDULE_BUYSELL_GAME29"
      }, {
        "ticketType" : "leagueAppScoreTab",
        "ticketLink" : "https://www.ticketmaster.com/event/09005706870F1B67?wt.mc_id=NHL_LEAGUE_ANA_SCORE_TAB_APP_GAME29&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_ANA&utm_content=SCORE_TAB_APP_GAME29"
      }, {
        "ticketType" : "leagueWebSchedule",
        "ticketLink" : "https://www.ticketmaster.com/event/09005706870F1B67?wt.mc_id=NHL_LEAGUE_ANA_SCHEDULE_GAME29&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_ANA&utm_content=SCHEDULE_GAME29"
      }, {
        "ticketType" : "clubWebHorizontalScoreboard",
        "ticketLink" : "https://www.ticketmaster.com/event/09005706870F1B67?wt.mc_id=NHL_TEAM_ANA_HORIZONTAL_SCOREBOARD_GAME29&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_ANA&utm_content=HORIZONTAL_SCOREBOARD_GAME29"
      }, {
        "ticketType" : "clubAppScoreTile",
        "ticketLink" : "https://www.ticketmaster.com/event/09005706870F1B67?wt.mc_id=NHL_TEAM_ANA_SCORE_TAB_APP_GAME29&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_TEAM_ANA&utm_content=SCORE_TAB_APP_GAME29"
      }, {
        "ticketType" : "leagueAppGamecenterPreview",
        "ticketLink" : "https://www.ticketmaster.com/event/09005706870F1B67?wt.mc_id=NHL_LEAGUE_ANA_GAMECENTER_PREVIEW_APP_GAME29&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_ANA&utm_content=GAMECENTER_PREVIEW_APP_GAME29"
      }, {
        "ticketType" : "googleOneBox",
        "ticketLink" : "https://www.ticketmaster.com/event/09005706870F1B67?wt.mc_id=NHL_LEAGUE_ANA_GOOGLE_ONE_BOX_GAME29&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_ANA&utm_content=GOOGLE_ONE_BOX_GAME29"
      } ],
      "content" : {
        "link" : "/api/v1/game/2019020876/content",
        "editorial" : { },
        "media" : {
          "epg" : [ {
            "title" : "NHLTV",
            "platform" : "web",
            "items" : [ {
              "guid" : "b7c81712-3b90-4f0d-b9e6-e67810f0c3b4",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71597403",
              "mediaFeedType" : "HOME",
              "callLetters" : "PRIME",
              "eventId" : "221-2004343",
              "language" : "eng",
              "freeGame" : true,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "guid" : "ec0dbe13-933a-45b4-9e7a-c7b98d27533c",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71597503",
              "mediaFeedType" : "AWAY",
              "callLetters" : "FSMW",
              "eventId" : "221-2004343",
              "language" : "eng",
              "freeGame" : true,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "guid" : "b4b69371-6102-43c3-aaff-f5e5e6a588da",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71598003",
              "mediaFeedType" : "COMPOSITE",
              "callLetters" : "",
              "eventId" : "221-2004343",
              "language" : "eng",
              "freeGame" : true,
              "feedName" : "Multi-Cam 1",
              "gamePlus" : false
            } ]
          }, {
            "title" : "Audio",
            "items" : [ {
              "mediaState" : "MEDIA_DONE",
              "mediaPlaybackId" : "71597603",
              "mediaFeedType" : "HOME",
              "callLetters" : "KLAA",
              "eventId" : "221-2004343",
              "language" : "eng",
              "freeGame" : false,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "mediaState" : "MEDIA_DONE",
              "mediaPlaybackId" : "71597703",
              "mediaFeedType" : "AWAY",
              "callLetters" : "101ESPN",
              "eventId" : "221-2004343",
              "language" : "eng",
              "freeGame" : false,
              "feedName" : "",
              "gamePlus" : false
            } ]
          }, {
            "title" : "Extended Highlights",
            "topicList" : "312109348",
            "items" : [ {
              "type" : "video",
              "id" : "5357172",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "STL @ ANA",
              "blurb" : "Condensed Game: Blues @ Ducks",
              "description" : "Extended highlights of the St. Louis Blues at the Anaheim Ducks",
              "duration" : "09:01",
              "authFlow" : false,
              "mediaPlaybackId" : "5357172",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "19",
                "displayName" : "19"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "24",
                "displayName" : "24"
              }, {
                "type" : "content",
                "value" : "extendedHighlights",
                "displayName" : "Condensed Game"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146770/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146770/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146770/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146770/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146770/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146770/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146770/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146770/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146770/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146770/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146770/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146770/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146770/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146770/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146770/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146770/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146770/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146770/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146770/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146770/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146770/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146770/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146770/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146770/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146770/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146770/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146770/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146770/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146770/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146770/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/81db7d52-a366-4e64-8e6e-055e69587a3d.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/1b5670ed-34b2-4c18-88be-e6a84bbe101b.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/eac42e53-e8fc-4c52-9a82-c55923a8df74.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/1fe94f1d-47b7-4a9f-8006-f49722884329.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287173/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287173/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287173/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287173/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287173/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287173/MasterWiredWeb.m3u8"
              } ]
            } ]
          }, {
            "title" : "Recap",
            "topicList" : "312109348",
            "items" : [ {
              "type" : "video",
              "id" : "5357171",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "Recap: STL 4, ANA 2",
              "blurb" : "Pietrangelo's two goals help Blues defeat Ducks",
              "description" : "Alex Pietrangelo scored two goals and Jake Allen made 26 saves, helping the Blues' to a 4-2 victory against the Ducks on the road",
              "duration" : "05:01",
              "authFlow" : false,
              "mediaPlaybackId" : "5357171",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "19",
                "displayName" : "19"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "gameRecap",
                "displayName" : "game recap"
              }, {
                "type" : "content",
                "value" : "teamRecap",
                "displayName" : "Team Recap"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146622/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146622/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146622/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146622/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146622/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146622/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146622/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146622/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146622/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146622/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146622/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146622/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146622/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146622/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146622/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146622/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146622/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146622/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146622/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146622/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146622/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146622/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146622/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146622/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146622/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146622/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146622/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146622/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146622/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146622/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/c03b0452-f2bb-43cd-a8f2-12090c1d5408.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/933ecef7-6c63-40e6-9dde-13a46210f55e.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/b98e4c0f-0158-4404-9dce-361c3f87cd88.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/dea83d81-9cb2-4f48-8300-9ca49df3faf0.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287172/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287172/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287172/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287172/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287172/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287172/MasterWiredWeb.m3u8"
              } ]
            } ]
          }, {
            "title" : "Power Play",
            "items" : [ ]
          } ]
        },
        "highlights" : {
          "scoreboard" : {
            "title" : "Highlights",
            "topicList" : "312109348",
            "items" : [ {
              "type" : "video",
              "id" : "5356979",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "Sanford slips backhander home",
              "blurb" : "STL@ANA: Sanford backhands loose puck past Stolarz",
              "description" : "Zach Sanford gets good position at the side of the net and backhands the loose puck into the back of the net, giving the Blues a 3-2 lead",
              "duration" : "00:36",
              "authFlow" : false,
              "mediaPlaybackId" : "5356979",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "19",
                "displayName" : "19"
              }, {
                "type" : "statsEventId",
                "value" : "481",
                "displayName" : "481"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141696/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141696/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141696/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141696/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141696/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141696/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141696/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141696/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141696/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141696/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141696/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141696/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141696/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141696/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141696/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141696/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141696/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141696/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141696/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141696/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141696/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141696/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141696/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141696/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141696/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141696/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141696/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141696/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141696/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141696/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/2209226d-599c-4753-85a2-dac7b67afbe0.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/0082d175-784a-4e9c-8e60-e1fcf6b196e1.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/55cda51b-5a32-4734-84fd-1ff97ef21843.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/bc0e5ce9-6b8b-4bcc-97ad-dec0029ec717.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286980/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286980/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286980/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286980/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286980/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286980/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5357157",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "Pietrangelo's empty-net goal",
              "blurb" : "STL@ANA: Pietrangelo nets second goal into empty net",
              "description" : "Alex Pietrangelo picks up the puck in his own end and flips it into the empty net for his second goal of the game and a 4-2 lead in the 3rd",
              "duration" : "00:32",
              "authFlow" : false,
              "mediaPlaybackId" : "5357157",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "19",
                "displayName" : "19"
              }, {
                "type" : "statsEventId",
                "value" : "713",
                "displayName" : "713"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144488/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144488/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144488/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144488/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144488/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144488/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144488/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144488/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144488/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144488/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144488/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144488/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144488/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144488/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144488/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144488/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144488/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144488/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144488/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144488/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144488/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144488/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144488/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144488/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144488/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144488/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144488/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144488/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144488/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144488/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/fc84ca46-842b-407a-a132-69f9a15ae4b8.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/f00484e4-cfbb-4eb3-a7e3-d80186023746.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/a549d883-f3e0-4d0a-853c-3e4e65953870.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/0a42eb56-5d3e-4e9b-8b6b-0efb9f369954.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287158/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287158/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287158/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287158/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287158/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287158/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356825",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "Pietrangelo's blistering PPG",
              "blurb" : "STL@ANA: Pietrangelo hammers one-timer home for PPG",
              "description" : "Alex Pietrangelo sets up at the blue line and blasts a one-timer past Anthony Stolarz on the power play, giving the Blues a 2-1 lead in the 1st",
              "duration" : "00:41",
              "authFlow" : false,
              "mediaPlaybackId" : "5356825",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "19",
                "displayName" : "19"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "statsEventId",
                "value" : "211",
                "displayName" : "211"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138550/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138550/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138550/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138550/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138550/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138550/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138550/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138550/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138550/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138550/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138550/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138550/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138550/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138550/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138550/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138550/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138550/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138550/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138550/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138550/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138550/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138550/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138550/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138550/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138550/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138550/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138550/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138550/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138550/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138550/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/f0920485-162e-4c14-be6c-c7d5e098c169.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/e4b26232-eb24-4686-b386-6319344efac1.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/846d4831-2c9f-459d-aecd-b4c1d4310c9c.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/7dfcd4e4-a7aa-4e01-bef4-dc7eab9f6442.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286826/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286826/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286826/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286826/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286826/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286826/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356954",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "Hakanpaa's first NHL goal",
              "blurb" : "STL@ANA: Hakanpaa buries wrister for first NHL goal",
              "description" : "Jani Hakanpaa fires a wrist shot that finds its way through a screen and past Jake Allen for his first career NHL goal, tying the game at 2",
              "duration" : "00:35",
              "authFlow" : false,
              "mediaPlaybackId" : "5356954",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "24",
                "displayName" : "24"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "statsEventId",
                "value" : "470",
                "displayName" : "470"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141598/1136x640/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141598/1136x640/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141598/1136x640/cut.jpeg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141598/1024x576/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141598/1024x576/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141598/1024x576/cut.jpeg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141598/960x540/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141598/960x540/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141598/960x540/cut.jpeg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141598/768x432/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141598/768x432/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141598/768x432/cut.jpeg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141598/640x360/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141598/640x360/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141598/640x360/cut.jpeg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141598/568x320/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141598/1136x640/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141598/568x320/cut.jpeg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141598/372x210/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141598/372x210/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141598/372x210/cut.jpeg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141598/320x180/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141598/640x360/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141598/960x540/cut.jpeg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141598/248x140/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141598/248x140/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141598/248x140/cut.jpeg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141598/124x70/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141598/248x140/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141598/372x210/cut.jpeg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/517c523e-731c-4155-83a9-894c6ee7d55b.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/63935ca0-0c91-430c-8346-984ec9880611.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/a500ce22-d155-4d9d-afe9-049a57f4b840.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/930ad6eb-f700-444b-9f6a-2908a9d3a6c0.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286955/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286955/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286955/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286955/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286955/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286955/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5243970",
              "date" : "2020-02-11T22:00:00-0500",
              "title" : "Barbashev's top-shelf goal",
              "blurb" : "STL@ANA: Barbashev goes top shelf from the slot",
              "description" : "Jordan Kyrou steals the puck and feeds Ivan Barbashev, who quickly roofs a top-shelf shot past John Gibson to tie the game at 1 in the 1st",
              "duration" : "00:31",
              "authFlow" : false,
              "mediaPlaybackId" : "5243970",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "19",
                "displayName" : "19"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "statsEventId",
                "value" : "52",
                "displayName" : "52"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/314948102/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314948102/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314948102/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/314948102/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314948102/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314948102/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/314948102/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314948102/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314948102/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/314948102/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314948102/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314948102/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/314948102/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314948102/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314948102/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/314948102/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314948102/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314948102/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/314948102/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314948102/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314948102/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/314948102/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314948102/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314948102/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/314948102/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314948102/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314948102/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/314948102/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314948102/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314948102/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/ebfc30c5-1fd8-4257-9ca0-8178ff2621a0.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/8ccf94e3-1188-4cb2-8740-db41a6172f26.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/f5362c69-f03d-4033-80ef-58eeb7571b73.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/74371aa8-7099-40d2-9706-e9bbbefaee4f.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5174066/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5174066/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5174066/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5174066/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5174066/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5174066/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5243834",
              "date" : "2020-02-11T22:00:00-0500",
              "title" : "Henrique opens the scoring",
              "blurb" : "STL@ANA: Henrique tips Lindholm's shot past Allen",
              "description" : "Adam Henrique gets good position in front of the net and deflects Hampus Lindholm's shot past Jake Allen for a 1-0 lead in the 1st period",
              "duration" : "00:52",
              "authFlow" : false,
              "mediaPlaybackId" : "5243834",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "24",
                "displayName" : "24"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "statsEventId",
                "value" : "51",
                "displayName" : "51"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/314947300/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314947300/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314947300/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/314947300/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314947300/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314947300/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/314947300/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314947300/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314947300/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/314947300/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314947300/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314947300/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/314947300/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314947300/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314947300/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/314947300/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314947300/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314947300/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/314947300/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314947300/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314947300/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/314947300/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314947300/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314947300/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/314947300/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314947300/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314947300/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/314947300/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/314947300/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/314947300/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/60ae512b-7a3b-4ef7-af59-028f22440761.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/9146fd97-316d-4e16-9872-a98de845fe16.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/742b1394-4f84-42ec-8b95-c6258f2946b7.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/4fd2c30c-b552-4d50-8598-71cc8120708b.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5173930/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5173930/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5173930/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5173930/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5173930/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5173930/MasterWiredWeb.m3u8"
              } ]
            } ]
          }
        }
      }
    }, {
      "gamePk" : 2019021081,
      "link" : "/api/v1/game/2019021081/feed/live",
      "gameType" : "R",
      "season" : "20192020",
      "gameDate" : "2020-03-12T02:00:00Z",
      "status" : {
        "abstractGameState" : "Final",
        "codedGameState" : "7",
        "detailedState" : "Final",
        "statusCode" : "7",
        "startTimeTBD" : false
      },
      "teams" : {
        "away" : {
          "leagueRecord" : {
            "wins" : 37,
            "losses" : 28,
            "ot" : 5,
            "type" : "league"
          },
          "score" : 2,
          "team" : {
            "id" : 3,
            "name" : "New York Rangers",
            "link" : "/api/v1/teams/3",
            "venue" : {
              "id" : 5054,
              "name" : "Madison Square Garden",
              "link" : "/api/v1/venues/5054",
              "city" : "New York",
              "timeZone" : {
                "id" : "America/New_York",
                "offset" : -4,
                "tz" : "EDT"
              }
            },
            "abbreviation" : "NYR",
            "teamName" : "Rangers",
            "locationName" : "New York",
            "firstYearOfPlay" : "1926",
            "division" : {
              "id" : 18,
              "name" : "Metropolitan",
              "nameShort" : "Metro",
              "link" : "/api/v1/divisions/18",
              "abbreviation" : "M"
            },
            "conference" : {
              "id" : 6,
              "name" : "Eastern",
              "link" : "/api/v1/conferences/6"
            },
            "franchise" : {
              "franchiseId" : 10,
              "teamName" : "Rangers",
              "link" : "/api/v1/franchises/10"
            },
            "shortName" : "NY Rangers",
            "officialSiteUrl" : "http://www.newyorkrangers.com/",
            "franchiseId" : 10,
            "active" : true
          }
        },
        "home" : {
          "leagueRecord" : {
            "wins" : 42,
            "losses" : 20,
            "ot" : 8,
            "type" : "league"
          },
          "score" : 3,
          "team" : {
            "id" : 21,
            "name" : "Colorado Avalanche",
            "link" : "/api/v1/teams/21",
            "venue" : {
              "id" : 5064,
              "name" : "Pepsi Center",
              "link" : "/api/v1/venues/5064",
              "city" : "Denver",
              "timeZone" : {
                "id" : "America/Denver",
                "offset" : -6,
                "tz" : "MDT"
              }
            },
            "abbreviation" : "COL",
            "teamName" : "Avalanche",
            "locationName" : "Colorado",
            "firstYearOfPlay" : "1995",
            "division" : {
              "id" : 16,
              "name" : "Central",
              "nameShort" : "CEN",
              "link" : "/api/v1/divisions/16",
              "abbreviation" : "C"
            },
            "conference" : {
              "id" : 5,
              "name" : "Western",
              "link" : "/api/v1/conferences/5"
            },
            "franchise" : {
              "franchiseId" : 27,
              "teamName" : "Avalanche",
              "link" : "/api/v1/franchises/27"
            },
            "shortName" : "Colorado",
            "officialSiteUrl" : "http://www.coloradoavalanche.com/",
            "franchiseId" : 27,
            "active" : true
          }
        }
      },
      "linescore" : {
        "currentPeriod" : 4,
        "currentPeriodOrdinal" : "OT",
        "currentPeriodTimeRemaining" : "Final",
        "periods" : [ {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T02:07:39Z",
          "endTime" : "2020-03-12T02:46:29Z",
          "num" : 1,
          "ordinalNum" : "1st",
          "home" : {
            "goals" : 1,
            "shotsOnGoal" : 8,
            "rinkSide" : "right"
          },
          "away" : {
            "goals" : 1,
            "shotsOnGoal" : 10,
            "rinkSide" : "left"
          }
        }, {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T03:05:15Z",
          "endTime" : "2020-03-12T03:42:07Z",
          "num" : 2,
          "ordinalNum" : "2nd",
          "home" : {
            "goals" : 1,
            "shotsOnGoal" : 9,
            "rinkSide" : "left"
          },
          "away" : {
            "goals" : 0,
            "shotsOnGoal" : 10,
            "rinkSide" : "right"
          }
        }, {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T04:00:30Z",
          "endTime" : "2020-03-12T04:38:31Z",
          "num" : 3,
          "ordinalNum" : "3rd",
          "home" : {
            "goals" : 0,
            "shotsOnGoal" : 9,
            "rinkSide" : "right"
          },
          "away" : {
            "goals" : 1,
            "shotsOnGoal" : 12,
            "rinkSide" : "left"
          }
        }, {
          "periodType" : "OVERTIME",
          "startTime" : "2020-03-12T04:39:47Z",
          "endTime" : "2020-03-12T04:44:39Z",
          "num" : 4,
          "ordinalNum" : "OT",
          "home" : {
            "goals" : 1,
            "shotsOnGoal" : 2,
            "rinkSide" : "left"
          },
          "away" : {
            "goals" : 0,
            "shotsOnGoal" : 0,
            "rinkSide" : "right"
          }
        } ],
        "shootoutInfo" : {
          "away" : {
            "scores" : 0,
            "attempts" : 0
          },
          "home" : {
            "scores" : 0,
            "attempts" : 0
          }
        },
        "teams" : {
          "home" : {
            "team" : {
              "id" : 21,
              "name" : "Colorado Avalanche",
              "link" : "/api/v1/teams/21"
            },
            "goals" : 3,
            "shotsOnGoal" : 28,
            "goaliePulled" : false,
            "numSkaters" : 3,
            "powerPlay" : false
          },
          "away" : {
            "team" : {
              "id" : 3,
              "name" : "New York Rangers",
              "link" : "/api/v1/teams/3"
            },
            "goals" : 2,
            "shotsOnGoal" : 32,
            "goaliePulled" : false,
            "numSkaters" : 3,
            "powerPlay" : false
          }
        },
        "powerPlayStrength" : "Even",
        "hasShootout" : false,
        "intermissionInfo" : {
          "intermissionTimeRemaining" : 0,
          "intermissionTimeElapsed" : 0,
          "inIntermission" : false
        },
        "powerPlayInfo" : {
          "situationTimeRemaining" : 0,
          "situationTimeElapsed" : 170,
          "inSituation" : false
        }
      },
      "decisions" : {
        "winner" : {
          "id" : 8480925,
          "fullName" : "Pavel Francouz",
          "link" : "/api/v1/people/8480925"
        },
        "loser" : {
          "id" : 8480382,
          "fullName" : "Alexandar Georgiev",
          "link" : "/api/v1/people/8480382"
        },
        "firstStar" : {
          "id" : 8477456,
          "fullName" : "J.T. Compher",
          "link" : "/api/v1/people/8477456"
        },
        "secondStar" : {
          "id" : 8480925,
          "fullName" : "Pavel Francouz",
          "link" : "/api/v1/people/8480925"
        },
        "thirdStar" : {
          "id" : 8476480,
          "fullName" : "Vladislav Namestnikov",
          "link" : "/api/v1/people/8476480"
        }
      },
      "scoringPlays" : [ {
        "players" : [ {
          "player" : {
            "id" : 8476459,
            "fullName" : "Mika Zibanejad",
            "link" : "/api/v1/people/8476459"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 41
        }, {
          "player" : {
            "id" : 8476858,
            "fullName" : "Phillip Di Giuseppe",
            "link" : "/api/v1/people/8476858"
          },
          "playerType" : "Assist",
          "seasonTotal" : 3
        }, {
          "player" : {
            "id" : 8479323,
            "fullName" : "Adam Fox",
            "link" : "/api/v1/people/8479323"
          },
          "playerType" : "Assist",
          "seasonTotal" : 33
        }, {
          "player" : {
            "id" : 8480925,
            "fullName" : "Pavel Francouz",
            "link" : "/api/v1/people/8480925"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "COL75",
          "eventTypeId" : "GOAL",
          "description" : "Mika Zibanejad (41) Wrist Shot, assists: Phillip Di Giuseppe (3), Adam Fox (33)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 33,
          "eventId" : 75,
          "period" : 1,
          "periodType" : "REGULAR",
          "ordinalNum" : "1st",
          "periodTime" : "06:28",
          "periodTimeRemaining" : "13:32",
          "dateTime" : "2020-03-12T02:18:52Z",
          "goals" : {
            "away" : 1,
            "home" : 0
          }
        },
        "coordinates" : {
          "x" : 62.0,
          "y" : -19.0
        },
        "team" : {
          "id" : 3,
          "name" : "New York Rangers",
          "link" : "/api/v1/teams/3"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8479370,
            "fullName" : "Tyson Jost",
            "link" : "/api/v1/people/8479370"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 8
        }, {
          "player" : {
            "id" : 8476455,
            "fullName" : "Gabriel Landeskog",
            "link" : "/api/v1/people/8476455"
          },
          "playerType" : "Assist",
          "seasonTotal" : 22
        }, {
          "player" : {
            "id" : 8480069,
            "fullName" : "Cale Makar",
            "link" : "/api/v1/people/8480069"
          },
          "playerType" : "Assist",
          "seasonTotal" : 36
        }, {
          "player" : {
            "id" : 8480382,
            "fullName" : "Alexandar Georgiev",
            "link" : "/api/v1/people/8480382"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "COL85",
          "eventTypeId" : "GOAL",
          "description" : "Tyson Jost (8) Wrist Shot, assists: Gabriel Landeskog (22), Cale Makar (36)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "PPG",
            "name" : "Power Play"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 55,
          "eventId" : 85,
          "period" : 1,
          "periodType" : "REGULAR",
          "ordinalNum" : "1st",
          "periodTime" : "11:27",
          "periodTimeRemaining" : "08:33",
          "dateTime" : "2020-03-12T02:29:38Z",
          "goals" : {
            "away" : 1,
            "home" : 1
          }
        },
        "coordinates" : {
          "x" : -65.0,
          "y" : 15.0
        },
        "team" : {
          "id" : 21,
          "name" : "Colorado Avalanche",
          "link" : "/api/v1/teams/21"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8476480,
            "fullName" : "Vladislav Namestnikov",
            "link" : "/api/v1/people/8476480"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 17
        }, {
          "player" : {
            "id" : 8480069,
            "fullName" : "Cale Makar",
            "link" : "/api/v1/people/8480069"
          },
          "playerType" : "Assist",
          "seasonTotal" : 37
        }, {
          "player" : {
            "id" : 8476455,
            "fullName" : "Gabriel Landeskog",
            "link" : "/api/v1/people/8476455"
          },
          "playerType" : "Assist",
          "seasonTotal" : 23
        }, {
          "player" : {
            "id" : 8480382,
            "fullName" : "Alexandar Georgiev",
            "link" : "/api/v1/people/8480382"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "COL274",
          "eventTypeId" : "GOAL",
          "description" : "Vladislav Namestnikov (17) Wrist Shot, assists: Cale Makar (37), Gabriel Landeskog (23)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "PPG",
            "name" : "Power Play"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 118,
          "eventId" : 274,
          "period" : 2,
          "periodType" : "REGULAR",
          "ordinalNum" : "2nd",
          "periodTime" : "03:55",
          "periodTimeRemaining" : "16:05",
          "dateTime" : "2020-03-12T03:11:06Z",
          "goals" : {
            "away" : 1,
            "home" : 2
          }
        },
        "coordinates" : {
          "x" : 56.0,
          "y" : 22.0
        },
        "team" : {
          "id" : 21,
          "name" : "Colorado Avalanche",
          "link" : "/api/v1/teams/21"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8477402,
            "fullName" : "Pavel Buchnevich",
            "link" : "/api/v1/people/8477402"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 16
        }, {
          "player" : {
            "id" : 8478550,
            "fullName" : "Artemi Panarin",
            "link" : "/api/v1/people/8478550"
          },
          "playerType" : "Assist",
          "seasonTotal" : 63
        }, {
          "player" : {
            "id" : 8479323,
            "fullName" : "Adam Fox",
            "link" : "/api/v1/people/8479323"
          },
          "playerType" : "Assist",
          "seasonTotal" : 34
        }, {
          "player" : {
            "id" : 8480925,
            "fullName" : "Pavel Francouz",
            "link" : "/api/v1/people/8480925"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "COL728",
          "eventTypeId" : "GOAL",
          "description" : "Pavel Buchnevich (16) Tip-In, assists: Artemi Panarin (63), Adam Fox (34)",
          "secondaryType" : "Tip-In",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 289,
          "eventId" : 728,
          "period" : 3,
          "periodType" : "REGULAR",
          "ordinalNum" : "3rd",
          "periodTime" : "19:47",
          "periodTimeRemaining" : "00:13",
          "dateTime" : "2020-03-12T04:36:54Z",
          "goals" : {
            "away" : 2,
            "home" : 2
          }
        },
        "coordinates" : {
          "x" : 82.0,
          "y" : 1.0
        },
        "team" : {
          "id" : 3,
          "name" : "New York Rangers",
          "link" : "/api/v1/teams/3"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8477456,
            "fullName" : "J.T. Compher",
            "link" : "/api/v1/people/8477456"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 11
        }, {
          "player" : {
            "id" : 8480069,
            "fullName" : "Cale Makar",
            "link" : "/api/v1/people/8480069"
          },
          "playerType" : "Assist",
          "seasonTotal" : 38
        }, {
          "player" : {
            "id" : 8477930,
            "fullName" : "Pierre-Edouard Bellemare",
            "link" : "/api/v1/people/8477930"
          },
          "playerType" : "Assist",
          "seasonTotal" : 13
        }, {
          "player" : {
            "id" : 8480382,
            "fullName" : "Alexandar Georgiev",
            "link" : "/api/v1/people/8480382"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "COL741",
          "eventTypeId" : "GOAL",
          "description" : "J.T. Compher (11) Tip-In, assists: Cale Makar (38), Pierre-Edouard Bellemare (13)",
          "secondaryType" : "Tip-In",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : true,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 301,
          "eventId" : 741,
          "period" : 4,
          "periodType" : "OVERTIME",
          "ordinalNum" : "OT",
          "periodTime" : "02:50",
          "periodTimeRemaining" : "02:10",
          "dateTime" : "2020-03-12T04:43:38Z",
          "goals" : {
            "away" : 2,
            "home" : 3
          }
        },
        "coordinates" : {
          "x" : 72.0,
          "y" : -3.0
        },
        "team" : {
          "id" : 21,
          "name" : "Colorado Avalanche",
          "link" : "/api/v1/teams/21"
        }
      } ],
      "venue" : {
        "id" : 5064,
        "name" : "Pepsi Center",
        "link" : "/api/v1/venues/5064"
      },
      "tickets" : [ {
        "ticketType" : "clubWebSchedule",
        "ticketLink" : "https://www.altitudetickets.com/events/detail/colorado-avalanche-new-york-rangers-mar-11?brand=altitx&camefrom=CFC_KSE_KYC9J9ulzEaEolt91GtflQ&utm_source=KYC9J9ulzEaEolt91GtflQ&utm_medium=KYC9J9ulzEaEolt91GtflQ&utm_campaign=KYC9J9ulzEaEolt91GtflQ"
      }, {
        "ticketType" : "clubWebScheduleBuySell",
        "ticketLink" : "https://www.altitudetickets.com/events/detail/colorado-avalanche-new-york-rangers-mar-11?brand=altitx&camefrom=CFC_KSE_KYC9J9ulzEaEolt91GtflQ&utm_source=KYC9J9ulzEaEolt91GtflQ&utm_medium=KYC9J9ulzEaEolt91GtflQ&utm_campaign=KYC9J9ulzEaEolt91GtflQ"
      }, {
        "ticketType" : "leagueWebScoresPage",
        "ticketLink" : "https://www.altitudetickets.com/events/detail/colorado-avalanche-new-york-rangers-mar-11?brand=altitx&camefrom=CFC_KSE_KYC9J9ulzEaEolt91GtflQ&utm_source=KYC9J9ulzEaEolt91GtflQ&utm_medium=KYC9J9ulzEaEolt91GtflQ&utm_campaign=KYC9J9ulzEaEolt91GtflQ"
      }, {
        "ticketType" : "leagueWebGamecenterPreview",
        "ticketLink" : "https://www.altitudetickets.com/events/detail/colorado-avalanche-new-york-rangers-mar-11?brand=altitx&camefrom=CFC_KSE_KYC9J9ulzEaEolt91GtflQ&utm_source=KYC9J9ulzEaEolt91GtflQ&utm_medium=KYC9J9ulzEaEolt91GtflQ&utm_campaign=KYC9J9ulzEaEolt91GtflQ"
      }, {
        "ticketType" : "clubWebMIG",
        "ticketLink" : "https://www.altitudetickets.com/events/detail/colorado-avalanche-new-york-rangers-mar-11?brand=altitx&camefrom=CFC_KSE_KYC9J9ulzEaEolt91GtflQ&utm_source=KYC9J9ulzEaEolt91GtflQ&utm_medium=KYC9J9ulzEaEolt91GtflQ&utm_campaign=KYC9J9ulzEaEolt91GtflQ"
      }, {
        "ticketType" : "leagueWebHorizontalScoreboard",
        "ticketLink" : "https://www.altitudetickets.com/events/detail/colorado-avalanche-new-york-rangers-mar-11?brand=altitx&camefrom=CFC_KSE_KYC9J9ulzEaEolt91GtflQ&utm_source=KYC9J9ulzEaEolt91GtflQ&utm_medium=KYC9J9ulzEaEolt91GtflQ&utm_campaign=KYC9J9ulzEaEolt91GtflQ"
      }, {
        "ticketType" : "leagueWebScheduleBuySell",
        "ticketLink" : "http://www.ticketexchangebyticketmaster.com/NHL/ResaleOrder/Colorado-Avalanche-Tickets-at-Pepsi-Center-in-Denver-3-11-2020-Tickets/Tickets/2722549?wt.mc_id=NHL_LEAGUE_COL_SCHEDULE_BUYSELL_GAME33&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_COL&utm_content=SCHEDULE_BUYSELL_GAME33"
      }, {
        "ticketType" : "leagueAppScoreTab",
        "ticketLink" : "https://www.altitudetickets.com/events/detail/colorado-avalanche-new-york-rangers-mar-11?brand=altitx&camefrom=CFC_KSE_KYC9J9ulzEaEolt91GtflQ&utm_source=KYC9J9ulzEaEolt91GtflQ&utm_medium=KYC9J9ulzEaEolt91GtflQ&utm_campaign=KYC9J9ulzEaEolt91GtflQ"
      }, {
        "ticketType" : "leagueWebSchedule",
        "ticketLink" : "https://www.altitudetickets.com/events/detail/colorado-avalanche-new-york-rangers-mar-11?brand=altitx&camefrom=CFC_KSE_KYC9J9ulzEaEolt91GtflQ&utm_source=KYC9J9ulzEaEolt91GtflQ&utm_medium=KYC9J9ulzEaEolt91GtflQ&utm_campaign=KYC9J9ulzEaEolt91GtflQ"
      }, {
        "ticketType" : "clubWebHorizontalScoreboard",
        "ticketLink" : "https://www.altitudetickets.com/events/detail/colorado-avalanche-new-york-rangers-mar-11?brand=altitx&camefrom=CFC_KSE_KYC9J9ulzEaEolt91GtflQ&utm_source=KYC9J9ulzEaEolt91GtflQ&utm_medium=KYC9J9ulzEaEolt91GtflQ&utm_campaign=KYC9J9ulzEaEolt91GtflQ"
      }, {
        "ticketType" : "clubAppScoreTile",
        "ticketLink" : "https://www.altitudetickets.com/events/detail/colorado-avalanche-new-york-rangers-mar-11?brand=altitx&camefrom=CFC_KSE_KYC9J9ulzEaEolt91GtflQ&utm_source=KYC9J9ulzEaEolt91GtflQ&utm_medium=KYC9J9ulzEaEolt91GtflQ&utm_campaign=KYC9J9ulzEaEolt91GtflQ"
      }, {
        "ticketType" : "leagueAppGamecenterPreview",
        "ticketLink" : "https://www.altitudetickets.com/events/detail/colorado-avalanche-new-york-rangers-mar-11?brand=altitx&camefrom=CFC_KSE_KYC9J9ulzEaEolt91GtflQ&utm_source=KYC9J9ulzEaEolt91GtflQ&utm_medium=KYC9J9ulzEaEolt91GtflQ&utm_campaign=KYC9J9ulzEaEolt91GtflQ"
      }, {
        "ticketType" : "googleOneBox",
        "ticketLink" : "https://www.altitudetickets.com/events/detail/colorado-avalanche-new-york-rangers-mar-11?brand=altitx&camefrom=CFC_KSE_SG2MuMpgiku3PCppjftfrw&utm_source=SG2MuMpgiku3PCppjftfrw&utm_medium=SG2MuMpgiku3PCppjftfrw&utm_campaign=SG2MuMpgiku3PCppjftfrw"
      } ],
      "content" : {
        "link" : "/api/v1/game/2019021081/content",
        "editorial" : { },
        "media" : {
          "epg" : [ {
            "title" : "NHLTV",
            "platform" : "web",
            "items" : [ {
              "guid" : "f512bab8-f874-45dd-807a-5b26da408514",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71316303",
              "mediaFeedType" : "HOME",
              "callLetters" : "ALT",
              "eventId" : "221-2004547",
              "language" : "eng",
              "freeGame" : true,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "guid" : "52e48b33-240d-4711-bf8b-cabf46e7ded1",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71316403",
              "mediaFeedType" : "AWAY",
              "callLetters" : "MSG+",
              "eventId" : "221-2004547",
              "language" : "eng",
              "freeGame" : true,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "guid" : "e36dc8ff-b154-4466-940f-e5dc5668d987",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71316903",
              "mediaFeedType" : "COMPOSITE",
              "callLetters" : "",
              "eventId" : "221-2004547",
              "language" : "eng",
              "freeGame" : true,
              "feedName" : "Multi-Cam 1",
              "gamePlus" : false
            } ]
          }, {
            "title" : "Audio",
            "items" : [ {
              "mediaState" : "MEDIA_DONE",
              "mediaPlaybackId" : "71316503",
              "mediaFeedType" : "HOME",
              "callLetters" : "KKSE",
              "eventId" : "221-2004547",
              "language" : "eng",
              "freeGame" : false,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "mediaState" : "MEDIA_DONE",
              "mediaPlaybackId" : "71316603",
              "mediaFeedType" : "AWAY",
              "callLetters" : "WEPN",
              "eventId" : "221-2004547",
              "language" : "eng",
              "freeGame" : false,
              "feedName" : "",
              "gamePlus" : false
            } ]
          }, {
            "title" : "Extended Highlights",
            "topicList" : "313535324",
            "items" : [ {
              "type" : "video",
              "id" : "5357284",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "NYR @ COL",
              "blurb" : "Condensed Game: Rangers @ Avalanche",
              "description" : "Extended highlights of the New York Rangers at the Colorado Avalanche",
              "duration" : "09:02",
              "authFlow" : false,
              "mediaPlaybackId" : "5357284",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "21",
                "displayName" : "21"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "extendedHighlights",
                "displayName" : "Condensed Game"
              }, {
                "type" : "teamId",
                "value" : "3",
                "displayName" : "3"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149522/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149522/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149522/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149522/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149522/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149522/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149522/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149522/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149522/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149522/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149522/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149522/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149522/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149522/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149522/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149522/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149522/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149522/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149522/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149522/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149522/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149522/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149522/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149522/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149522/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149522/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149522/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149522/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149522/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149522/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/81599a5b-dcf2-4901-9f38-8af40a8ffd6a.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/d1073be9-f689-4fa0-b006-c0f33880cdf4.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/58c6e949-7571-407e-9810-8daed9b465be.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/284e3ef8-b7d3-43e7-96f8-03d1031d4d1f.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287285/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287285/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287285/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287285/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287285/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287285/MasterWiredWeb.m3u8"
              } ]
            } ]
          }, {
            "title" : "Recap",
            "topicList" : "313535324",
            "items" : [ {
              "type" : "video",
              "id" : "5357283",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "Recap: NYR 2, COL 3 - F/OT",
              "blurb" : "Compher scores OT winner as Avalanche beat Rangers",
              "description" : "J.T. Compher scored the game-winning goal in overtime to give the Avalanche a 3-2 victory against the Rangers",
              "duration" : "05:03",
              "authFlow" : false,
              "mediaPlaybackId" : "5357283",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "21",
                "displayName" : "21"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "gameRecap",
                "displayName" : "game recap"
              }, {
                "type" : "content",
                "value" : "teamRecap",
                "displayName" : "Team Recap"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149486/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149486/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149486/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149486/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149486/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149486/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149486/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149486/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149486/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149486/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149486/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149486/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149486/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149486/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149486/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149486/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149486/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149486/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149486/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149486/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149486/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149486/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149486/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149486/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149486/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149486/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149486/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149486/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149486/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149486/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/5aba3e39-9f70-479a-a943-e5265a2833f1.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/e952d1e2-5aef-40ea-a1f5-070d1054844e.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/cb0241de-150f-4b3e-a943-f257b8b55bd0.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/a7f0a3e0-0338-492a-9f7a-01648330482c.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287284/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287284/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287284/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287284/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287284/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287284/MasterWiredWeb.m3u8"
              } ]
            } ]
          }, {
            "title" : "Power Play",
            "items" : [ ]
          } ]
        },
        "highlights" : {
          "scoreboard" : {
            "title" : "Highlights",
            "topicList" : "313535324",
            "items" : [ {
              "type" : "video",
              "id" : "5357254",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "Compher scores game-winner in OT",
              "blurb" : "NYR@COL: Compher tips home game-winner in overtime",
              "description" : "J.T. Compher gets his stick on Cale Makar's shot from the point and tips in the game-winning goal in overtime",
              "duration" : "00:39",
              "authFlow" : false,
              "mediaPlaybackId" : "5357254",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "statsEventId",
                "value" : "741",
                "displayName" : "741"
              }, {
                "type" : "teamId",
                "value" : "21",
                "displayName" : "21"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "control",
                "value" : "otGwg",
                "displayName" : "OT GWG"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316147738/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316147738/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316147738/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316147738/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316147738/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316147738/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316147738/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316147738/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316147738/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316147738/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316147738/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316147738/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316147738/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316147738/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316147738/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316147738/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316147738/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316147738/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316147738/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316147738/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316147738/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316147738/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316147738/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316147738/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316147738/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316147738/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316147738/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316147738/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316147738/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316147738/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/6b797faa-5e6d-4fe7-b8e3-626d0a5d9ef0.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/04262796-ce4a-4a84-872d-3d87817050f6.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/8d205662-41a2-4537-8f55-2ad90133f075.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/c0f14cd9-15e8-4146-ab78-cf11cef2d531.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287255/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287255/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287255/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287255/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287255/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287255/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356781",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "Jost's power-play goal",
              "blurb" : "NYR@COL: Jost buries shot for power-play goal",
              "description" : "Tyson Jost fires a shot from the circle that finds the back of the net to tie the score at 1 with a power-play goal",
              "duration" : "00:37",
              "authFlow" : false,
              "mediaPlaybackId" : "5356781",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "statsEventId",
                "value" : "85",
                "displayName" : "85"
              }, {
                "type" : "teamId",
                "value" : "21",
                "displayName" : "21"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139224/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139224/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139224/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139224/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139224/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139224/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139224/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139224/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139224/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139224/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139224/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139224/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139224/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139224/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139224/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139224/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139224/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139224/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139224/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139224/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139224/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139224/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139224/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139224/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139224/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139224/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139224/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316139224/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316139224/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316139224/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/fc02a688-7d20-491c-943d-3ade29b99e97.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/7b4f9742-f75e-439d-b8e1-2ecaf7fba4f6.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/f4a79628-5a91-481b-bb63-a5321a1a5da9.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/38e8f8c1-25b6-426c-8493-a138ce8ae621.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286782/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286782/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286782/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286782/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286782/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286782/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356919",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "Namestnikov pots wrister for PPG",
              "blurb" : "NYR@COL: Namestnikov send home wrist shot for PPG",
              "description" : "Vladislav Namestnikov rips a wrist shot that finds the back of the net for a power-play goal in the 2nd period",
              "duration" : "00:49",
              "authFlow" : false,
              "mediaPlaybackId" : "5356919",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "21",
                "displayName" : "21"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "statsEventId",
                "value" : "274",
                "displayName" : "274"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141390/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141390/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141390/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141390/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141390/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141390/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141390/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141390/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141390/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141390/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141390/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141390/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141390/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141390/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141390/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141390/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141390/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141390/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141390/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141390/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141390/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141390/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141390/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141390/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141390/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141390/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141390/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316141390/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316141390/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316141390/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/e1943fda-e3a3-4969-8512-2f708013ce8f.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/b94e390f-0d7c-4bee-83e7-8608409beca6.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/21f8f2ae-1931-40d7-9037-9921f780a18c.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/1c28764c-0aa4-4e92-b325-cc69ec3b16a2.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286920/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286920/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286920/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286920/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286920/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286920/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356614",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "Zibanejad nets opening goal",
              "blurb" : "NYR@COL: Zibanejad wires home wicked wrist shot",
              "description" : "Mika Zibanejad skates into the top of the circle and fires a wrist shot into the back of the net to give the Rangers a 1-0 lead",
              "duration" : "00:42",
              "authFlow" : false,
              "mediaPlaybackId" : "5356614",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "teamId",
                "value" : "3",
                "displayName" : "3"
              }, {
                "type" : "statsEventId",
                "value" : "75",
                "displayName" : "75"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138528/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138528/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138528/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138528/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138528/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138528/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138528/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138528/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138528/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138528/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138528/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138528/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138528/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138528/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138528/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138528/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138528/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138528/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138528/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138528/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138528/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138528/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138528/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138528/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138528/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138528/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138528/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316138528/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316138528/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316138528/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/389ae43b-0794-4d1f-9fc8-4394d811366f.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/26baa29d-7a55-4f41-8ebb-2480229a8e53.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/44f2e15e-da92-415c-885a-afa0cd7d1a97.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/a376fa6c-7b34-4e85-8384-11b14dc17dfc.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286615/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286615/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286615/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286615/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286615/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286615/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5357183",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "Francouz makes save",
              "blurb" : "NYR@COL: Francouz makes save on Zibanejad",
              "description" : "Pavel Francouz makes a save on Mika Zibanejad in the 3rd period",
              "duration" : "00:28",
              "authFlow" : false,
              "mediaPlaybackId" : "5357183",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "21",
                "displayName" : "21"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "statsEventId",
                "value" : "724",
                "displayName" : "724"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316145446/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316145446/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316145446/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316145446/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316145446/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316145446/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316145446/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316145446/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316145446/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316145446/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316145446/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316145446/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316145446/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316145446/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316145446/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316145446/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316145446/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316145446/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316145446/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316145446/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316145446/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316145446/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316145446/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316145446/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316145446/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316145446/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316145446/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316145446/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316145446/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316145446/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/6c283c4e-f5f4-4ec6-adaa-0137c1d2038e.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/4e5f0d90-0f86-42cf-bcdc-681c65727cd6.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/c40be71f-8fdd-4788-961b-5aa764cc7489.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/ab1ad312-97d8-439f-919a-7edbc7ca0eb9.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287184/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287184/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287184/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287184/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287184/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287184/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5357145",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "Francouz makes save",
              "blurb" : "NYR@COL: Francouz makes save on Kakko",
              "description" : "Pavel Francouz makes a save on Kaapo Kakko in the 3rd period",
              "duration" : "00:27",
              "authFlow" : false,
              "mediaPlaybackId" : "5357145",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "statsEventId",
                "value" : "710",
                "displayName" : "710"
              }, {
                "type" : "teamId",
                "value" : "21",
                "displayName" : "21"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144578/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144578/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144578/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144578/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144578/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144578/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144578/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144578/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144578/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144578/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144578/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144578/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144578/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144578/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144578/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144578/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144578/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144578/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144578/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144578/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144578/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144578/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144578/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144578/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144578/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144578/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144578/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144578/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144578/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144578/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/436a4e63-f08b-4140-bb8d-5cdb279f4c7e.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/3c1085ac-5ee6-4b8a-9144-7303029ff18f.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/080f6500-def9-4d8a-ac49-83b1d7917ac1.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/3a90eec0-406a-48ac-9ac1-38a8ad3d99a0.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287146/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287146/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287146/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287146/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287146/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287146/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5357188",
              "date" : "2020-03-11T22:00:00-0400",
              "title" : "Buchnevich's clutch goal",
              "blurb" : "NYR@COL: Buchnevich scores late game-tying goal",
              "description" : "Pavel Buchnevich tips in the game-tying goal with 13 seconds remaining late in the 3rd period",
              "duration" : "00:51",
              "authFlow" : false,
              "mediaPlaybackId" : "5357188",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "teamId",
                "value" : "3",
                "displayName" : "3"
              }, {
                "type" : "statsEventId",
                "value" : "728",
                "displayName" : "728"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146220/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146220/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146220/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146220/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146220/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146220/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146220/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146220/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146220/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146220/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146220/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146220/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146220/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146220/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146220/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146220/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146220/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146220/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146220/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146220/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146220/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146220/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146220/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146220/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146220/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146220/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146220/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146220/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146220/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146220/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/4d4a38f2-d048-4b85-98d3-648357a93201.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/4c6d5335-4f60-4020-840b-ce1fe5e7c0d9.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/6fb92f72-a3ac-412e-a3fb-912dc3c86a15.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/0930e081-ef8d-4949-8f64-74df726e13a3.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287189/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287189/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287189/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287189/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287189/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287189/MasterWiredWeb.m3u8"
              } ]
            } ]
          }
        }
      }
    }, {
      "gamePk" : 2019021082,
      "link" : "/api/v1/game/2019021082/feed/live",
      "gameType" : "R",
      "season" : "20192020",
      "gameDate" : "2020-03-12T02:30:00Z",
      "status" : {
        "abstractGameState" : "Final",
        "codedGameState" : "7",
        "detailedState" : "Final",
        "statusCode" : "7",
        "startTimeTBD" : false
      },
      "teams" : {
        "away" : {
          "leagueRecord" : {
            "wins" : 25,
            "losses" : 34,
            "ot" : 12,
            "type" : "league"
          },
          "score" : 2,
          "team" : {
            "id" : 9,
            "name" : "Ottawa Senators",
            "link" : "/api/v1/teams/9",
            "venue" : {
              "id" : 5031,
              "name" : "Canadian Tire Centre",
              "link" : "/api/v1/venues/5031",
              "city" : "Ottawa",
              "timeZone" : {
                "id" : "America/New_York",
                "offset" : -4,
                "tz" : "EDT"
              }
            },
            "abbreviation" : "OTT",
            "teamName" : "Senators",
            "locationName" : "Ottawa",
            "firstYearOfPlay" : "1992",
            "division" : {
              "id" : 17,
              "name" : "Atlantic",
              "nameShort" : "ATL",
              "link" : "/api/v1/divisions/17",
              "abbreviation" : "A"
            },
            "conference" : {
              "id" : 6,
              "name" : "Eastern",
              "link" : "/api/v1/conferences/6"
            },
            "franchise" : {
              "franchiseId" : 30,
              "teamName" : "Senators",
              "link" : "/api/v1/franchises/30"
            },
            "shortName" : "Ottawa",
            "officialSiteUrl" : "http://www.ottawasenators.com/",
            "franchiseId" : 30,
            "active" : true
          }
        },
        "home" : {
          "leagueRecord" : {
            "wins" : 29,
            "losses" : 35,
            "ot" : 6,
            "type" : "league"
          },
          "score" : 3,
          "team" : {
            "id" : 26,
            "name" : "Los Angeles Kings",
            "link" : "/api/v1/teams/26",
            "venue" : {
              "id" : 5081,
              "name" : "STAPLES Center",
              "link" : "/api/v1/venues/5081",
              "city" : "Los Angeles",
              "timeZone" : {
                "id" : "America/Los_Angeles",
                "offset" : -7,
                "tz" : "PDT"
              }
            },
            "abbreviation" : "LAK",
            "teamName" : "Kings",
            "locationName" : "Los Angeles",
            "firstYearOfPlay" : "1967",
            "division" : {
              "id" : 15,
              "name" : "Pacific",
              "nameShort" : "PAC",
              "link" : "/api/v1/divisions/15",
              "abbreviation" : "P"
            },
            "conference" : {
              "id" : 5,
              "name" : "Western",
              "link" : "/api/v1/conferences/5"
            },
            "franchise" : {
              "franchiseId" : 14,
              "teamName" : "Kings",
              "link" : "/api/v1/franchises/14"
            },
            "shortName" : "Los Angeles",
            "officialSiteUrl" : "http://www.lakings.com/",
            "franchiseId" : 14,
            "active" : true
          }
        }
      },
      "linescore" : {
        "currentPeriod" : 3,
        "currentPeriodOrdinal" : "3rd",
        "currentPeriodTimeRemaining" : "Final",
        "periods" : [ {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T02:38:08Z",
          "endTime" : "2020-03-12T03:13:12Z",
          "num" : 1,
          "ordinalNum" : "1st",
          "home" : {
            "goals" : 1,
            "shotsOnGoal" : 13,
            "rinkSide" : "right"
          },
          "away" : {
            "goals" : 1,
            "shotsOnGoal" : 10,
            "rinkSide" : "left"
          }
        }, {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T03:31:30Z",
          "endTime" : "2020-03-12T04:09:10Z",
          "num" : 2,
          "ordinalNum" : "2nd",
          "home" : {
            "goals" : 0,
            "shotsOnGoal" : 11,
            "rinkSide" : "left"
          },
          "away" : {
            "goals" : 0,
            "shotsOnGoal" : 8,
            "rinkSide" : "right"
          }
        }, {
          "periodType" : "REGULAR",
          "startTime" : "2020-03-12T04:27:09Z",
          "endTime" : "2020-03-12T05:00:27Z",
          "num" : 3,
          "ordinalNum" : "3rd",
          "home" : {
            "goals" : 2,
            "shotsOnGoal" : 15,
            "rinkSide" : "right"
          },
          "away" : {
            "goals" : 1,
            "shotsOnGoal" : 8,
            "rinkSide" : "left"
          }
        } ],
        "shootoutInfo" : {
          "away" : {
            "scores" : 0,
            "attempts" : 0
          },
          "home" : {
            "scores" : 0,
            "attempts" : 0
          }
        },
        "teams" : {
          "home" : {
            "team" : {
              "id" : 26,
              "name" : "Los Angeles Kings",
              "link" : "/api/v1/teams/26"
            },
            "goals" : 3,
            "shotsOnGoal" : 39,
            "goaliePulled" : false,
            "numSkaters" : 5,
            "powerPlay" : false
          },
          "away" : {
            "team" : {
              "id" : 9,
              "name" : "Ottawa Senators",
              "link" : "/api/v1/teams/9"
            },
            "goals" : 2,
            "shotsOnGoal" : 26,
            "goaliePulled" : false,
            "numSkaters" : 5,
            "powerPlay" : false
          }
        },
        "powerPlayStrength" : "Even",
        "hasShootout" : false,
        "intermissionInfo" : {
          "intermissionTimeRemaining" : 0,
          "intermissionTimeElapsed" : 0,
          "inIntermission" : false
        },
        "powerPlayInfo" : {
          "situationTimeRemaining" : 0,
          "situationTimeElapsed" : 0,
          "inSituation" : false
        }
      },
      "decisions" : {
        "winner" : {
          "id" : 8477361,
          "fullName" : "Calvin Petersen",
          "link" : "/api/v1/people/8477361"
        },
        "loser" : {
          "id" : 8467950,
          "fullName" : "Craig Anderson",
          "link" : "/api/v1/people/8467950"
        },
        "firstStar" : {
          "id" : 8480014,
          "fullName" : "Gabriel Vilardi",
          "link" : "/api/v1/people/8480014"
        },
        "secondStar" : {
          "id" : 8478911,
          "fullName" : "Matt Roy",
          "link" : "/api/v1/people/8478911"
        },
        "thirdStar" : {
          "id" : 8476924,
          "fullName" : "Martin Frk",
          "link" : "/api/v1/people/8476924"
        }
      },
      "scoringPlays" : [ {
        "players" : [ {
          "player" : {
            "id" : 8471676,
            "fullName" : "Bobby Ryan",
            "link" : "/api/v1/people/8471676"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 5
        }, {
          "player" : {
            "id" : 8480801,
            "fullName" : "Brady Tkachuk",
            "link" : "/api/v1/people/8480801"
          },
          "playerType" : "Assist",
          "seasonTotal" : 23
        }, {
          "player" : {
            "id" : 8478400,
            "fullName" : "Colin White",
            "link" : "/api/v1/people/8478400"
          },
          "playerType" : "Assist",
          "seasonTotal" : 16
        }, {
          "player" : {
            "id" : 8477361,
            "fullName" : "Calvin Petersen",
            "link" : "/api/v1/people/8477361"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "LAK151",
          "eventTypeId" : "GOAL",
          "description" : "Bobby Ryan (5) Wrist Shot, assists: Brady Tkachuk (23), Colin White (16)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 4,
          "eventId" : 151,
          "period" : 1,
          "periodType" : "REGULAR",
          "ordinalNum" : "1st",
          "periodTime" : "00:29",
          "periodTimeRemaining" : "19:31",
          "dateTime" : "2020-03-12T02:39:06Z",
          "goals" : {
            "away" : 1,
            "home" : 0
          }
        },
        "coordinates" : {
          "x" : 72.0,
          "y" : 16.0
        },
        "team" : {
          "id" : 9,
          "name" : "Ottawa Senators",
          "link" : "/api/v1/teams/9"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8473453,
            "fullName" : "Trevor Lewis",
            "link" : "/api/v1/people/8473453"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 6
        }, {
          "player" : {
            "id" : 8477960,
            "fullName" : "Adrian Kempe",
            "link" : "/api/v1/people/8477960"
          },
          "playerType" : "Assist",
          "seasonTotal" : 21
        }, {
          "player" : {
            "id" : 8477018,
            "fullName" : "Ben Hutton",
            "link" : "/api/v1/people/8477018"
          },
          "playerType" : "Assist",
          "seasonTotal" : 12
        }, {
          "player" : {
            "id" : 8467950,
            "fullName" : "Craig Anderson",
            "link" : "/api/v1/people/8467950"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "LAK167",
          "eventTypeId" : "GOAL",
          "description" : "Trevor Lewis (6) Wrist Shot, assists: Adrian Kempe (21), Ben Hutton (12)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 42,
          "eventId" : 167,
          "period" : 1,
          "periodType" : "REGULAR",
          "ordinalNum" : "1st",
          "periodTime" : "10:09",
          "periodTimeRemaining" : "09:51",
          "dateTime" : "2020-03-12T02:52:51Z",
          "goals" : {
            "away" : 1,
            "home" : 1
          }
        },
        "coordinates" : {
          "x" : -79.0,
          "y" : -2.0
        },
        "team" : {
          "id" : 26,
          "name" : "Los Angeles Kings",
          "link" : "/api/v1/teams/26"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8477963,
            "fullName" : "Jayce Hawryluk",
            "link" : "/api/v1/people/8477963"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 3
        }, {
          "player" : {
            "id" : 8477971,
            "fullName" : "Andreas Englund",
            "link" : "/api/v1/people/8477971"
          },
          "playerType" : "Assist",
          "seasonTotal" : 3
        }, {
          "player" : {
            "id" : 8477426,
            "fullName" : "Nick Paul",
            "link" : "/api/v1/people/8477426"
          },
          "playerType" : "Assist",
          "seasonTotal" : 11
        }, {
          "player" : {
            "id" : 8477361,
            "fullName" : "Calvin Petersen",
            "link" : "/api/v1/people/8477361"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "LAK488",
          "eventTypeId" : "GOAL",
          "description" : "Jayce Hawryluk (3) Tip-In, assists: Andreas Englund (3), Nick Paul (11)",
          "secondaryType" : "Tip-In",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 217,
          "eventId" : 488,
          "period" : 3,
          "periodType" : "REGULAR",
          "ordinalNum" : "3rd",
          "periodTime" : "01:57",
          "periodTimeRemaining" : "18:03",
          "dateTime" : "2020-03-12T04:29:28Z",
          "goals" : {
            "away" : 2,
            "home" : 1
          }
        },
        "coordinates" : {
          "x" : 86.0,
          "y" : -4.0
        },
        "team" : {
          "id" : 9,
          "name" : "Ottawa Senators",
          "link" : "/api/v1/teams/9"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8480014,
            "fullName" : "Gabriel Vilardi",
            "link" : "/api/v1/people/8480014"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 3
        }, {
          "player" : {
            "id" : 8480336,
            "fullName" : "Sean Walker",
            "link" : "/api/v1/people/8480336"
          },
          "playerType" : "Assist",
          "seasonTotal" : 19
        }, {
          "player" : {
            "id" : 8478911,
            "fullName" : "Matt Roy",
            "link" : "/api/v1/people/8478911"
          },
          "playerType" : "Assist",
          "seasonTotal" : 14
        }, {
          "player" : {
            "id" : 8467950,
            "fullName" : "Craig Anderson",
            "link" : "/api/v1/people/8467950"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "LAK758",
          "eventTypeId" : "GOAL",
          "description" : "Gabriel Vilardi (3) Snap Shot, assists: Sean Walker (19), Matt Roy (14)",
          "secondaryType" : "Snap Shot",
          "strength" : {
            "code" : "PPG",
            "name" : "Power Play"
          },
          "gameWinningGoal" : false,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 253,
          "eventId" : 758,
          "period" : 3,
          "periodType" : "REGULAR",
          "ordinalNum" : "3rd",
          "periodTime" : "09:12",
          "periodTimeRemaining" : "10:48",
          "dateTime" : "2020-03-12T04:41:41Z",
          "goals" : {
            "away" : 2,
            "home" : 2
          }
        },
        "coordinates" : {
          "x" : -66.0,
          "y" : 21.0
        },
        "team" : {
          "id" : 26,
          "name" : "Los Angeles Kings",
          "link" : "/api/v1/teams/26"
        }
      }, {
        "players" : [ {
          "player" : {
            "id" : 8476924,
            "fullName" : "Martin Frk",
            "link" : "/api/v1/people/8476924"
          },
          "playerType" : "Scorer",
          "seasonTotal" : 6
        }, {
          "player" : {
            "id" : 8480014,
            "fullName" : "Gabriel Vilardi",
            "link" : "/api/v1/people/8480014"
          },
          "playerType" : "Assist",
          "seasonTotal" : 4
        }, {
          "player" : {
            "id" : 8474563,
            "fullName" : "Drew Doughty",
            "link" : "/api/v1/people/8474563"
          },
          "playerType" : "Assist",
          "seasonTotal" : 28
        }, {
          "player" : {
            "id" : 8467950,
            "fullName" : "Craig Anderson",
            "link" : "/api/v1/people/8467950"
          },
          "playerType" : "Goalie"
        } ],
        "result" : {
          "event" : "Goal",
          "eventCode" : "LAK769",
          "eventTypeId" : "GOAL",
          "description" : "Martin Frk (6) Wrist Shot, assists: Gabriel Vilardi (4), Drew Doughty (28)",
          "secondaryType" : "Wrist Shot",
          "strength" : {
            "code" : "EVEN",
            "name" : "Even"
          },
          "gameWinningGoal" : true,
          "emptyNet" : false
        },
        "about" : {
          "eventIdx" : 281,
          "eventId" : 769,
          "period" : 3,
          "periodType" : "REGULAR",
          "ordinalNum" : "3rd",
          "periodTime" : "15:19",
          "periodTimeRemaining" : "04:41",
          "dateTime" : "2020-03-12T04:52:17Z",
          "goals" : {
            "away" : 2,
            "home" : 3
          }
        },
        "coordinates" : {
          "x" : -83.0,
          "y" : 7.0
        },
        "team" : {
          "id" : 26,
          "name" : "Los Angeles Kings",
          "link" : "/api/v1/teams/26"
        }
      } ],
      "venue" : {
        "id" : 5081,
        "name" : "STAPLES Center",
        "link" : "/api/v1/venues/5081"
      },
      "tickets" : [ {
        "ticketType" : "clubWebSchedule",
        "ticketLink" : "https://tix.axs.com/hIZzMgAAAAA469v5AQAAAABE%2fv%2f%2f%2fwD%2f%2f%2f%2f%2fB2xha2luZ3MA%2f%2f%2f%2f%2f%2f%2f%2f%2f%2f8%3d?aff=LAKwb_schedule"
      }, {
        "ticketType" : "clubWebScheduleBuySell",
        "ticketLink" : "https://tix.axs.com/hIZzMgAAAAA469v5AQAAAABE%2fv%2f%2f%2fwD%2f%2f%2f%2f%2fB2xha2luZ3MA%2f%2f%2f%2f%2f%2f%2f%2f%2f%2f8%3d?aff=LAKwb_schedule-buy-sell"
      }, {
        "ticketType" : "leagueWebScoresPage",
        "ticketLink" : "https://tix.axs.com/hIZzMgAAAAA469v5AQAAAABE%2fv%2f%2f%2fwD%2f%2f%2f%2f%2fB2xha2luZ3MA%2f%2f%2f%2f%2f%2f%2f%2f%2f%2f8%3d?aff=NHLwb_scores"
      }, {
        "ticketType" : "leagueWebGamecenterPreview",
        "ticketLink" : "https://tix.axs.com/hIZzMgAAAAA469v5AQAAAABE%2fv%2f%2f%2fwD%2f%2f%2f%2f%2fB2xha2luZ3MA%2f%2f%2f%2f%2f%2f%2f%2f%2f%2f8%3d?aff=NHLwb_gcpreview"
      }, {
        "ticketType" : "clubWebMIG",
        "ticketLink" : "https://tix.axs.com/hIZzMgAAAAA469v5AQAAAABE%2fv%2f%2f%2fwD%2f%2f%2f%2f%2fB2xha2luZ3MA%2f%2f%2f%2f%2f%2f%2f%2f%2f%2f8%3d?aff=LAKwb_MIG"
      }, {
        "ticketType" : "leagueWebHorizontalScoreboard",
        "ticketLink" : "https://tix.axs.com/hIZzMgAAAAA469v5AQAAAABE%2fv%2f%2f%2fwD%2f%2f%2f%2f%2fB2xha2luZ3MA%2f%2f%2f%2f%2f%2f%2f%2f%2f%2f8%3d?aff=NHLwb_hz_scoreboard"
      }, {
        "ticketType" : "leagueWebScheduleBuySell",
        "ticketLink" : "http://www.ticketexchangebyticketmaster.com/NHL/ResaleOrder/Los-Angeles-Kings-Tickets-at-STAPLES-Center-in-Los-Angeles-3-11-2020-Tickets/Tickets/2722854?wt.mc_id=NHL_LEAGUE_LAK_SCHEDULE_BUYSELL_GAME37&utm_source=NHL.com&utm_medium=client&utm_campaign=NHL_LEAGUE_LAK&utm_content=SCHEDULE_BUYSELL_GAME37"
      }, {
        "ticketType" : "leagueAppScoreTab",
        "ticketLink" : "https://tix.axs.com/hIZzMgAAAAA469v5AQAAAABE%2fv%2f%2f%2fwD%2f%2f%2f%2f%2fB2xha2luZ3MA%2f%2f%2f%2f%2f%2f%2f%2f%2f%2f8%3d?aff=NHLwb_app-score"
      }, {
        "ticketType" : "leagueWebSchedule",
        "ticketLink" : "https://tix.axs.com/hIZzMgAAAAA469v5AQAAAABE%2fv%2f%2f%2fwD%2f%2f%2f%2f%2fB2xha2luZ3MA%2f%2f%2f%2f%2f%2f%2f%2f%2f%2f8%3d?aff=NHLwb_schedule"
      }, {
        "ticketType" : "clubWebHorizontalScoreboard",
        "ticketLink" : "https://tix.axs.com/hIZzMgAAAAA469v5AQAAAABE%2fv%2f%2f%2fwD%2f%2f%2f%2f%2fB2xha2luZ3MA%2f%2f%2f%2f%2f%2f%2f%2f%2f%2f8%3d?aff=LAKwb_hz_scoreboard"
      }, {
        "ticketType" : "clubAppScoreTile",
        "ticketLink" : "https://tix.axs.com/hIZzMgAAAAA469v5AQAAAABE%2fv%2f%2f%2fwD%2f%2f%2f%2f%2fB2xha2luZ3MA%2f%2f%2f%2f%2f%2f%2f%2f%2f%2f8%3d?aff=LAKwb_app-score"
      }, {
        "ticketType" : "leagueAppGamecenterPreview",
        "ticketLink" : "https://tix.axs.com/hIZzMgAAAAA469v5AQAAAABE%2fv%2f%2f%2fwD%2f%2f%2f%2f%2fB2xha2luZ3MA%2f%2f%2f%2f%2f%2f%2f%2f%2f%2f8%3d?aff=NHLwb_app-preview"
      }, {
        "ticketType" : "googleOneBox",
        "ticketLink" : "https://tix.axs.com/hIZzMgAAAAA469v5AQAAAABE%2fv%2f%2f%2fwD%2f%2f%2f%2f%2fB2xha2luZ3MA%2f%2f%2f%2f%2f%2f%2f%2f%2f%2f8%3d?aff=NHLwb_gg-ob"
      } ],
      "content" : {
        "link" : "/api/v1/game/2019021082/content",
        "editorial" : { },
        "media" : {
          "epg" : [ {
            "title" : "NHLTV",
            "platform" : "web",
            "items" : [ {
              "guid" : "0d6dc68b-5052-4147-9509-13c069c83e86",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71317703",
              "mediaFeedType" : "HOME",
              "callLetters" : "FS-W",
              "eventId" : "221-2004545",
              "language" : "eng",
              "freeGame" : true,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "guid" : "6103b7d5-d423-481f-8406-dce6947051af",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71317803",
              "mediaFeedType" : "AWAY",
              "callLetters" : "TSN5",
              "eventId" : "221-2004545",
              "language" : "eng",
              "freeGame" : true,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "guid" : "ce76cd4c-02c2-4a28-825b-35563142036c",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71318103",
              "mediaFeedType" : "FRENCH",
              "callLetters" : "RDS",
              "eventId" : "221-2004545",
              "language" : "fra",
              "freeGame" : true,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "guid" : "48cbcc63-4d42-4c11-915f-48bb56a56bbb",
              "mediaState" : "MEDIA_ARCHIVE",
              "mediaPlaybackId" : "71318303",
              "mediaFeedType" : "COMPOSITE",
              "callLetters" : "",
              "eventId" : "221-2004545",
              "language" : "eng",
              "freeGame" : true,
              "feedName" : "Multi-Cam 1",
              "gamePlus" : false
            } ]
          }, {
            "title" : "Audio",
            "items" : [ {
              "mediaState" : "MEDIA_DONE",
              "mediaPlaybackId" : "71317903",
              "mediaFeedType" : "HOME",
              "callLetters" : "NHL.com",
              "eventId" : "221-2004545",
              "language" : "eng",
              "freeGame" : false,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "mediaState" : "MEDIA_DONE",
              "mediaPlaybackId" : "71318003",
              "mediaFeedType" : "AWAY",
              "callLetters" : "TSN1200",
              "eventId" : "221-2004545",
              "language" : "eng",
              "freeGame" : false,
              "feedName" : "",
              "gamePlus" : false
            }, {
              "mediaState" : "MEDIA_DONE",
              "mediaPlaybackId" : "71318203",
              "mediaFeedType" : "FRENCH",
              "callLetters" : "CJFO",
              "eventId" : "221-2004545",
              "language" : "fra",
              "freeGame" : false,
              "feedName" : "",
              "gamePlus" : false
            } ]
          }, {
            "title" : "Extended Highlights",
            "topicList" : "313535566",
            "items" : [ {
              "type" : "video",
              "id" : "5357305",
              "date" : "2020-03-11T22:30:00-0400",
              "title" : "OTT @ LAK",
              "blurb" : "Condensed Game: Senators @ Kings",
              "description" : "Extended highlights of the Ottawa Senators at the Los Angeles Kings",
              "duration" : "08:59",
              "authFlow" : false,
              "mediaPlaybackId" : "5357305",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "9",
                "displayName" : "9"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "26",
                "displayName" : "26"
              }, {
                "type" : "content",
                "value" : "extendedHighlights",
                "displayName" : "Condensed Game"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149146/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149146/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149146/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149146/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149146/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149146/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149146/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149146/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149146/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149146/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149146/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149146/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149146/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149146/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149146/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149146/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149146/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149146/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149146/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149146/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149146/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149146/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149146/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149146/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149146/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149146/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149146/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316149146/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316149146/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316149146/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/c0efd740-ec42-4f63-bad7-1a65d5810179.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/1bab99df-f558-4923-b4fd-e604bb87e976.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/54af63f6-c87f-42b8-bafd-2a00a05928d1.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/afe68327-0ea6-4066-91cc-59311c7ad43d.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287305/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287305/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287305/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287305/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287305/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287305/MasterWiredWeb.m3u8"
              } ]
            } ]
          }, {
            "title" : "Recap",
            "topicList" : "313535566",
            "items" : [ {
              "type" : "video",
              "id" : "5357304",
              "date" : "2020-03-11T22:30:00-0400",
              "title" : "Recap: OTT 2, LAK 3",
              "blurb" : "Frk, Vilardi propel Kings past Senators",
              "description" : "Martin Frk scored the game-winning goal and Gabriel Vilardi recorded a goal and an assist, leading the Kings to a 3-2 win against the Senators",
              "duration" : "05:01",
              "authFlow" : false,
              "mediaPlaybackId" : "5357304",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "26",
                "displayName" : "26"
              }, {
                "type" : "content",
                "value" : "gameRecap",
                "displayName" : "game recap"
              }, {
                "type" : "content",
                "value" : "teamRecap",
                "displayName" : "Team Recap"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316148720/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316148720/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316148720/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316148720/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316148720/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316148720/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316148720/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316148720/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316148720/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316148720/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316148720/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316148720/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316148720/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316148720/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316148720/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316148720/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316148720/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316148720/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316148720/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316148720/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316148720/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316148720/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316148720/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316148720/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316148720/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316148720/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316148720/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316148720/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316148720/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316148720/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/d879cffb-0d7f-47b4-9fc2-2172400db0a6.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/5ceb0eaf-73e4-42f3-a31a-3c9a4f97f718.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/38596b97-41e5-4a67-a86e-62a6e3133f17.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/c49d3b2e-e732-4e16-928a-465c060490c7.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287306/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287306/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287306/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287306/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287306/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287306/MasterWiredWeb.m3u8"
              } ]
            } ]
          }, {
            "title" : "Power Play",
            "items" : [ ]
          } ]
        },
        "highlights" : {
          "scoreboard" : {
            "title" : "Highlights",
            "topicList" : "313535566",
            "items" : [ {
              "type" : "video",
              "id" : "5356857",
              "date" : "2020-03-11T22:30:00-0400",
              "title" : "Lewis jams own rebound home",
              "blurb" : "OTT@LAK: Lewis buries own rebound from the doorstep",
              "description" : "Trevor Lewis is denied by Craig Anderson, but he stays with it and jams the rebound into the back of the net, tying the game at 1 in the 1st",
              "duration" : "00:45",
              "authFlow" : false,
              "mediaPlaybackId" : "5356857",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "statsEventId",
                "value" : "167",
                "displayName" : "167"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "26",
                "displayName" : "26"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140726/1136x640/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140726/1136x640/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140726/1136x640/cut.jpeg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140726/1024x576/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140726/1024x576/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140726/1024x576/cut.jpeg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140726/960x540/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140726/960x540/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140726/960x540/cut.jpeg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140726/768x432/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140726/768x432/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140726/768x432/cut.jpeg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140726/640x360/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140726/640x360/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140726/640x360/cut.jpeg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140726/568x320/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140726/1136x640/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140726/568x320/cut.jpeg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140726/372x210/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140726/372x210/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140726/372x210/cut.jpeg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140726/320x180/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140726/640x360/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140726/960x540/cut.jpeg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140726/248x140/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140726/248x140/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140726/248x140/cut.jpeg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140726/124x70/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140726/248x140/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140726/372x210/cut.jpeg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/6eeab29d-7839-4932-a8ba-e3794741aa8c.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/81a75fa6-ac70-4db7-9839-ed8825785001.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/419e50e6-48ec-4d3d-a4b5-3682b32460d4.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/c535fefd-075a-4ba1-a394-3d6f4811d98b.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286858/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286858/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286858/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286858/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286858/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286858/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5357206",
              "date" : "2020-03-11T22:30:00-0400",
              "title" : "Vilardi's far-side PPG",
              "blurb" : "OTT@LAK: Vilardi nets far-side wrister for PPG",
              "description" : "Gabriel Vilardi receives a pass, skates into the circle and wires a far-side wrist shot home on the power play, tying the game at 2 in the 3rd",
              "duration" : "00:32",
              "authFlow" : false,
              "mediaPlaybackId" : "5357206",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "statsEventId",
                "value" : "758",
                "displayName" : "758"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "26",
                "displayName" : "26"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146412/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146412/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146412/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146412/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146412/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146412/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146412/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146412/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146412/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146412/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146412/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146412/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146412/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146412/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146412/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146412/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146412/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146412/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146412/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146412/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146412/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146412/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146412/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146412/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146412/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146412/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146412/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146412/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146412/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146412/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/6bdab470-143b-45c8-bdbb-466c4c7e5d4a.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/139d88cb-5a87-41a3-8d8a-25da2ea1d429.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/0b9d4086-7156-41dc-88d8-071654a68b22.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/ed7204ab-fafb-4e37-8ea1-19e4f33dc6ec.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287207/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287207/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287207/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287207/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287207/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287207/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5357162",
              "date" : "2020-03-11T22:30:00-0400",
              "title" : "Hawryluk's slick redirection",
              "blurb" : "OTT@LAK: Hawryluk tips shot past Petersen in front",
              "description" : "Jayce Hawryluk gets good position in front of the net and deflects Andreas Englund's shot past Calvin Petersen to give the Senators a 2-1 lead",
              "duration" : "00:36",
              "authFlow" : false,
              "mediaPlaybackId" : "5357162",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "statsEventId",
                "value" : "488",
                "displayName" : "488"
              }, {
                "type" : "teamId",
                "value" : "9",
                "displayName" : "9"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144832/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144832/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144832/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144832/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144832/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144832/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144832/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144832/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144832/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144832/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144832/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144832/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144832/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144832/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144832/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144832/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144832/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144832/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144832/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144832/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144832/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144832/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144832/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144832/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144832/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144832/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144832/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316144832/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316144832/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316144832/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/4bd68fa5-c734-4ca1-8d1f-a89694673b23.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/e9c6aed5-2f5e-4965-92cc-8ed85847696a.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/fab7393e-36ee-492e-b83a-2ac4528ee78e.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/c0f84ebd-ee35-4bff-8268-8fb6a081075b.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287163/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287163/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287163/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287163/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287163/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287163/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5356826",
              "date" : "2020-03-11T22:30:00-0400",
              "title" : "Ryan opens the scoring",
              "blurb" : "OTT@LAK: Ryan wires one-timer past Petersen",
              "description" : "Bobby Ryan sets up in the circle and hammers a one-timer past Calvin Petersen, giving the Senators a 1-0 lead in the 1st period",
              "duration" : "00:38",
              "authFlow" : false,
              "mediaPlaybackId" : "5356826",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "9",
                "displayName" : "9"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "statsEventId",
                "value" : "151",
                "displayName" : "151"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140488/1136x640/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140488/1136x640/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140488/1136x640/cut.jpeg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140488/1024x576/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140488/1024x576/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140488/1024x576/cut.jpeg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140488/960x540/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140488/960x540/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140488/960x540/cut.jpeg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140488/768x432/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140488/768x432/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140488/768x432/cut.jpeg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140488/640x360/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140488/640x360/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140488/640x360/cut.jpeg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140488/568x320/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140488/1136x640/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140488/568x320/cut.jpeg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140488/372x210/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140488/372x210/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140488/372x210/cut.jpeg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140488/320x180/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140488/640x360/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140488/960x540/cut.jpeg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140488/248x140/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140488/248x140/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140488/248x140/cut.jpeg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316140488/124x70/cut.jpeg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316140488/248x140/cut.jpeg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316140488/372x210/cut.jpeg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/eaeacaac-234a-4fca-96ec-c1a8645a868d.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/b64437ac-6880-40b4-8edb-d4a66c0b18ca.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/81d3d74c-3669-471c-b97f-22c8b838ef73.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/4092ed38-d6e9-4ff7-995c-48d2bd6f61b4.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286827/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286827/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286827/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286827/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286827/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286827/MasterWiredWeb.m3u8"
              } ]
            }, {
              "type" : "video",
              "id" : "5357259",
              "date" : "2020-03-11T22:30:00-0400",
              "title" : "Frk sneaks shot past Anderson",
              "blurb" : "OTT@LAK: Frk slips shot through Anderson's five-hole",
              "description" : "Martin Frk receives a pass in the circle, skates toward the goal line and sneaks a shot through Craig Anderson's five-hole for a 3-2 lead",
              "duration" : "00:39",
              "authFlow" : false,
              "mediaPlaybackId" : "5357259",
              "mediaState" : "MEDIA_ARCHIVE",
              "keywords" : [ {
                "type" : "shareable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "embeddable",
                "value" : "Y",
                "displayName" : "Y"
              }, {
                "type" : "teamId",
                "value" : "26",
                "displayName" : "26"
              }, {
                "type" : "content",
                "value" : "highlight",
                "displayName" : "highlight"
              }, {
                "type" : "content",
                "value" : "realTimeHighlight",
                "displayName" : "Real-Time Highlight"
              }, {
                "type" : "statsEventId",
                "value" : "769",
                "displayName" : "769"
              }, {
                "type" : "language",
                "value" : "en",
                "displayName" : "English"
              } ],
              "image" : {
                "title" : "",
                "altText" : "",
                "cuts" : {
                  "1136x640" : {
                    "aspectRatio" : "16:9",
                    "width" : 1136,
                    "height" : 640,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146888/1136x640/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146888/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146888/1136x640/cut.jpg"
                  },
                  "1024x576" : {
                    "aspectRatio" : "16:9",
                    "width" : 1024,
                    "height" : 576,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146888/1024x576/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146888/1024x576/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146888/1024x576/cut.jpg"
                  },
                  "960x540" : {
                    "aspectRatio" : "16:9",
                    "width" : 960,
                    "height" : 540,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146888/960x540/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146888/960x540/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146888/960x540/cut.jpg"
                  },
                  "768x432" : {
                    "aspectRatio" : "16:9",
                    "width" : 768,
                    "height" : 432,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146888/768x432/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146888/768x432/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146888/768x432/cut.jpg"
                  },
                  "640x360" : {
                    "aspectRatio" : "16:9",
                    "width" : 640,
                    "height" : 360,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146888/640x360/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146888/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146888/640x360/cut.jpg"
                  },
                  "568x320" : {
                    "aspectRatio" : "16:9",
                    "width" : 568,
                    "height" : 320,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146888/568x320/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146888/1136x640/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146888/568x320/cut.jpg"
                  },
                  "372x210" : {
                    "aspectRatio" : "16:9",
                    "width" : 372,
                    "height" : 210,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146888/372x210/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146888/372x210/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146888/372x210/cut.jpg"
                  },
                  "320x180" : {
                    "aspectRatio" : "16:9",
                    "width" : 320,
                    "height" : 180,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146888/320x180/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146888/640x360/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146888/960x540/cut.jpg"
                  },
                  "248x140" : {
                    "aspectRatio" : "16:9",
                    "width" : 248,
                    "height" : 140,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146888/248x140/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146888/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146888/248x140/cut.jpg"
                  },
                  "124x70" : {
                    "aspectRatio" : "16:9",
                    "width" : 124,
                    "height" : 70,
                    "src" : "https://nhl.bamcontent.com/images/photos/316146888/124x70/cut.jpg",
                    "at2x" : "https://nhl.bamcontent.com/images/photos/316146888/248x140/cut.jpg",
                    "at3x" : "https://nhl.bamcontent.com/images/photos/316146888/372x210/cut.jpg"
                  }
                }
              },
              "playbacks" : [ {
                "name" : "FLASH_192K_320X180",
                "width" : "320",
                "height" : "180",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/cbf47a58-dc56-47f5-9754-b59c20bb59af.mp4"
              }, {
                "name" : "FLASH_450K_384x216",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/8759e0e2-da0a-42ec-9ba5-9c933ee23c9b.mp4"
              }, {
                "name" : "FLASH_1200K_640X360",
                "width" : "640",
                "height" : "360",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/2750e5cc-afb6-43c5-9de7-a10c63c39e4b.mp4"
              }, {
                "name" : "FLASH_1800K_896x504",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish/aed555eb-a6a8-4069-b179-3f1930b4bb81.mp4"
              }, {
                "name" : "HTTP_CLOUD_MOBILE",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287260/MasterMobile.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287260/MasterTablet.m3u8"
              }, {
                "name" : "HTTP_CLOUD_TABLET_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287260/MasterTablet60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED",
                "width" : "null",
                "height" : "null",
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287260/MasterWired.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_60",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287260/MasterWired60.m3u8"
              }, {
                "name" : "HTTP_CLOUD_WIRED_WEB",
                "width" : null,
                "height" : null,
                "url" : "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5287260/MasterWiredWeb.m3u8"
              } ]
            } ]
          }
        }
      }
    } ],
    "events" : [ ],
    "matches" : [ ]
  } ]
}
''';
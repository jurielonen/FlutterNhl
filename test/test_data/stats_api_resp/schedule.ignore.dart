const Map<String, dynamic> scheduleEmptyJson =
{
"copyright": "NHL and the NHL Shield are registered trademarks of the National Hockey League. NHL and NHL team marks are the property of the NHL and its teams. © NHL 2020. All Rights Reserved.",
"totalItems": 0,
"totalEvents": 0,
"totalGames": 0,
"totalMatches": 0,
"wait": 10,
"dates": []
};

const Map<String, dynamic> schedulePreviewJson =
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
      "gameDate" : "2018-01-10T01:00",
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
};

const Map<String, dynamic> scheduleFinalJson = {
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
      "scoringPlays" : [
        {
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
    }
    ],
    "events" : [ ],
    "matches" : [ ]
  } ]
};
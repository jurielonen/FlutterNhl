import 'dart:convert';

import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/game/game_enums.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/player/player_enums.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_data/stats_api_resp/game.ignore.dart';
import 'content_unit_test.dart';
import 'play_unit_test.dart';
import 'player_unit_test.dart';
import 'team_unit_test.dart';
import 'test_functions.ignore.dart';

void main() {
  group('game', () {
    test('GameSchedule', () {
      checkGame(Game.fromJson(null), gameEmpty);
      checkGame(Game.fromJson({}), gameEmpty);

      checkGame(Game.fromJson(gameScheduleJson), gameSchedule);
    });

    test('GamePreview', () {
      expect(() => GamePreview.fromJson(null, null), throwsException);
      expect(() => GamePreview.fromJson(null, {}), throwsException);

      checkGamePreview(GamePreview.fromJson(gameSchedule, null), gamePreviewEmpty);
      checkGamePreview(GamePreview.fromJson(gameSchedule, {}), gamePreviewEmpty);

      checkGamePreview(GamePreview.fromJson(gameSchedule, gamePreviewJson), gamePreview);
    });

    test('GameFinal', () {
      expect(() => GameFinal.fromJson(null, null), throwsException);
      expect(() => GameFinal.fromJson(null, {}), throwsException);

      checkGameFinal(GameFinal.fromJson(gameSchedule, null), gameFinalEmpty);
      checkGameFinal(GameFinal.fromJson(gameSchedule, {}), gameFinalEmpty);

      checkGameFinal(GameFinal.fromJson(gameSchedule, gameFinalJson), gameFinal);
    });
  });
}

final Game gameEmpty = Game(
    id: -1,
    type: GameType.UNKNOWN,
    dateTime: DateTime(1990),
    homeTeam: scheduleTeamEmpty,
    awayTeam: scheduleTeamEmpty,
    state: GameState.UNKNOWN,
    content: Content(videos: []),
    lineScore: LineScore(
        period: -1, periodString: '', timeRemaining: '', periods: []));

final Game gameSchedule = Game(
    id: 2019021079,
    type: GameType.REGULAR,
    dateTime: DateTime.parse("2020-03-12T00:00:00Z"),
    homeTeam: TeamSchedule(
        team: Team(id: 16, name: 'Chicago Blackhawks', abb: 'CHI'),
        score: 6,
        record: {"wins": 32, "losses": 30, "ot": 8, "type": "league"}),
    awayTeam: scheduleTeam,
    state: GameState.FINAL_2,
    content: Content(videos: [
      Video(
          title: 'SJS @ CHI',
          blurb: 'Condensed Game: Sharks @ Blackhawks',
          description:
              'Extended highlights of the San Jose Sharks at the Chicago Blackhawks',
          duration: '08:59',
          videoPic: VideoPic(
              width: 248,
              height: 140,
              src:
                  'https://nhl.bamcontent.com/images/photos/316140018/248x140/cut.jpg'),
          videoUrl:
              'https://hlslive-wsczoominwestus.med.nhl.com/publish/b3084343-f56e-4bb9-8c2b-69578ef57207.mp4'),
      Video(
          title: 'Recap: SJS 2, CHI 6',
          blurb: "Kane's two goals lead Blackhawks past Sharks",
          description:
              'Patrick Kane scored two goals and Alex DeBrincat collected two assists, leading the Blackhawks to a 6-2 victory against the Sharks at home',
          duration: '05:02',
          videoPic: VideoPic(
              width: 248,
              height: 140,
              src:
                  'https://nhl.bamcontent.com/images/photos/316139238/248x140/cut.jpg'),
          videoUrl:
              'https://hlslive-wsczoominwestus.med.nhl.com/publish/a2442933-e96c-4216-acc2-13d840ede0be.mp4'),
      video1,
      Video(
          title: "Nylander's quick one-timer",
          blurb: "SJS@CHI: Nylander hammers Strome's feed past Dell",
          description:
              "Dylan Strome sends a pass to Alex Nylander, who quickly blasts a one-timer past Aaron Dell, extending the Blackhawks' lead to 4-1 in the 3rd",
          duration: '00:40',
          videoPic: VideoPic(
              width: 248,
              height: 140,
              src:
                  'https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg'),
          videoUrl: 'https://hlslive-wsczoominwestus.med.nhl.com/publish/12d370f5-4fa0-4d7b-ad70-865db594f823.mp4'),
      Video(
          title: 'Kane opens scoring with PPG',
          blurb: 'SJS@CHI: Kane nets redirection from slot for PPG',
          description:
              'Joe Thornton sends a pass to Evander Kane, who deflects the puck past Corey Crawford on the power play to give the Sharks a 1-0 lead in the 1st',
          duration: '00:48',
          videoPic: VideoPic(
              width: 248,
              height: 140,
              src:
                  'https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg'),
          videoUrl:
              'https://hlslive-wsczoominwestus.med.nhl.com/publish/a7cf8598-3112-4697-8935-cc098326ed7c.mp4'),
      Video(
          title: 'Kane, DeBrincat connect for PPG',
          blurb: "SJS@CHI: Kane taps DeBrincat's nice feed home for PPG",
          description:
              'Alex DeBrincat sends a pretty backdoor pass to Patrick Kane, who taps the puck past Aaron Dell for a power-play goal and a 2-1 lead in the 2nd',
          duration: '00:51',
          videoPic: VideoPic(
              width: 248,
              height: 140,
              src:
                  'https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg'),
          videoUrl:
              'https://hlslive-wsczoominwestus.med.nhl.com/publish/28f0831d-e5cd-4f78-9f8d-4a62f3d2f275.mp4'),
      Video(
          title: "Kane's second goal of the game",
          blurb: 'SJS@CHI: Kane nets own rebound for second goal',
          description:
              'Patrick Kane is denied by Aaron Dell, but he finds his own rebound in the crease and taps it into the back of the net for a 5-2 lead in the 3rd',
          duration: '00:49',
          videoPic: VideoPic(
              width: 248,
              height: 140,
              src:
                  'https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg'),
          videoUrl:
              'https://hlslive-wsczoominwestus.med.nhl.com/publish/7ae919a8-ddfa-42d0-9947-fbb56d1500d4.mp4'),
      Video(
          title: 'Keith nets PPG through traffic',
          blurb: 'SJS@CHI: Keith rips shot through screen for PPG',
          description:
              'Duncan Keith receives a pass, walks across the blue line and fires a wrist shot through a screen and past Aaron Dell for a power-play goal',
          duration: '00:47',
          videoPic: VideoPic(
              width: 248,
              height: 140,
              src:
                  'https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg'),
          videoUrl:
              'https://hlslive-wsczoominwestus.med.nhl.com/publish/3ce06651-4e0e-4953-b949-82d1cdb0cdb8.mp4'),
      Video(
          title: 'Meier scores off the draw',
          blurb: 'SJS@CHI: Meier roofs shot past Crawford off the draw',
          description:
              "Timo Meier picks up the puck in the face-off circle and lifts a shot over Corey Crawford's glove, cutting the Sharks' deficit to 4-2 in the 3rd",
          duration: '00:29',
          videoPic: VideoPic(
              width: 248,
              height: 140,
              src:
                  'https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg'),
          videoUrl:
              'https://hlslive-wsczoominwestus.med.nhl.com/publish/f3331c47-7b41-4ac1-9942-0ebbae91087f.mp4'),
      Video(
          title: "Kubalik's blistering one-timer",
          blurb: "SJS@CHI: Kubalik goes top shelf off Dach's slick feed",
          description:
              "Kirby Dach drops a pass to Dominik Kubalik, who hammers a one-timer top shelf over Aaron Dell's glove for a 6-2 lead in the 3rd period",
          duration: '00:47',
          videoPic: VideoPic(
              width: 248,
              height: 140,
              src:
                  'https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg'),
          videoUrl:
              'https://hlslive-wsczoominwestus.med.nhl.com/publish/559be6f4-69bc-4393-8265-386a94c44187.mp4'),
    ]),
    lineScore: LineScore(
      period: 3,
    periodString: '3rd',
    timeRemaining: 'Final',
    periods: [Period(periodType: 'REGULAR', num: 1, home: {"goals": 0, "shotsOnGoal": 14, "rinkSide": "right"}, away: {"goals": 1, "shotsOnGoal": 15, "rinkSide": "left"}),
      Period(periodType: 'REGULAR', num: 2, home: {"goals": 3, "shotsOnGoal": 17, "rinkSide": "left"}, away: {"goals": 0, "shotsOnGoal": 10, "rinkSide": "right"}),
      Period(periodType: 'REGULAR', num: 3, home: {"goals": 3, "shotsOnGoal": 14, "rinkSide": "right"}, away: {"goals": 1, "shotsOnGoal": 11, "rinkSide": "left"})]
    )
);


final GamePreview gamePreviewEmpty = GamePreview(
  game: gameSchedule,
    home: teamPreviewEmpty,
    away: teamPreviewEmpty
);

final GamePreview gamePreview = GamePreview(
  game: gameSchedule,
  home: TeamPreview(
      team: Team(id: 16, name: 'Chicago Blackhawks', abb: 'CHI'),
      teamStats: {
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
      playerStats: [
        PlayerGame(
            player: Player(id: 8470607, fullname: 'Brent Seabrook'),
            jerseyNumber: '7',
            position: PersonPosition(code: Position.D, name: 'Defenseman'),
            stats: {
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
            })
      ]),
  away: previewTeam
);

final GameFinal gameFinalEmpty = GameFinal(
    game: gameSchedule,
    plays: [],
    home: teamFinalEmpty,
    away: teamFinalEmpty
);

final GameFinal gameFinal = GameFinal(
  game: gameSchedule,
  plays: [
    shotPlay,
    periodPlay
  ],
  away: TeamFinal(
    team: Team(id: 16, name: 'Chicago Blackhawks', abb: 'CHI'),
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
      goalieFinal,
      playerFinal
    ]
  ),
  home: teamFinal
);
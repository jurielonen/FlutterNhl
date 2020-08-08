import 'package:FlutterNhl/redux/models/game/play/play_enum.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter/foundation.dart';

class Play {
  final PlayEnum type;
  final String event;
  final About about;

  Play({@required this.type, @required this.event, @required this.about});

  factory Play.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> result = getJsonObject(['result'], json);
    PlayEnum type = playEnumFromString(getJsonString('eventTypeId', result));
    Play tPlay = Play(
        type: playEnumFromString(getJsonString('eventTypeId', result)),
        event: getJsonString('event', result),
        about: About.fromJson(getJsonObject(['about'], json)));
    if (json != null && json.containsKey('players')) {
      return PlayWithPlayers(
          play: tPlay,
          players: List<PlayerPlay>.from(
              getJsonList(['players'], json).map<Player>(
                  (player) => PlayerPlay.fromJson(player))),
          team: Team.fromJson(getJsonObject(['team'], json)),
          desc: getJsonString2(['result', 'description'], json),
          strength: getJsonString2(['result', 'strength', 'code'], json)
      );
    } else {
      return tPlay;
    }
  }
}

class PlayWithPlayers extends Play {
  final List<PlayerPlay> players;
  final Team team;
  final String desc;
  final String strength;

  PlayWithPlayers({@required Play play,@required  this.players,@required  this.team,@required  this.desc, @required this.strength})
      : super(type: play.type, event: play.event, about: play.about);
  
  String get playHeader {
    return '${about.periodTime}-${playEnumToString(type)} $strength';
  }

  String get playDesc {
    return desc;
  }
}

class About {
  int eventIdx;
  int period;
  String periodType;
  String ordinalNum;
  String periodTime;
  String periodTimeRemaining;
  Goals goals;

  About({
    this.eventIdx,
    this.period,
    this.periodType,
    this.ordinalNum,
    this.periodTime,
    this.periodTimeRemaining,
    this.goals,
  });

  factory About.fromJson(Map<String, dynamic> json) => About(
      eventIdx: getJsonInt('eventIdx', json),
      period: getJsonInt('period', json),
      periodType: getJsonString('periodType', json),
      ordinalNum: getJsonString('ordinalNum', json),
      periodTime: getJsonString('periodTime', json),
      periodTimeRemaining: getJsonString('periodTimeRemaining', json),
      goals: Goals.fromJson(
        getJsonObject(['goals'], json),
      ));
}

class Goals {
  int away;
  int home;

  Goals({
    this.away,
    this.home,
  });

  factory Goals.fromJson(Map<String, dynamic> json) {
    if (json == null) return null;
    return Goals(
      away: getJsonInt('away', json),
      home: getJsonInt('home', json),
    );
  }
}

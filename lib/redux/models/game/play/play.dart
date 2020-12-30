import 'dart:math';

import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/redux/models/game/play/play_enum.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

class Play {
  final PlayEnum type;
  final String event;
  final About about;

  Play({@required this.type, @required this.event, @required this.about});

  factory Play.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> result = getJsonObject(['result'], json);
    Play tPlay = Play(
        type: playEnumFromString(getJsonString('eventTypeId', result)),
        event: getJsonString('event', result),
        about: About.fromJson(getJsonObject(['about'], json)));
    if (json != null && json.containsKey('players')) {
      List<PlayerPlay> players = List<PlayerPlay>.from(
          getJsonList(['players'], json)
              .map<Player>((player) => PlayerPlay.fromJson(player)));
      Team team = Team.fromJson(getJsonObject(['team'], json));
      String desc = getJsonString2(['result', 'description'], json);
      String strength = getJsonString2(['result', 'strength', 'code'], json);
      if (tPlay.type == PlayEnum.GOAL ||
          tPlay.type == PlayEnum.MISSED_SHOT ||
          tPlay.type == PlayEnum.SHOT) {
        ShotTypeEnum shotType = shotTypeEnumFromString(
            getJsonString2(['result', 'secondaryType'], json));
        if (shotType == ShotTypeEnum.UNK) {
          shotType = shotTypeEnumFromString(playEnumToString(tPlay.type));
        }
        return ShotPlay(
            play: tPlay,
            players: players,
            team: team,
            desc: desc,
            strength: strength,
            coordinates:
                Coordinates.fromJson(getJsonObject(['coordinates'], json)),
            shotType: shotType);
      }
      return PlayWithPlayers(
        play: tPlay,
        players: players,
        team: team,
        desc: desc,
        strength: strength,
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

  PlayWithPlayers({
    @required Play play,
    @required this.players,
    @required this.team,
    @required this.desc,
    @required this.strength,
  }) : super(type: play.type, event: play.event, about: play.about);

  String get playHeader {
    return '${about.periodTime}-${playEnumToString(type)} $strength';
  }

  String get playDesc {
    return desc;
  }

  @override
  String toString() {
    return 'PlayWithPlayers{players: $players, team: $team, desc: $desc, strength: $strength}';
  }
}

///Class for shot plays
///used for shot map view
class ShotPlay extends PlayWithPlayers {
  final Coordinates coordinates;
  final ShotTypeEnum shotType;
  Offset _offset;
  static const double _radius = 15.0;
  ShotPlay({
    @required Play play,
    @required List<PlayerPlay> players,
    @required Team team,
    @required String desc,
    @required String strength,
    @required this.coordinates,
    @required this.shotType,
  }) : super(
            play: play,
            players: players,
            team: team,
            desc: desc,
            strength: strength);

  String get playHeader {
    if (type == PlayEnum.GOAL)
      return '${about.ordinalNum} ${about.periodTime}-GOAL, ${shotTypeEnumToString(shotType)} $strength';

    return '${about.ordinalNum} ${about.periodTime}-${shotTypeEnumToString(shotType)}';
  }

  Offset getShotLocation(double height, double width) {
    if (_offset == null) {
      double x = coordinates.x;
      if (x < 0) x *= -1;
      _offset = Offset(((coordinates.y * -1) + yOffset) / yMax * (width),
          ((x / xOffset * height) - (height)).abs());
    }
    return _offset;
  }

  Color get typeColor {
    switch (type) {
      case PlayEnum.SHOT:
        return const Color(0x805dbcd2);
      case PlayEnum.BLOCKED_SHOT:
        return const Color(0x805c5c5c);
      case PlayEnum.GOAL:
        return const Color(0x80ff575c);
      case PlayEnum.MISSED_SHOT:
        return const Color(0x80bdbdbd);
      default:
        return Color(0x80000000);
    }
  }

  Path getPath(double height, double width) {
    Path path = Path();
    getShotLocation(height, width);
    switch (shotType) {
      case ShotTypeEnum.WRIST:
      case ShotTypeEnum.SNAP:
        path.addOval(Rect.fromCircle(center: _offset, radius: _radius));
        break;
      case ShotTypeEnum.SLAP:
        path.addRect(Rect.fromCenter(
            center: _offset, height: 2 * _radius, width: 2 * _radius));
        break;
      case ShotTypeEnum.TIP:
        double angle = ((pi * 2) / 4);
        List<Offset> offsets = [];
        for (int i = 1; i <= 4; i++) {
          offsets.add(Offset(_offset.dx + _radius * cos((angle * i)),
              _offset.dy + _radius * sin((angle * i))));
        }
        path.addPolygon(offsets, true);
        break;
      case ShotTypeEnum.BACKHAND:
        double angle = ((pi * 2) / 5);
        List<Offset> offsets = [];
        for (int i = 1; i <= 5; i++) {
          offsets.add(Offset(_offset.dx + _radius * cos((angle * i)),
              _offset.dy + _radius * sin((angle * i))));
        }
        path.addPolygon(offsets, true);
        break;
      case ShotTypeEnum.WRAP:
        double angle = ((pi * 2) / 6);
        List<Offset> offsets = [];
        for (int i = 1; i <= 6; i++) {
          offsets.add(Offset(_offset.dx + _radius * cos((angle * i)),
              _offset.dy + _radius * sin((angle * i))));
        }
        path.addPolygon(offsets, true);
        break;
      case ShotTypeEnum.MISSED:
        double angle = ((pi * 2) / 3);
        List<Offset> offsets = [];
        for (int i = 1; i <= 3; i++) {
          offsets.add(Offset(_offset.dx + _radius * cos((angle * i)),
              _offset.dy + _radius * sin((angle * i))));
        }
        path.addPolygon(offsets, true);
        break;
      case ShotTypeEnum.BLOCKED:
        double angle = ((pi * 2) / 3);
        List<Offset> offsets = [];
        for (int i = 1; i <= 3; i++) {
          offsets.add(Offset(_offset.dx + _radius * cos((angle * i)),
              _offset.dy + _radius * sin((angle * i))));
        }
        path.addPolygon(offsets, true);
        break;
      case ShotTypeEnum.UNK:
        double angle = ((pi * 2) / 3);
        List<Offset> offsets = [];
        for (int i = 1; i <= 3; i++) {
          offsets.add(Offset(_offset.dx + _radius * cos((angle * i)),
              _offset.dy + _radius * sin((angle * i))));
        }
        path.addPolygon(offsets, true);
        break;
    }
    return path;
  }
}

class Coordinates {
  final double x;
  double y;

  Coordinates({@required this.x, @required this.y});

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(
      x: getJsonDouble('x', json),
      y: getJsonDouble('y', json),
    );
  }

  @override
  String toString() {
    return 'Coordinates{x: $x, y: $y}';
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

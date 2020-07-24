import 'package:FlutterNhl/redux/models/award/award_enums.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class Recipient {
  factory Recipient.fromJsonWinner(Map<String, dynamic> json, TrophyType type) {
    switch(type){
      case TrophyType.TEAM:
        return TeamRecipient.fromJsonWinner(json);
      case TrophyType.PLAYER:
        if (!isJsonNull(['player'], json)) {
          return SingleRecipient.fromJsonWinner(json);
        } else {
          return MultipleRecipient.fromJsonWinner(json);
        }
        break;
      case TrophyType.COACH:
        return CoachRecipient.fromJsonWinner(json);
      case TrophyType.GM:
      case TrophyType.OTHER:
        return OtherRecipient.fromJsonWinner(json);
      default: return UnknownRecipient();
    }
  }

  factory Recipient.fromJsonRunnerUp(Map<String, dynamic> json, TrophyType type) {
    switch(type){
      case TrophyType.TEAM:
        return TeamRecipient.fromJsonRunnerUp(json);
      case TrophyType.PLAYER:
        if (!isJsonNull(['runnerUpPlayer'], json)) {
          return SingleRecipient.fromJsonRunnerUp(json);
        } else {
          return MultipleRecipient.fromJsonRunnerUp(json);
        }
        break;
      case TrophyType.COACH:
        return CoachRecipient.fromJsonRunnerUp(json);
      case TrophyType.GM:
      case TrophyType.OTHER:
        return OtherRecipient.fromJsonRunnerUp(json);
      default: return UnknownRecipient();
    }
  }

  factory Recipient.fromJsonFinalist(Map<String, dynamic> json, TrophyType type) {
    switch(type){
      case TrophyType.TEAM:
        return TeamRecipient.fromJsonFinalist(json);
      case TrophyType.PLAYER:
        if (!isJsonNull(['finalistPlayer'], json)) {
          return SingleRecipient.fromJsonFinalist(json);
        } else {
          return MultipleRecipient.fromJsonFinalist(json);
        }
        break;
      case TrophyType.COACH:
        return CoachRecipient.fromJsonFinalist(json);
      case TrophyType.GM:
      case TrophyType.OTHER:
        return OtherRecipient.fromJsonFinalist(json);
      default: return UnknownRecipient();
    }
  }

  String get name;
  int get id;
  String get teamName;
  int get teamId;
}

class UnknownRecipient implements Recipient {
  @override
  int get id => -1;

  @override
  String get name => '';

  @override
  int get teamId => -1;

  @override
  String get teamName => '';
}

class SingleRecipient implements Recipient {
  final Player player;
  final Team team;

  SingleRecipient({@required this.player, @required this.team});

  factory SingleRecipient.fromJsonWinner(Map<String, dynamic> json) {
    return SingleRecipient(
      player: Player.fromJson(getJsonObject(['player'], json)),
      team: Team.fromJson(getJsonObject(['team'], json)),
    );
  }

  factory SingleRecipient.fromJsonRunnerUp(Map<String, dynamic> json) {
    return SingleRecipient(
      player: Player.fromJson(getJsonObject(['runnerUpPlayer'], json)),
      team: Team.fromJson(getJsonObject(['runnerUpTeam'], json)),
    );
  }

  factory SingleRecipient.fromJsonFinalist(Map<String, dynamic> json) {
    return SingleRecipient(
      player: Player.fromJson(getJsonObject(['finalistPlayer'], json)),
      team: Team.fromJson(getJsonObject(['finalistTeam'], json)),
    );
  }

  @override
  int get id => player.id;

  @override
  String get name => player.fullname;

  @override
  int get teamId => team.id;

  @override
  String get teamName => team.abb;
}

class MultipleRecipient implements Recipient {
  final String players;
  final Team team;

  MultipleRecipient({
    @required this.players,
    @required this.team,
  });

  factory MultipleRecipient.fromJsonWinner(Map<String, dynamic> json) {
    return MultipleRecipient(
      players: getJsonString('multipleWinners', json),
      team: Team.fromJson(getJsonObject(['team'], json)),
    );
  }

  factory MultipleRecipient.fromJsonRunnerUp(Map<String, dynamic> json) {
    return MultipleRecipient(
      players: getJsonString('multipleRunnerUp', json),
      team: Team.fromJson(getJsonObject(['runnerUpTeam'], json)),
    );
  }

  factory MultipleRecipient.fromJsonFinalist(Map<String, dynamic> json) {
    return MultipleRecipient(
      players: getJsonString('multipleFinalists', json),
      team: Team.fromJson(getJsonObject(['finalistTeam'], json)),
    );
  }

  @override
  int get id => -1;

  @override
  String get name => players;

  @override
  int get teamId => team.id;

  @override
  String get teamName => team.abb;
}

class TeamRecipient implements Recipient {
  final Team team;

  TeamRecipient({@required this.team});

  factory TeamRecipient.fromJsonWinner(Map<String, dynamic> json) {
    return TeamRecipient(
      team: Team.fromJson(getJsonObject(['team'], json)),
    );
  }

  factory TeamRecipient.fromJsonRunnerUp(Map<String, dynamic> json) {
    return TeamRecipient(
      team: Team.fromJson(getJsonObject(['runnerUpTeam'], json)),
    );
  }

  factory TeamRecipient.fromJsonFinalist(Map<String, dynamic> json) {
    return TeamRecipient(
      team: Team.fromJson(getJsonObject(['finalistTeam'], json)),
    );
  }

  @override
  int get id => team.id;

  @override
  String get name => team.abb;

  @override
  int get teamId => -1;

  @override
  String get teamName => '';
}

class CoachRecipient implements Recipient {
  final String coachName;
  final Team team;

  CoachRecipient({this.coachName, this.team});

  factory CoachRecipient.fromJsonWinner(Map<String, dynamic> json) {
    return CoachRecipient(
      coachName: getJsonString2(['coach', 'fullName'], json),
      team: Team.fromJson(getJsonObject(['team'], json)),
    );
  }

  factory CoachRecipient.fromJsonRunnerUp(Map<String, dynamic> json) {
    return CoachRecipient(
      coachName: getJsonString2(['runnerUpCoach', 'fullName'], json),
      team: Team.fromJson(getJsonObject(['runnerUpTeam'], json)),
    );
  }

  factory CoachRecipient.fromJsonFinalist(Map<String, dynamic> json) {
    return CoachRecipient(
      coachName: getJsonString2(['finalistCoach', 'fullName'], json),
      team: Team.fromJson(getJsonObject(['finalistTeam'], json)),
    );
  }

  @override
  int get id => -1;

  @override
  String get name => coachName;

  @override
  int get teamId => team.id;

  @override
  String get teamName => team.abb;
}

class OtherRecipient implements Recipient {
  final String otherName;
  final Team team;

  OtherRecipient({this.otherName, this.team});

  factory OtherRecipient.fromJsonWinner(Map<String, dynamic> json) {
    return OtherRecipient(
      otherName: getJsonString('otherName', json),
      team: Team.fromJson(getJsonObject(['team'], json)),
    );
  }

  factory OtherRecipient.fromJsonRunnerUp(Map<String, dynamic> json) {
    return OtherRecipient(
      otherName: getJsonString('otherRunnerUp', json),
      team: Team.fromJson(getJsonObject(['runnerUpTeam'], json)),
    );
  }

  factory OtherRecipient.fromJsonFinalist(Map<String, dynamic> json) {
    return OtherRecipient(
      otherName: getJsonString('otherFinalistName', json),
      team: Team.fromJson(getJsonObject(['finalistTeam'], json)),
    );
  }

  @override
  int get id => -1;

  @override
  String get name => otherName;

  @override
  int get teamId => team.id;

  @override
  String get teamName => team.abb;
}
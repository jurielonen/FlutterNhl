import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter_test/flutter_test.dart';

///Content classes unit tests
checkVideoPic(VideoPic actual, VideoPic expected) {
  expect(actual.src, expected.src);
  expect(actual.width, expected.width);
  expect(actual.height, expected.height);
}

checkVideo(Video actual, Video expected) {
  expect(actual.title, expected.title);
  expect(actual.blurb, expected.blurb);
  expect(actual.description, expected.description);
  expect(actual.duration, expected.duration);
  expect(actual.videoUrl, expected.videoUrl);
  checkVideoPic(actual.videoPic, expected.videoPic);
}

/// Play classes unit tests
checkGoals(Goals actual, Goals expected) {
  expect(actual.away, expected.away);
  expect(actual.home, expected.home);
}

checkAbout(About actual, About expected) {
  expect(actual.eventIdx, expected.eventIdx);
  expect(actual.period, expected.period);
  expect(actual.periodType, expected.periodType);
  expect(actual.ordinalNum, expected.ordinalNum);
  expect(actual.periodTime, expected.periodTime);
  expect(actual.periodTimeRemaining, expected.periodTimeRemaining);
  checkGoals(actual.goals, expected.goals);
}

checkPlay(Play actual, Play expected) {
  expect(actual.type, expected.type);
  expect(actual.event, expected.event);
  checkAbout(actual.about, expected.about);
}

checkPlayWithPlayers(PlayWithPlayers actual, PlayWithPlayers expected) {
  expect(actual.team.id, expected.team.id);
  expect(actual.team.name, expected.team.name);
  expect(actual.players.length, expected.players.length);
  actual.players.asMap().forEach((key, value) {
    expect(value.id, expected.players[key].id);
    expect(value.fullname, expected.players[key].fullname);
    expect(value.playerType, expected.players[key].playerType);
  });
  checkPlay(actual, expected);
}

/// Player classes unit tests
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

/// Team classes unit tests
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

checkTeamFinal(TeamFinal actual, TeamFinal expected) {
  expect(actual.name, expected.name);
  expect(actual.id, expected.id);
  expect(actual.abb, expected.abb);
  expect(actual.teamStats, expected.teamStats);
  expect(actual.playerTableSource.length, expected.playerTableSource.length);
  actual.playerTableSource.asMap().forEach((key, value) {
    checkPlayerGame(value, expected.playerTableSource[key]);
  });
}

checkTeamPreview(TeamPreview actual, TeamPreview expected) {
  expect(actual.name, expected.name);
  expect(actual.id, expected.id);
  expect(actual.abb, expected.abb);
  expect(actual.teamStats, expected.teamStats);
  expect(actual.playerTableSource.length, expected.playerTableSource.length);
  actual.playerTableSource.asMap().forEach((key, value) {
    checkPlayerGame(value, expected.playerTableSource[key]);
  });
}

///Game classes unit tests
checkGame(Game actual, Game expected){
  expect(actual.type, expected.type);
  expect(actual.id, expected.id);
  expect(actual.dateTime, expected.dateTime);
  expect(actual.state, expected.state);
  expect(actual.content.videos.length, expected.content.videos.length);
  actual.content.videos.asMap().forEach((key, value) {
    checkVideo(value, expected.content.videos[key]);
  });
  checkTeamSchedule(actual.homeTeam, expected.homeTeam);
  checkTeamSchedule(actual.awayTeam, expected.awayTeam);
  expect(actual.lineScore.periodString, expected.lineScore.periodString);
  expect(actual.lineScore.period, expected.lineScore.period);
  expect(actual.lineScore.timeRemaining, expected.lineScore.timeRemaining);
  expect(actual.lineScore.periods.length, expected.lineScore.periods.length);
  actual.lineScore.periods.asMap().forEach((key, value) {
    expect(value.num, expected.lineScore.periods[key].num);
    expect(value.periodType, expected.lineScore.periods[key].periodType);
    expect(value.home, expected.lineScore.periods[key].home);
    expect(value.away, expected.lineScore.periods[key].away);
  });
}

checkGamePreview(GamePreview actual, GamePreview expected){
  checkGame(actual, expected);
  checkTeamPreview(actual.home, expected.home);
  checkTeamPreview(actual.away, expected.away);
}

checkGameFinal(GameFinal actual, GameFinal expected){
  checkGame(actual, expected);
  checkTeamFinal(actual.home, expected.home);
  checkTeamFinal(actual.away, expected.away);
  expect(actual.plays.length, expected.plays.length);
  actual.plays.asMap().forEach((key, value) {
    checkPlay(value, expected.plays[key]);
  });
}

///Schedule classes unit tests
checkSchedule(Schedule actual, Schedule expected) {
  expect(actual.gameCount, expected.gameCount);
  expect(actual.date, expected.date);
}

checkScheduleGame(ScheduleGames actual, ScheduleGames expected){
  checkSchedule(actual, expected);
  expect(actual.games.length, expected.games.length);
  actual.games.asMap().forEach((key, value) {
    checkGame(value, expected.games[key]);
  });
}
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter/cupertino.dart';

class Playoff {
  final String season;
  final int defaultRound;
  final List<PlayoffRound> rounds;

  Playoff(
      {@required this.season,
      @required this.defaultRound,
      @required this.rounds});

  factory Playoff.fromJson(Map<String, dynamic> json) {
    return Playoff(
        season: getJsonString('season', json),
        defaultRound: getJsonInt('defaultRound', json),
        rounds: List<PlayoffRound>.from(getJsonList(['rounds'], json)
            .map((round) => PlayoffRound.fromJson(round))));
  }

  Iterable<String> get tabs sync* {
    for(PlayoffRound round in rounds)
      yield round.name;
  }

  PlayoffRound getPlayoffRound(String name){
    return rounds.firstWhere((round) => round.name == name, orElse: () => null);
  }
}

class PlayoffRound {
  final int number;
  final String name;
  final int numberOfGames;
  final int numberOfWins;
  final List<Series> series;

  PlayoffRound(
      {@required this.number,
      @required this.name,
      @required this.numberOfGames,
      @required this.numberOfWins,
      @required this.series});

  factory PlayoffRound.fromJson(Map<String, dynamic> json) {
    return PlayoffRound(
        number: getJsonInt('number', json),
        name: getJsonString2(['names', 'name'], json),
        numberOfGames: getJsonInt2(['format', 'numberOfGames'], json),
        numberOfWins: getJsonInt2(['format', 'numberOfWins'], json),
        series: List<Series>.from(getJsonList(['series'], json)
            .map((series) => Series.fromJson(series))));
  }
}

class Series {
  final int seriesNumber;
  final SeriesCurrentGame seriesCurrentGame;
  final int conferenceId;
  final String conferenceName;
  final List<SeriesTeam> teams;

  Series(
      {@required this.seriesNumber,
      @required this.seriesCurrentGame,
      @required this.conferenceId,
      @required this.conferenceName,
      @required this.teams});

  factory Series.fromJson(Map<String, dynamic> json) {
    return Series(
        seriesNumber: getJsonInt('seriesNumber', json),
        seriesCurrentGame: SeriesCurrentGame.fromJson(
            getJsonObject(['currentGame', 'seriesSummary'], json)),
        conferenceId: getJsonInt2(['conference', 'id'], json),
        conferenceName: getJsonString2(['conference', 'name'], json),
        teams: List<SeriesTeam>.from(getJsonList(['matchupTeams'], json)
            .map((team) => SeriesTeam.fromJson(team))));
  }
}

class SeriesCurrentGame {
  final int gamePk;
  final int gameNumber;
  final String gameLabel;
  final String seriesStatus;

  SeriesCurrentGame(
      {@required this.gamePk,
      @required this.gameNumber,
      @required this.gameLabel,
      @required this.seriesStatus});

  factory SeriesCurrentGame.fromJson(Map<String, dynamic> json) {
    return SeriesCurrentGame(
        gamePk: getJsonInt('gamePk', json),
        gameNumber: getJsonInt('gameNumber', json),
        gameLabel: getJsonString('gameLabel', json),
        seriesStatus: getJsonString('seriesStatusShort', json));
  }
}

class SeriesTeam extends Team {
  final int rank;
  final bool isTop;
  final int wins;
  final int losses;

  SeriesTeam(
      {@required Team team,
      @required this.rank,
      @required this.isTop,
      @required this.wins,
      @required this.losses})
      : super.clone(team);

  factory SeriesTeam.fromJson(Map<String, dynamic> json) {
    return SeriesTeam(
        team: Team.fromJson(getJsonObject(['team'], json)),
        rank: getJsonInt2(['seed', 'rank'], json),
        isTop: getJsonBoolean2(['seed', 'isTop'], json),
        wins: getJsonInt2(['seriesRecord', 'wins'], json),
        losses: getJsonInt2(['seriesRecord', 'losses'], json));
  }
}

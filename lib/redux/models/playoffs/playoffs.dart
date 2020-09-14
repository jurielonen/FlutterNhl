import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/standings/standings.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/views/playoffs/widgets/series_card.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:flutter/cupertino.dart';

class Playoff {
  final String season;
  final int _defaultRound;
  final List<PlayoffRound> rounds;

  Playoff(this._defaultRound, {@required this.season, @required this.rounds});

  factory Playoff.fromJson(Map<String, dynamic> json) {
    return Playoff(getJsonInt('defaultRound', json, defaultValue: 0),
        season: getJsonString('season', json),
        rounds: List<PlayoffRound>.from(getJsonList(['rounds'], json)
            .map((round) => PlayoffRound.fromJson(round))));
  }

  Iterable<String> get tabs sync* {
    for (PlayoffRound round in rounds) yield round.name;
  }

  PlayoffRound getPlayoffRound(String name) {
    return rounds.firstWhere((round) => round.name == name, orElse: () => null);
  }

  int get defaultRound {
    if (_defaultRound < rounds.length && _defaultRound >= 0)
      return _defaultRound;
    else
      return rounds.length - 1;
  }

  void setSeriesGame(Series series, List<Game> games) {
    int index;
    for (PlayoffRound round in rounds) {
      print('checking games');
      index = round.series.indexOf(series);
      if (index > -1) {
        print('found series $index');
        round.series[index].games = games;
        break;
      }
    }
  }
}

class PlayoffRound {
  final int number;
  final String name;
  final int numberOfGames;
  final int numberOfWins;
  final List<Series> series;
  final List<Conference> conferences;

  PlayoffRound(
      {@required this.number,
      @required this.name,
      @required this.numberOfGames,
      @required this.numberOfWins,
      @required this.series,
      @required this.conferences});

  factory PlayoffRound.fromJson(Map<String, dynamic> json) {
    int tGames = getJsonInt2(['format', 'numberOfGames'], json);
    int tWins = getJsonInt2(['format', 'numberOfWins'], json);
    List<Conference> conferences = [];
    List<Series> series = List<Series>.from(getJsonList(['series'], json)
        .map((series) => Series.fromJson(series, tGames, tWins)));
    series.forEach((serie) {
      if (!conferences.contains(serie.conference))
        conferences.add(serie.conference);
    });
    return PlayoffRound(
      number: getJsonInt('number', json),
      name: getJsonString2(['names', 'name'], json),
      numberOfGames: tGames,
      numberOfWins: tWins,
      series: series,
      conferences: conferences,
    );
  }

  List<Widget> get gridItems {
    List<Widget> widgets = [];
    if (conferences != null && conferences.length == 2) {
      List<Series> first = series
          .where((element) =>
              element.conference.conferenceId == conferences.first.conferenceId)
          .toList();
      List<Series> last = series
          .where((element) =>
              element.conference.conferenceId == conferences.last.conferenceId)
          .toList();
      if (first.length == last.length) {
        widgets.addAll([
          PressableCard(
            child: Center(
                child: Text(
              conferences.first.conferenceName.toUpperCase(),
              style: Styles.scaffoldGameWinnerText,
            )),
          ),
          PressableCard(
            child: Center(
                child: Text(conferences.last.conferenceName.toUpperCase(),
                    style: Styles.scaffoldGameWinnerText)),
          )
        ]);
        for (int x = 0; x < first.length; x++) {
          widgets.add(SeriesCard(series: first[x]));
          widgets.add(SeriesCard(series: last[x]));
        }
        return widgets;
      }
    }
    return series
        .map((e) => SeriesCard(
              series: e,
            ))
        .toList();
  }
}

class Series {
  final int seriesNumber;
  final SeriesCurrentGame seriesCurrentGame;
  final Conference conference;
  final List<SeriesTeam> teams;
  final int numberOfGames;
  final int numberOfWins;
  List<Game> games;

  Series({
    @required this.seriesNumber,
    @required this.seriesCurrentGame,
    @required this.conference,
    @required this.teams,
    @required this.numberOfGames,
    @required this.numberOfWins,
  });

  factory Series.fromJson(Map<String, dynamic> json, int games, int wins) {
    return Series(
      seriesNumber: getJsonInt('seriesNumber', json),
      seriesCurrentGame: SeriesCurrentGame.fromJson(
          getJsonObject(['currentGame', 'seriesSummary'], json)),
      conference: Conference.fromJson(getJsonObject(['conference'], json)),
      teams: List<SeriesTeam>.from(getJsonList(['matchupTeams'], json)
          .map((team) => SeriesTeam.fromJson(team))),
      numberOfGames: games,
      numberOfWins: wins,
    );
  }

  int get hasATeamWon {
    if (numberOfWins != null) {
      if (numberOfWins <= seriesCurrentGame.gameNumber) {
        SeriesTeam team = teams.firstWhere((team) => team.wins == numberOfWins,
            orElse: () => null);
        if (team != null) return team.id;
      }
    }
    return null;
  }

  @override
  int get hashCode =>
      seriesNumber.hashCode ^ teams.first.id.hashCode ^ teams.last.id.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Series &&
          runtimeType == other.runtimeType &&
          seriesNumber == other.seriesNumber &&
          teams.first.id == other.teams.first.id &&
          teams.last.id == other.teams.last.id;
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

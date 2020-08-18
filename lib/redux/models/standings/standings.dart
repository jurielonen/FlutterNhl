import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/standings/standings_custom_table_source.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter/cupertino.dart';

enum StandingsType {
  DIVISION,
  CONFERENCE,
  LEAGUE,
  WILDCARD
}

String standingsTypeToString(StandingsType type){
  switch(type){
    case StandingsType.DIVISION: return 'Division';
    case StandingsType.CONFERENCE: return 'Conference';
    case StandingsType.LEAGUE: return 'League';
    case StandingsType.WILDCARD: return 'Wildcard';
    default: return null;
  }
}

class Standing {
  final String season;
  //final List<StandingsDivision> division;
  final List<StandingsTeam> teams;
  List<StandingsType> _tabs;

  Standing({@required this.season, @required this.teams}){
    _tabs = [StandingsType.DIVISION, StandingsType.CONFERENCE, StandingsType.LEAGUE];
    if (season != '20192020') _tabs.add(StandingsType.WILDCARD);
  }

  factory Standing.fromJson(Map<String, dynamic> json) {
    List<StandingsTeam> teams = [];
    getJsonList(['records'], json).forEach((divisions) {
      getJsonList(['teamRecords'], divisions).forEach((team) {
        teams.add(StandingsTeam.fromJson(team));
      });
    });
    String season = getJsonString2(['records', 0, 'season'], json);
    if(season == "")
      season = Config.getCurrentSeason;
    return Standing(
      season: season,
      teams: teams,
    );
  }

  List<StandingsType> get tabs => _tabs;

  List<StandingsTableSource> tabType(StandingsType type) {
    if(!_tabs.contains(type)) return null;
    List<StandingsTableSource> source = [];
    if (type == StandingsType.WILDCARD) {
      List<StandingsTeam> div = [];
      List<StandingsTeam> con = [];

      teams.forEach((team) {
        if(team.wildCardRank == 0){
          div.add(team);
        } else {
          con.add(team);
        }
      });
      source.addAll(_getDivisions(div));
      source.addAll(_getConference(con));
    } else if(type == StandingsType.CONFERENCE){
      source.addAll(_getConference(teams));
    } else if(type == StandingsType.DIVISION){
      source.addAll(_getDivisions(teams));
    } else if(type == StandingsType.LEAGUE){
      teams.sort((a,b) => a.leagueRank.compareTo(b.leagueRank));
      source.add(StandingsTableSource(teams, 'League'));
    }
    return source;
  }

  List<StandingsTableSource> _getDivisions(List<StandingsTeam> teams){
    List<StandingsTeam> metro = [];
    List<StandingsTeam> atlantic = [];
    List<StandingsTeam> pacific = [];
    List<StandingsTeam> central = [];
    teams.forEach((team) {
      switch (team.divisionId) {
        case DivisionEnum.PACIFIC:
          pacific.add(team);
          break;
        case DivisionEnum.METROPOLITAN:
          metro.add(team);
          break;
        case DivisionEnum.CENTRAL:
          central.add(team);
          break;
        case DivisionEnum.ATLANTIC:
          atlantic.add(team);
      }
    });

    pacific.sort((a,b) => a.divisionRank.compareTo(b.divisionRank));
    central.sort((a,b) => a.divisionRank.compareTo(b.divisionRank));
    atlantic.sort((a,b) => a.divisionRank.compareTo(b.divisionRank));
    metro.sort((a,b) => a.divisionRank.compareTo(b.divisionRank));

    return [StandingsTableSource(metro, 'Metropolitan'), StandingsTableSource(atlantic, 'Atlantic'), StandingsTableSource(pacific, 'Pacific'), StandingsTableSource(central, 'Central')];
  }

  List<StandingsTableSource> _getConference(List<StandingsTeam> teams){
    List<StandingsTeam> east = [];
    List<StandingsTeam> west = [];
    teams.forEach((team) {
      switch(team.conferenceId){
        case ConferenceEnum.EAST:
          east.add(team);
          break;
        case ConferenceEnum.WEST:
          west.add(team);
          break;
      }
    });

    east.sort((a,b) => a.wildCardRank.compareTo(b.wildCardRank));
    west.sort((a,b) => a.wildCardRank.compareTo(b.wildCardRank));

    return [StandingsTableSource(east, 'East'), StandingsTableSource(east, 'West')];
  }
}

/*class StandingsDivision {
  final int divisionId;
  final String divisionName;
  final int conferenceId;
  final String conferenceName;
  final List<StandingsTeam> teams;

  StandingsDivision(
      {@required this.divisionId,
      @required this.conferenceId,
      @required this.divisionName,
      @required this.conferenceName,
      @required this.teams});

  factory StandingsDivision.fromJson(Map<String, dynamic> json) {
    return StandingsDivision(
        divisionId: getJsonInt2(['division', 'id'], json),
        conferenceId: getJsonInt2(['conference', 'id'], json),
        divisionName: getJsonString2(['division', 'name'], json),
        conferenceName: getJsonString2(['conference', 'name'], json),
        teams: List<StandingsTeam>.from(getJsonList(['teamRecords'], json)
            .map((team) => StandingsTeam.fromJson(team))));
  }
}*/

class StandingsTeam extends Team {
  final int divisionRank;
  final int conferenceRank;
  final int leagueRank;
  final int wildCardRank;
  final DivisionEnum divisionId;
  final ConferenceEnum conferenceId;
  final List<Record> records;
  final String clinchIndicator;
  final double pointPercentage;
  final String streakCode;
  final int gamesPlayed;
  final int row;
  final int points;

  StandingsTeam(Team team,
      {@required this.divisionRank,
      @required this.conferenceRank,
      @required this.leagueRank,
      @required this.wildCardRank,
      @required this.divisionId,
      @required this.conferenceId,
      @required this.records,
      @required this.clinchIndicator,
      @required this.pointPercentage,
      @required this.streakCode,
      @required this.gamesPlayed,
      @required this.row,
      @required this.points})
      : super.clone(team);

  factory StandingsTeam.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> teamObj = getJsonObject(['team'], json);
    List<Record> records = [];
    Record temp = recordFromJson(getJsonObject(['leagueRecord'], json));
    if (temp != null) records.add(temp);

    for (dynamic obj in getJsonList(['records', 'overallRecords'], json)) {
      if (obj is Map<String, dynamic>) {
        temp = recordFromJson(obj);
        if (temp != null) records.add(temp);
      }
    }

    return StandingsTeam(
      Team.fromJson(teamObj),
      divisionRank:
          int.parse(getJsonString('divisionRank', json, defaultString: '-1')),
      conferenceRank:
          int.parse(getJsonString('conferenceRank', json, defaultString: '-1')),
      leagueRank:
          int.parse(getJsonString('leagueRank', json, defaultString: '-1')),
      wildCardRank:
          int.parse(getJsonString('wildCardRank', json, defaultString: '-1')),
      divisionId: divisionEnumFromInt(getJsonInt2(['division', 'id'], teamObj)),
      conferenceId: conferenceEnumFromInt(getJsonInt2(['conference', 'id'], teamObj)),
      records: records,
      clinchIndicator: getJsonString('clinchIndicator', json),
      pointPercentage: getJsonDouble('pointsPercentage', json),
      streakCode: getJsonString2(['streak', 'streakCode'], json),
      gamesPlayed: getJsonInt('gamesPlayed', json),
      row: getJsonInt('row', json),
      points: getJsonInt('points', json),
    );
  }

  Iterable<String> get cells sync* {
    yield gamesPlayed.toString();
    String wins = '0';
    String losses = '0';
    String ot = '0';
    String homeRecord = '0-0-0';
    String awayRecord = '0-0-0';
    String soRecord = '0-0';
    String l10Record = '0-0-0';

    for (Record record in records) {
      if (record.type == RecordType.LEAGUE && record is RecordNormal) {
        wins = record.wins.toString();
        losses = record.losses.toString();
        ot = record.ot.toString();
      } else if (record.type == RecordType.HOME) {
        homeRecord = record.recordString;
      } else if (record.type == RecordType.AWAY) {
        awayRecord = record.recordString;
      } else if (record.type == RecordType.SHOOTOUT) {
        soRecord = record.recordString;
      } else if (record.type == RecordType.LASTTEN) {
        l10Record = record.recordString;
      }
    }
    yield wins;
    yield losses;
    yield ot;
    yield points.toString();
    yield row.toString();
    yield homeRecord;
    yield awayRecord;
    yield soRecord;
    yield l10Record;
    yield streakCode;
  }
}

abstract class Record {
  RecordType get type;
  String get recordString;
}

Record recordFromJson(Map<String, dynamic> json) {
  RecordType type = recordTypeFromString(getJsonString('type', json));
  if (type == null)
    return null;
  else {
    if (type == RecordType.SHOOTOUT) {
      return RecordShootout(
          wins: getJsonInt('wins', json), losses: getJsonInt('losses', json));
    } else {
      return RecordNormal(
          wins: getJsonInt('wins', json),
          losses: getJsonInt('losses', json),
          ot: getJsonInt('ot', json),
          recordType: type);
    }
  }
}

class RecordNormal extends Record {
  final int wins;
  final int losses;
  final int ot;
  final RecordType recordType;

  RecordNormal(
      {@required this.wins,
      @required this.losses,
      @required this.ot,
      @required this.recordType});

  @override
  RecordType get type => recordType;

  @override
  String get recordString => '$wins-$losses-$ot';
}

class RecordShootout extends Record {
  final int wins;
  final int losses;

  RecordShootout({@required this.wins, @required this.losses});

  @override
  RecordType get type => RecordType.SHOOTOUT;

  @override
  String get recordString => '$wins-$losses';
}

enum RecordType {
  HOME,
  AWAY,
  SHOOTOUT,
  LASTTEN,
  LEAGUE,
}

RecordType recordTypeFromString(String type) {
  switch (type) {
    case 'home':
      return RecordType.HOME;
    case 'away':
      return RecordType.AWAY;
    case 'shootOuts':
      return RecordType.SHOOTOUT;
    case 'lastTen':
      return RecordType.LASTTEN;
    case 'league':
      return RecordType.LEAGUE;
    default:
      return null;
  }
}

enum DivisionEnum {
  METROPOLITAN,
  ATLANTIC,
  PACIFIC,
  CENTRAL,
}

DivisionEnum divisionEnumFromInt(int id){
  switch(id){
    case 17:
      return DivisionEnum.ATLANTIC;
    case 16:
      return DivisionEnum.CENTRAL;
    case 18:
      return DivisionEnum.METROPOLITAN;
    case 15:
      return DivisionEnum.PACIFIC;
    default: return null;
  }
}

enum ConferenceEnum {
  EAST,
  WEST
}

ConferenceEnum conferenceEnumFromInt(int id){
  switch(id){
    case 5:
      return ConferenceEnum.WEST;
    case 6:
      return ConferenceEnum.EAST;
  }
}
import 'dart:convert';

import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';

class Config {
  /*Config({
    this.playerReportData,
    this.goalieReportData,
    this.teamReportData,
    //this.aggregatedColumns,
    //this.individualColumns,
  });*/

  static final Config _config = Config._internal();

  Map<String, Advanced> playerReportData;
  Map<String, Advanced> goalieReportData;
  Map<String, Advanced> teamReportData;
  String currentSeason;
  String regularSeasonStartDate;
  String regularSeasonEndDate;
  String seasonEndDate;
  //final List<String> aggregatedColumns;
  //final List<String> individualColumns;

  Config._internal() {
    playerReportData = {};
    goalieReportData = {};
    teamReportData = {};
    //return Config(
    //    playerReportData: {}, goalieReportData: {}, teamReportData: {});
  }

  factory Config() => _config;

  fromJson(Map<String, dynamic> json) {
    playerReportData = Map.from(json["playerReportData"])
        .map((k, v) => MapEntry<String, Advanced>(k, Advanced.fromJson(v)));
    goalieReportData = Map.from(json["goalieReportData"])
        .map((k, v) => MapEntry<String, Advanced>(k, Advanced.fromJson(v)));
    teamReportData = Map.from(json["teamReportData"])
        .map((k, v) => MapEntry<String, Advanced>(k, Advanced.fromJson(v)));
    //aggregatedColumns: List<String>.from(json["aggregatedColumns"].map((x) => x)),
    //individualColumns: List<String>.from(json["individualColumns"].map((x) => x)),
  }

  fromJsonSeason(Map<String, dynamic> json) {
    Map<String, dynamic> temp = getJsonObject(['seasons', 0], json);
    currentSeason = getJsonString('seasonId', temp);
    regularSeasonStartDate = getJsonString('regularSeasonStartDate', temp);
    regularSeasonEndDate = getJsonString('regularSeasonEndDate', temp);
    seasonEndDate = getJsonString('seasonEndDate', temp);
  }

  bool isEmpty() {
    return playerReportData.isEmpty ||
        goalieReportData.isEmpty ||
        teamReportData.isEmpty;
  }

  ParamType checkParamType(StatType type) {
    switch (type) {
      case StatType.GOALIE:
        String stat = goalieReportData.keys.first;
        return ParamType(
            type, stat, goalieReportData[stat].season.getSortKeys());
        break;
      case StatType.PLAYER:
        String stat = playerReportData.keys.first;
        return ParamType(
            type, stat, playerReportData[stat].season.getSortKeys());
        break;
      default:
        String stat = teamReportData.keys.first;
        return ParamType(type, stat, teamReportData[stat].season.getSortKeys());
        break;
    }
  }

  ParamType getParamType(StatType type, String stat) {
    switch (type) {
      case StatType.GOALIE:
        if (goalieReportData.containsKey(stat)) {
          return ParamType(
              type, stat, goalieReportData[stat].season.getSortKeys());
        }
        break;
      case StatType.PLAYER:
        if (playerReportData.containsKey(stat)) {
          return ParamType(
              type, stat, playerReportData[stat].season.getSortKeys());
        }
        break;
      case StatType.TEAM:
        if (teamReportData.containsKey(stat)) {
          return ParamType(
              type, stat, teamReportData[stat].season.getSortKeys());
        }
        break;
    }
    return ParamType(type, stat, '');
  }

  List<String> getStatTypes(StatType type) {
    switch (type) {
      case StatType.PLAYER:
        return playerReportData.keys.toList();
        break;

      case StatType.GOALIE:
        return goalieReportData.keys.toList();
        break;

      case StatType.TEAM:
        return teamReportData.keys.toList();
        break;
    }
    return ['Unknown'];
  }

  List<String> getFilterItems(StatType type, String stat) {
    switch (type) {
      case StatType.PLAYER:
        if (playerReportData.containsKey(stat)) {
          return playerReportData[stat].season.resultFilters;
        }
        break;

      case StatType.GOALIE:
        if (goalieReportData.containsKey(stat)) {
          return goalieReportData[stat].season.resultFilters;
        }
        break;

      case StatType.TEAM:
        if (teamReportData.containsKey(stat)) {
          return teamReportData[stat].season.resultFilters;
        }
        break;
    }
    return [];
  }
}

class Advanced {
  Advanced({
    this.game,
    this.season,
  });

  final Type game;
  final Type season;

  factory Advanced.fromJson(Map<String, dynamic> json) => Advanced(
        game: Type.fromJson(json["game"]),
        season: Type.fromJson(json["season"]),
      );
}

class Type {
  Type({
    this.displayItems,
    this.resultFilters,
    this.sortKeys,
  });

  final List<String> displayItems;
  final List<String> resultFilters;
  final List<String> sortKeys;

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        displayItems: List<String>.from(json["displayItems"].map((x) => x)),
        resultFilters: List<String>.from(json["resultFilters"].map((x) => x)),
        sortKeys: List<String>.from(json["sortKeys"].map((x) => x)),
      );

  String getSortKeys() {
    var param = [];
    sortKeys.forEach((key) {
      param.add({'property': key.toString(), 'direction': 'DESC'});
    });
    print(json.encode(param));
    return json.encode(param);
  }
}

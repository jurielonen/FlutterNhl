import 'dart:convert';


class Config {
  Config({
    this.playerReportData,
    this.goalieReportData,
    this.teamReportData,
    //this.aggregatedColumns,
    //this.individualColumns,
  });

  final Map<String, Advanced> playerReportData;
  final Map<String, Advanced> goalieReportData;
  final Map<String, Advanced> teamReportData;
  //final List<String> aggregatedColumns;
  //final List<String> individualColumns;

  factory Config.fromJson(Map<String, dynamic> json) => Config(
    playerReportData: Map.from(json["playerReportData"]).map((k, v) => MapEntry<String, Advanced>(k, Advanced.fromJson(v))),
    goalieReportData: Map.from(json["goalieReportData"]).map((k, v) => MapEntry<String, Advanced>(k, Advanced.fromJson(v))),
    teamReportData: Map.from(json["teamReportData"]).map((k, v) => MapEntry<String, Advanced>(k, Advanced.fromJson(v))),
    //aggregatedColumns: List<String>.from(json["aggregatedColumns"].map((x) => x)),
    //individualColumns: List<String>.from(json["individualColumns"].map((x) => x)),
  );
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

  String getSortKeys(){
    var param = [];
    sortKeys.forEach((key) { param.add( {'property': key.toString(), 'direction': 'DESC'});});
    print(json.encode(param));
    return json.encode(param);
  }
}

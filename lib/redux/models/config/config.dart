import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/season/season.dart';

class Config {
  static final Config _config = Config._internal();
  static final DateTime minDate = DateTime(2009, 10, 1);

  Map<String, Advanced> playerReportData;
  Map<String, Advanced> goalieReportData;
  Map<String, Advanced> teamReportData;
  Season currentSeason;
  Season selectedSeason;

  Config._internal() {
    playerReportData = {};
    goalieReportData = {};
    teamReportData = {};
  }

  factory Config() => _config;

  fromJson(Map<String, dynamic> json) {
    playerReportData = Map.from(json["playerReportData"])
        .map((k, v) => MapEntry<String, Advanced>(k, Advanced.fromJson(v)));
    goalieReportData = Map.from(json["goalieReportData"])
        .map((k, v) => MapEntry<String, Advanced>(k, Advanced.fromJson(v)));
    teamReportData = Map.from(json["teamReportData"])
        .map((k, v) => MapEntry<String, Advanced>(k, Advanced.fromJson(v)));
  }

  ///sets current season if it is found in Season classes cache.
  ///if season is found returns true else false.
  bool checkForCurrentSeason() {
    Season temp = Season.getCurrentSeason(DateTime.now());
    if(temp == null)
      return false;
    currentSeason = temp;
    selectedSeason = currentSeason;
    return true;
  }

  setMaxSeasonToCurrent() {
    currentSeason = Season.getMaxSeason();
    selectedSeason = currentSeason;
  }

  /// Checks that current date is inside current season.
  /// Returns current date if it is inside current season.
  /// Returns seasons end date if current date is higher than today's date.
  /// Returns seasons start date if current date is lower than today's date.
  DateTime getStartingDate(){
    int compareValueEnd = DateTime.now().compareTo(currentSeason.seasonEndDate);
    int compareValueStart = DateTime.now().compareTo(currentSeason.regularSeasonStartDate);
    if(0 < compareValueEnd){
      return currentSeason.seasonEndDate;
    } else if(0 > compareValueStart){
      return currentSeason.regularSeasonStartDate;
    } else {
      return DateTime.now();
    }
  }

  setCurrentSeason(Season season){
    selectedSeason = season;
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
    return ParamType(type, stat, null);
  }

  List<String> getStatTypes(StatType type) {
    switch (type) {
      case StatType.PLAYER:
        return _compareKeys(playerReportData.keys.toList());
        break;

      case StatType.GOALIE:
        return _compareKeys(goalieReportData.keys.toList());
        break;

      case StatType.TEAM:
        return _compareKeys(teamReportData.keys.toList());
        break;
    }
    return ['Unknown'];
  }

  List<String> _compareKeys(List<String> list){
    list.sort((a,b) {
      if(a == 'summary')
        return -1;
      else
        return a.compareTo(b);
    });
    return list;
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

  static int getCurrentDraft() {
    if (_config.currentSeason != null && _config.currentSeason.season != '') {
      int year = int.tryParse(_config.currentSeason.season.substring(0, 4));
      if (year != null) {
        return year;
      }
    }
    int year = DateTime.now().year;
    return year;
  }

  static bool isPlayoffsDate(DateTime date) {
    if(_config.selectedSeason.fitsCurrentSeason(date)){
      return _config.selectedSeason.isPlayoffs(date);
    } else {
      Season temp = Season.getCurrentSeason(date);
      if(temp != null){
        return temp.isPlayoffs(date);
      }
    }
    return false;
  }

  static bool isPlayoffsCurrent(){
    if(_config.currentSeason != null){
      return _config.currentSeason.isPlayoffs(DateTime.now());
    }
    return false;
  }

  static DateTime maxDate(){
    if(_config.currentSeason != null)
      return _config.currentSeason.checkEndDate;
    return DateTime.now();
  }

  static DateTime selectedMaxDate(){
    if(_config.selectedSeason != null){
      return _config.selectedSeason.checkEndDate;
    }
    return DateTime.now();
  }

  static DateTime selectedMinDate(){
    if(_config.selectedSeason != null){
      return _config.selectedSeason.checkStartDate;
    }
    return minDate;
  }

  static String getMaxSeason(){
    if(_config.currentSeason != null){
      return _config.currentSeason.season;
    }
    int year = DateTime.now().year;
    return '$year${year+1}';
  }

  /*bool isSeasonDownloaded(String date){
    DateTime temp = Styles.apiDateFormat.parse(date);
    if(selectedSeason.fitsCurrentSeason(temp))
      return true;
    Season tSeason = Season.getCurrentSeason(temp);
    if(tSeason != null){
      selectedSeason = tSeason;
      return true;
    }
    return false;
  }*/

  void setSelectedSeason(DateTime date){
    final temp = Season.getCurrentSeason(date);
    if(temp == null)
      throw Exception('Couldnt find current season');
    selectedSeason = temp;
  }

  String validDate(DateTime date){
    if(selectedSeason.fitsCurrentSeason(date))
      return Styles.apiDateFormat.format(date);
    else{
      if(selectedSeason.seasonEndDate.isBefore(date))
        return Styles.apiDateFormat.format(selectedSeason.seasonEndDate);
      else
        return Styles.apiDateFormat.format(selectedSeason.regularSeasonStartDate);
    }
  }

  static String get getCurrentSeason {
    if(Config().currentSeason != null)
      return Config().currentSeason.season;
    return '20202021';
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

  Map<String, bool> getSortKeys() {
    Map<String, bool> param = {};
    sortKeys.forEach((key) {
      param[key] = true;
    });
    return param;
  }
}

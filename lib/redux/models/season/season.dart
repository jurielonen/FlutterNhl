import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:flutter/material.dart';

class Season {
  final String season;
  final DateTime regularSeasonStartDate;
  final DateTime regularSeasonEndDate;
  DateTime checkStartDate;
  DateTime checkPlayoffs;
  DateTime checkEndDate;
  final DateTime seasonEndDate;
  final bool tiesInUse;

  static final Map<String, Season> _cache = <String, Season>{};

  Season(
      {@required this.season,
        @required this.regularSeasonStartDate,
        @required this.regularSeasonEndDate,
        @required this.seasonEndDate,
        @required this.tiesInUse,}){
    checkStartDate = regularSeasonStartDate.subtract(Duration(seconds: 5));
    checkPlayoffs = regularSeasonEndDate.subtract(Duration(seconds: 5));
    checkEndDate = seasonEndDate.add(Duration(seconds: 5));
  }

  factory Season.fromJson(Map<String, dynamic> json) {
    String season = getJsonString('seasonId', json);
    if (_cache.containsKey(season)) {
      return _cache[season];
    } else {
      if (season == '') return null;
      Season temp = Season(
        season: season,
        regularSeasonStartDate: getJsonDateTime('regularSeasonStartDate', json),
        regularSeasonEndDate: getJsonDateTime('regularSeasonEndDate', json),
        seasonEndDate: getJsonDateTime('seasonEndDate', json),
        tiesInUse: getJsonBoolean('tiesInUse', json),
      );
      _cache[season] = temp;
      return temp;
    }
  }

  bool isPlayoffs(DateTime date){
    if(checkPlayoffs.isBefore(date) && checkEndDate.isAfter(date))
      return true;
    return false;
  }

  bool fitsCurrentSeason(DateTime date){
    if(checkEndDate.isAfter(date) && checkStartDate.isBefore(date))
      return true;
    return false;
  }

  ///gets the current season from cache.
  ///
  static Season getCurrentSeason(DateTime date){
    Season next = _getNextSeason(date), last = _getLastSeason(date);
    int year = date.year;
    String maxSeason = Config.getMaxSeason();
    String nextSeason = '$year${year+1}';
    if(int.parse(maxSeason) < int.parse(nextSeason)){
      return _checkSeason(last, date);
    }
    if(next != null && last != null){
      if(next.fitsCurrentSeason(date))
        return next;
      else if(last.fitsCurrentSeason(date))
        return last;
      else {
        return _checkSeasons(next, last, date);
      }
    } else {
      if (next != null) {
        if (next.fitsCurrentSeason(date))
          return next;
      }
      if (last != null) {
        if (last.fitsCurrentSeason(date))
          return last;
      }
      return null;
    }

  }

  static Season _checkSeasons(Season next, Season last, DateTime date){
    if(next.checkStartDate.isAfter(date) && last.checkEndDate.isBefore(date))
      return next;
    else if(next.checkEndDate.isBefore(date))
      return next;
    return null;
  }

  static Season _checkSeason(Season season, DateTime date){
    if(season != null){
      if(season.fitsCurrentSeason(date))
        return season;
    }
    return null;
  }

  static _getSeason(String year){
    if(_cache.containsKey(year))
      return _cache[year];
    return null;
  }

  static bool selectableDate(DateTime date){
    if(date.month == DateTime.july || date.month == DateTime.august || date.month == DateTime.september){
      //checking for Covid-19 season which is different than others
      if(date.year == 2020 && (date.month == DateTime.august || date.month == DateTime.september)){
        if(_cache.containsKey('20192020'))
          return _cache['20192020'].fitsCurrentSeason(date);
        else
          return true;
      } else {
        return false;
      }
    }
    Season next = _getNextSeason(date), last = _getLastSeason(date);
    if(next != null && last != null){
      if(next.fitsCurrentSeason(date) || last.fitsCurrentSeason(date))
        return true;
      return false;
    }
    return true;
  }

  static Season _getNextSeason(DateTime date){
    int year = date.year;
    String nextSeason = '$year${year+1}';
    String maxSeason = Config.getMaxSeason();
    if(int.parse(maxSeason) < int.parse(nextSeason)){
      return null;
    } else {
      return _getSeason(nextSeason);
    }
  }

  static Season _getLastSeason(DateTime date){
    int year = date.year;
    String lastSeason = '${year-1}$year';
    return _getSeason(lastSeason);
  }

  static String getSeasonString(int year){
    String nextSeason = '$year${year+1}';
    String lastSeason = '${year-1}$year';
    String maxSeason = Config.getMaxSeason();
    if(int.parse(maxSeason) < int.parse(nextSeason)){
      return lastSeason;
    } else {
      if(_cache.containsKey(lastSeason))
        return nextSeason;
      else if(_cache.containsKey(lastSeason))
        return lastSeason;
      return '$lastSeason,$nextSeason';
    }
  }

  static String currentSeasonString(){
    int year = DateTime.now().year;
    String nextSeason = '$year${year+1}';
    String lastSeason = '${year-1}$year';
    return '$lastSeason,$nextSeason';
  }

  static Season getMaxSeason(){
    String temp;
    _cache.keys.forEach((season) {
      if(temp == null)
        temp = season;
      else {
        if(int.parse(temp) < int.parse(season))
          temp = season;
      }
    });
    return _cache[temp];
  }
}
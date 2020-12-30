import 'dart:convert';

import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/season/season.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_data/stats_api_resp/season.ignore.dart';
import 'test_functions.ignore.dart';

void main() {
  test('config/currentSeason && setMaxToCurrent', (){
    expect(Config().checkForCurrentSeason(), false);
    Season s1920 = Season.fromJson(json.decode(seasonJson));
    Config().setMaxSeasonToCurrent();
    checkSeason(Config().currentSeason, s1920);
    expect(Config().checkForCurrentSeason(), false);

    Season s2021 = Season.fromJson(json.decode(seasonJson2));
    Config().setMaxSeasonToCurrent();
    checkSeason(Config().currentSeason, s2021);
    expect(Config().checkForCurrentSeason(), true);
  });
}
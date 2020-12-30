import 'dart:convert';

import 'package:FlutterNhl/redux/models/season/season.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_data/stats_api_resp/season.ignore.dart';
import 'test_functions.ignore.dart';

void main() {
  group('season', () {
    final Season expectedSeason = Season(
        season: '20192020',
        regularSeasonStartDate: DateTime(2019, 10, 2),
        regularSeasonEndDate: DateTime(2020, 3, 11),
        seasonEndDate: DateTime(2020, 9, 29),
        tiesInUse: false);

    test('constructor', () {
      expect(expectedSeason.checkStartDate, DateTime(2019, 10, 1, 23, 59, 55));
      expect(expectedSeason.checkPlayoffs, DateTime(2020, 3, 10, 23, 59, 55));
      expect(expectedSeason.checkEndDate, DateTime(2020, 9, 29, 0, 0, 5));

      expect(Season.fromJson({}), null);
      checkSeason(Season.fromJson(json.decode(seasonJson)), expectedSeason);
    });

    test('isPlayoffs', (){
      expect(expectedSeason.isPlayoffs(DateTime(2020, 3, 10)), false);
      expect(expectedSeason.isPlayoffs(DateTime(2020, 9, 30)), false);
      expect(expectedSeason.isPlayoffs(DateTime(2020, 10, 11)), false);
      expect(expectedSeason.isPlayoffs(DateTime(2020, 1, 11)), false);
      expect(expectedSeason.isPlayoffs(DateTime(2020, 3, 11)), true);
      expect(expectedSeason.isPlayoffs(DateTime(2020, 9, 29)), true);
      expect(expectedSeason.isPlayoffs(DateTime(2020, 7, 29)), true);
    });

    test('fitsCurrentSeason', (){
      expect(expectedSeason.fitsCurrentSeason(DateTime(2019, 10, 1)), false);
      expect(expectedSeason.fitsCurrentSeason(DateTime(2019, 8, 30)), false);
      expect(expectedSeason.fitsCurrentSeason(DateTime(2020, 9, 30)), false);
      expect(expectedSeason.fitsCurrentSeason(DateTime(2020, 12, 11)), false);
      expect(expectedSeason.fitsCurrentSeason(DateTime(2019, 10, 2)), true);
      expect(expectedSeason.fitsCurrentSeason(DateTime(2020, 9, 29)), true);
      expect(expectedSeason.fitsCurrentSeason(DateTime(2020, 5, 29)), true);
    });

    test('getCurrentSeason', (){
      expect(Season.getCurrentSeason(DateTime(2016, 1,1)), null);
      ///Season class has cache object which contains expectedSeason.
      //this is before the expected season
      expect(Season.getCurrentSeason(DateTime(2019,1,1)), null);
      //this is after the expected season
      expect(Season.getCurrentSeason(DateTime(2020, 10, 1)), null);
      //this fits the expected season
      checkSeason(Season.getCurrentSeason(DateTime(2020,1,1)), expectedSeason);

      ///add a season to cache
      Season expectedSeason2 = Season.fromJson(json.decode(seasonJson2));

      //date range should be 2.10.2019 -> 15.7.2021
      expect(Season.getCurrentSeason(DateTime(2019,10,1)), null);
      expect(Season.getCurrentSeason(DateTime(2021, 7, 16)), null);
      checkSeason(Season.getCurrentSeason(DateTime(2021,1,13)), expectedSeason2);
      checkSeason(Season.getCurrentSeason(DateTime(2020,9,13)), expectedSeason);
      checkSeason(Season.getCurrentSeason(DateTime(2020,9,30)), expectedSeason2);
    });

    test('selectableDate', (){
      Season.fromJson(json.decode(seasonJson3));
      //date range should be <15.6.2019 2.10.2019 -> 29.9.2020 && 13.1.2021 -> 15.7.2021
      expect(Season.selectableDate(DateTime(2019,6,16)), false);
      expect(Season.selectableDate(DateTime(2019,6,15)), true);
      expect(Season.selectableDate(DateTime(2018,6,15)), true);

      expect(Season.selectableDate(DateTime(2019,10,1)), false);
      expect(Season.selectableDate(DateTime(2020,9,30)), false);
      expect(Season.selectableDate(DateTime(2019,10,2)), true);
      expect(Season.selectableDate(DateTime(2020,9,29)), true);
      expect(Season.selectableDate(DateTime(2020,5,4)), true);

      expect(Season.selectableDate(DateTime(2020,12,12)), false);
      expect(Season.selectableDate(DateTime(2021,1,12)), false);
      expect(Season.selectableDate(DateTime(2021,7,16)), false);
      expect(Season.selectableDate(DateTime(2021,1,13)), true);
      expect(Season.selectableDate(DateTime(2021,7,15)), true);
      expect(Season.selectableDate(DateTime(2021,5,4)), true);
    });

    test('getSeasonString', (){
      expect(Season.getApiCallSeasonString('2016-11-11'), '20152016,20162017');
      expect(Season.getApiCallSeasonString('2018-11-11'), '20172018');

      ///TODO: excluded because cache can't be reset here
      /*expect(Season.getApiCallSeasonString('2021-11-11'), '20202021');
      Season.fromJson(json.decode(seasonJson2));*/
      expect(Season.getApiCallSeasonString('2021-11-11'), null);
      //expect(Season.getApiCallSeasonString('2020-11-11'), '20192020');


      /*Season.fromJson(json.decode(seasonJson3));
      expect(Season.getApiCallSeasonString('2019-11-11'), '20192020');
      expect(Season.getApiCallSeasonString('2022-11-11'), null);*/
    });

    test('getMaxSeason', (){
      checkSeason(Season.getMaxSeason(), Season.fromJson(json.decode(seasonJson2)));
      Season testing = Season.fromJson({'seasonId': '20212022'});
      checkSeason(Season.getMaxSeason(), testing);
    });
  });
}

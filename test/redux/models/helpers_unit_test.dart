import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  group('helpers', (){

    test('getJsonDateTime', (){
      expect(getJsonDateTime('goalsAgainst', nullMap), DateTime(1990));
      expect(getJsonDateTime('goalsAgainst', emptyMap), DateTime(1990));
      expect(getJsonDateTime('divisionRank', valuesMap), DateTime(1990));
      expect(getJsonDateTime('gameDate', valuesMap), DateTime(2020, 3,12,0,0,0,0));

    });

    test('getJsonInt', (){
      expect(getJsonInt('goalsAgainst', nullMap), -1);
      expect(getJsonInt('goalsAgainst', emptyMap), -1);
      expect(getJsonInt('divisionRank', valuesMap), -1);
      expect(getJsonInt('goalsAgainst', valuesMap), 170);
    });

    test('getJsonInt2', (){
      expect(getJsonInt2(['records', 'divisionRecords', 3, 'wins'], nullMap), -1);

      expect(getJsonInt2(['records', 'divisionRecords', 3, 'wins'], emptyMap), -1);

      expect(getJsonInt2([], valuesMap), -1);
      expect(getJsonInt2(['records', 'wrongkey'], valuesMap), -1);
      expect(getJsonInt2(['records', 0], valuesMap), -1);
      expect(getJsonInt2(['records', 'divisionRecords', 4, 'wins'], valuesMap), -1);
      expect(getJsonInt2(['records', 'divisionRecords', 3, 'wins'], valuesMap), 6);
      expect(getJsonInt2(['records', 'divisionRecords', 3, 'type'], valuesMap), -1);
    });

    test('getJsonString', (){
      expect(getJsonString('divisionRank', nullMap), '');
      expect(getJsonString('divisionRank', emptyMap), '');
      expect(getJsonString('goalsAgainst', valuesMap), '');
      expect(getJsonString('divisionRank', valuesMap), '2');
    });

    test('getJsonString2', (){
      expect(getJsonString2(['records', 'divisionRecords', 3, 'type'], nullMap), '');
      expect(getJsonString2(['records', 'divisionRecords', 3, 'type'], emptyMap), '');

      expect(getJsonString2([], valuesMap), '');
      expect(getJsonString2(['records', 'wrongkey'], valuesMap), '');
      expect(getJsonString2(['records', 0], valuesMap), '');
      expect(getJsonString2(['records', 'divisionRecords', 4, 'type'], valuesMap), '');
      expect(getJsonString2(['records', 'divisionRecords', 3, 'wins'], valuesMap), '');
      expect(getJsonString2(['records', 'divisionRecords', 3, 'type'], valuesMap), 'Metropolitan');
    });
  });

  test('getJsonObject', (){
    expect(getJsonObject(['records'], nullMap), {});
    expect(getJsonObject(['records'], emptyMap), {});

    expect(getJsonObject([], valuesMap), {});
    expect(getJsonObject(['records', 'wrongkey'], valuesMap), {});
    expect(getJsonObject(['records', 0], valuesMap), {});
    expect(getJsonObject(['records', 'divisionRecords', 4], valuesMap), {});
    expect(getJsonObject(['records', 'divisionRecords', 3, 'wins'], valuesMap), {});
    expect(getJsonObject(['records', 'divisionRecords', 3], valuesMap), {
      "wins" : 6,
      "losses" : 3,
      "ot" : 2,
      "type" : "Metropolitan"
    });
  });

  test('getJsonList', (){
    expect(getJsonList(['records'], nullMap), []);
    expect(getJsonList(['records'], emptyMap), []);

    expect(getJsonList([], valuesMap), []);
    expect(getJsonList(['records', 'wrongkey'], valuesMap), []);
    expect(getJsonList(['records', 0], valuesMap), []);
    expect(getJsonList(['records', 'divisionRecords', 4], valuesMap), []);
    expect(getJsonList(['records', 'divisionRecords', 3, 'wins'], valuesMap), []);
    expect(getJsonList(['records', 'divisionRecords', 3], valuesMap), []);
    expect(getJsonList(['records', 'divisionRecords'], valuesMap), [ {
      "wins" : 11,
      "losses" : 7,
      "ot" : 2,
      "type" : "Central"
    }, {
      "wins" : 5,
      "losses" : 3,
      "ot" : 3,
      "type" : "Atlantic"
    }, {
      "wins" : 15,
      "losses" : 4,
      "ot" : 2,
      "type" : "Pacific"
    }, {
      "wins" : 6,
      "losses" : 3,
      "ot" : 2,
      "type" : "Metropolitan"
    }]);
  });
}

const Map<String, dynamic> nullMap = null;
const Map<String, dynamic> emptyMap = {};
const Map<String, dynamic> valuesMap = {
  "goalsAgainst" : 170,
  "gameDate": "2020-03-12T00:00",
  "goalsScored" : 213,
  "points" : 83,
  "divisionRank" : "2",
  "conferenceRank" : "3",
  "leagueRank" : "6",
  "wildCardRank" : "0",
  "records" : {
    "divisionRecords" : [ {
      "wins" : 11,
      "losses" : 7,
      "ot" : 2,
      "type" : "Central"
    }, {
      "wins" : 5,
      "losses" : 3,
      "ot" : 3,
      "type" : "Atlantic"
    }, {
      "wins" : 15,
      "losses" : 4,
      "ot" : 2,
      "type" : "Pacific"
    }, {
      "wins" : 6,
      "losses" : 3,
      "ot" : 2,
      "type" : "Metropolitan"
    } ],
    "overallRecords" : [ {
      "wins" : 23,
      "losses" : 7,
      "ot" : 2,
      "type" : "home"
    }, {
      "wins" : 14,
      "losses" : 10,
      "ot" : 7,
      "type" : "away"
    }, {
      "wins" : 2,
      "losses" : 2,
      "type" : "shootOuts"
    }, {
      "wins" : 6,
      "losses" : 4,
      "ot" : 0,
      "type" : "lastTen"
    } ],
    "conferenceRecords" : [ {
      "wins" : 11,
      "losses" : 6,
      "ot" : 5,
      "type" : "Eastern"
    }, {
      "wins" : 26,
      "losses" : 11,
      "ot" : 4,
      "type" : "Western"
    } ]
  }
};

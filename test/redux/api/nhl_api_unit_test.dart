import 'package:FlutterNhl/redux/api/nhl_api.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';

void main(){
  group('NHLApi unit test', () {

    List<Request> requestLog = [];

    MockClient _client(String value){
      return MockClient((request){
        requestLog.add(request);
        return Future(() {
          return Response(value, 200);
        });
      });
    }

    setUp((){
      requestLog.clear();
    });
    
    test('config', () async {
      final api = NHLApi(_client(configResp));
      Config config = await api.fetchConfig();
      expect(requestLog.single.url.toString(), 'https://api.nhle.com/stats/rest/en/config');
      expect(config.playerReportData.length, 1);
      expect(config.goalieReportData.length, 1);
      expect(config.teamReportData.length, 1);
    });

    test('stats', () async {
      final api = NHLApi(_client(playerResp));
      StatParameters parameters = StatParameters(ParamType(StatType.PLAYER, 'summary', '[{\"property\":\"points\",\"direction\":\"DESC\"},{\"property\":\"goals\",\"direction\":\"DESC\"},{\"property\":\"assists\",\"direction\":\"DESC\"}]'));
      await api.fetchStats(parameters);

      parameters = StatParameters(ParamType(StatType.GOALIE, 'realtime', '[{\"property\":\"points\",\"direction\":\"DESC\"}]'));
      await api.fetchStats(parameters);

      parameters = StatParameters(ParamType(StatType.TEAM, 'satperc', '[{\"property\":\"assists\",\"direction\":\"DESC\"}]'));
      await api.fetchStats(parameters);

      expect(requestLog[0].url.toString(), 'https://api.nhle.com/stats/rest/en/skater/summary?isAggregate=false&isGame=false&' +
          'sort=%5B%7B%22property%22%3A%22points%22%2C%22direction%22%3A%22DESC%22%7D%2C%7B%22property%22%3A%22goals%22%2C%22direction' +
          '%22%3A%22DESC%22%7D%2C%7B%22property%22%3A%22assists%22%2C%22direction%22%3A%22DESC%22%7D%5D&start=0&limit=20&factCayenneExp' +
          '=gamesPlayed%3E%3D1&cayenneExp=gameTypeId%3D2+and+seasonId%3E%3D20192020+and+seasonId%3C%3D20192020');

      expect(requestLog[1].url.toString(), 'https://api.nhle.com/stats/rest/en/goalie/realtime?isAggregate=false&isGame=false&' +
          'sort=%5B%7B%22property%22%3A%22points%22%2C%22direction%22%3A%22DESC%22%7D%5D&start=0&limit=20&factCayenneExp' +
          '=gamesPlayed%3E%3D1&cayenneExp=gameTypeId%3D2+and+seasonId%3E%3D20192020+and+seasonId%3C%3D20192020');

      expect(requestLog[2].url.toString(), 'https://api.nhle.com/stats/rest/en/team/satperc?isAggregate=false&isGame=false&' +
          'sort=%5B%7B%22property%22%3A%22assists%22%2C%22direction%22%3A%22DESC%22%7D%5D&start=0&limit=20&factCayenneExp' +
          '=gamesPlayed%3E%3D1&cayenneExp=gameTypeId%3D2+and+seasonId%3E%3D20192020+and+seasonId%3C%3D20192020');
    });
  });
}

const String configResp = '{\"playerReportData\": {\"summary\": {\"game\": {\"displayItems\": [\"playerId\"],\"resultFilters\": [\"gamesPlayed\"],\"sortKeys\": [\"points\",\"goals\",\"assists\"]},\"season\": {\"displayItems\": [\"playerId\"],\"resultFilters\": [\"gamesPlayed\"],\"sortKeys\": [\"points\",\"goals\",\"assists\"]}}},\"goalieReportData\": {\"summary\": {\"game\": {\"displayItems\": [\"playerId\"],\"resultFilters\": [\"gamesPlayed\"],\"sortKeys\": [\"wins\",\"savePct\"]},\"season\": {\"displayItems\": [\"playerId\"],\"resultFilters\": [\"gamesPlayed\"],\"sortKeys\": [\"wins\",\"savePct\"]}}},\"teamReportData\": {\"summary\": {\"game\": {\"displayItems\": [\"teamId\"],\"resultFilters\": [\"gamesPlayed\"],\"sortKeys\": [\"points\",\"wins\"]},\"season\": {\"displayItems\": [\"teamId\"],\"resultFilters\": [\"gamesPlayed\"],\"sortKeys\": [\"points\",\"wins\"]}}}}';
const String playerResp = '{\"data\":[{\"assists\":67,\"evGoals\":27,\"evPoints\":66,\"faceoffWinPct\":0.52088,\"gameWinningGoals\":10,\"gamesPlayed\":71,\"goals\":43,\"lastName\":\"Draisaitl\",\"otGoals\":2,\"penaltyMinutes\":18,\"playerId\":8477934,\"plusMinus\":-7,\"points\":110,\"pointsPerGame\":1.54929,\"positionCode\":\"C\",\"ppGoals\":16,\"ppPoints\":44,\"seasonId\":20192020,\"shGoals\":0,\"shPoints\":0,\"shootingPct\":0.19724,\"shootsCatches\":\"L\",\"shots\":218,\"skaterFullName\":\"Leon Draisaitl\",\"teamAbbrevs\":\"EDM\",\"timeOnIcePerGame\":1356.6760}]}';
const String teamResp = '{{\"data\": [{\"faceoffWinPct\": 0.509695,\"gamesPlayed\": 70,\"goalsAgainst\": 167,\"goalsAgainstPerGame\": 2.38571,\"goalsFor\": 227,\"goalsForPerGame\": 3.24285,\"losses\": 14,\"otLosses\": 12,\"penaltyKillNetPct\": 0.86574,\"penaltyKillPct\": 0.842593,\"pointPct\": 0.71428,\"points\": 100,\"powerPlayNetPct\": 0.221238,\"powerPlayPct\": 0.252212,\"regulationAndOtWins\": 44,\"seasonId\": 20192020,\"shotsAgainstPerGame\": 30.04285,\"shotsForPerGame\": 32.1,\"teamFullName\": \"Boston Bruins\",\"teamId\": 6,\"ties\": null,\"wins\": 44,\"winsInRegulation\": 38,\"winsInShootout\": 0}]}}';

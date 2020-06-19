import 'package:FlutterNhl/redux/api/nhl_api.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

void main(){
  group('NHLapi integration test', () {

    final api = NHLApi(Client());

    Future<void> _reportTesting(Map<String, Advanced> reportData, StatType type) async{
      var keys = reportData.keys;
      for(String key in keys){
        var data = reportData[key].season;
        List<dynamic> stats = await api.fetchStats(type, key, getParams(data.getSortKeys(), limit: 1));
        expect(stats.length > 0, true);
        final stat = stats.first;
        if(stat is Map<String, dynamic>) {
          expect(data.resultFilters.length > 0, true);
          data.resultFilters.forEach((name) {
            expect(stat.containsKey(name), true);
          });
        }
      }
    }

    test('integration test', () async {

      Config config = await api.fetchConfig();

      expect(config.playerReportData.length, 18);
      expect(config.goalieReportData.length, 8);
      expect(config.teamReportData.length, 21);

      await _reportTesting(config.playerReportData, StatType.PLAYER);
      await _reportTesting(config.goalieReportData, StatType.GOALIE);
      await _reportTesting(config.teamReportData, StatType.TEAM);


    }, timeout: Timeout(Duration(minutes: 2)));
  });
}

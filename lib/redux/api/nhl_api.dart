import 'package:FlutterNhl/redux/api/fetch.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:http/http.dart';


enum StatType {
  GOALIE,
  PLAYER,
  TEAM
}

Map<String, String> getParams(sort,
    {isAggregated = false,
    isGame = false,
    start = 0,
    limit = 20,
    gamesPlayed = 1,
    gameType = 2,
    startSeason = '20192020',
    endSeason = '20192020'}) {
  return {
    'isAggregate': isAggregated.toString(),
    'isGame': isGame.toString(),
    'sort': sort,
    'start': start.toString(),
    'limit': limit.toString(),
    'factCayenneExp': 'gamesPlayed>=${gamesPlayed.toString()}',
    'cayenneExp':
        'gameTypeId=${gameType.toString()} and seasonId>=${startSeason.toString()} and seasonId<=${endSeason.toString()}'
  };
}

class NHLApi {
  final Client client;
  NHLApi(this.client);

  static final String baseUrl = 'api.nhle.com';
  static final String printMsg = 'NHLApi';

  Future<Config> fetchConfig() async {
    final searchUri = Uri.https(baseUrl, 'stats/rest/en/config');
    print('$printMsg fetchConfig: $searchUri');
    return fetch(searchUri, client).then((value) {
      if (value is Map<String, dynamic>)
        return Config.fromJson(value);
      else
        throw Exception(
            'Error while formatting data in $printMsg::fetchConfig');
    }).catchError((error) => onFetchError(error));
  }

  Future<List<dynamic>> fetchStats(StatType type, String stat, Map<String, String> params) async {
    String path = 'stats/rest/en/';
    switch(type){
      case StatType.GOALIE:
        path += 'goalie/$stat';
        break;
      case StatType.PLAYER:
        path += 'skater/$stat';
        break;
      case StatType.TEAM:
        path += 'team/$stat';
        break;
    }
    switch(stat){
      case 'shootout':
      case 'penaltyShots':
        if(params.containsKey('factCayenneExp')){
          params.remove('factCayenneExp');
        }
        break;
    }
    final searchUri = Uri.https(baseUrl, path, params);
    print('$printMsg fetchStats: $searchUri');

    return fetch(searchUri, client).then((value) {
      if (value is Map<String, dynamic>) {
        if (value.containsKey('data')) {
          final data = value['data'];
          if (data is List) {
            return data;
          }
        }
      }
      throw Exception(
          'Error while formatting data in $printMsg::fetchPlayer');

    }).catchError((error) => onFetchError(error));
  }

  void onFetchError(Exception error) {
    print('$printMsg: ${error.toString()}');
    throw Exception('Error while fetching data in $printMsg');
  }
}

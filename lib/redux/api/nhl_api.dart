import 'package:FlutterNhl/redux/api/fetch.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:http/http.dart';

class NHLApi {
  final Client client;
  NHLApi(this.client);

  static final String baseUrl = 'api.nhle.com';
  static final String printMsg = 'NHLApi';

  Future<Null> fetchConfig() async {
    final searchUri = Uri.https(baseUrl, 'stats/rest/en/config');
    print('$printMsg fetchConfig: $searchUri');
    await fetch(searchUri, client).then((value) {
      if (value is Map<String, dynamic>)
        return Config().fromJson(value);
      else
        throw Exception(
            'Error while formatting data in $printMsg::fetchConfig');
    }).catchError((error) => onFetchError(error));
  }

  Future<List<dynamic>> fetchStats(StatParameters params) async {
    final searchUri = Uri.https(baseUrl, params.getPath(), params.getParams());
    print('$printMsg fetchStats: $searchUri');

    return await fetch(searchUri, client).then((value) {
      if (value is Map<String, dynamic>) {
        if (value.containsKey('data')) {
          final data = value['data'];
          if (data is List) {
            return data;
          }
        }
      }
      throw Exception('Error while formatting data in $printMsg::fetchPlayer');
    }).catchError((error) => onFetchError(error));
  }

  Future<PlayerPage> fetchPlayerBio(int playerId, StatType type) async {
    final searchUri =
        Uri.https(baseUrl, 'stats/rest/en/${statTypeToParam(type)}/bios', {
      'isAggregate': 'false',
      'isGame': 'false',
      'factCayenneExp': 'playerId=$playerId'
    });
    print('$printMsg fetchPlayerBio: $searchUri');
    return await fetch(searchUri, client).then((value) {
      if (value is Map<String, dynamic>) {
        if (type == StatType.PLAYER)
          return PlayerPage.fromJsonPlayer(value);
        else if (type == StatType.GOALIE)
          return PlayerPage.fromJsonGoalie(value);
        else
          throw Exception('$printMsg::fetchPlayer: Unknown player type $type');
      }
      throw Exception('Error while formatting data in $printMsg::fetchPlayer');
    }).catchError((error) => onFetchError(error));
  }

  Future<List<dynamic>> fetchPlayerStat(
      String stat, int playerId, StatType type) async {
    final searchUri =
        Uri.https(baseUrl, 'stats/rest/en/${statTypeToParam(type)}/$stat', {
      'isAggregate': 'false',
      'isGame': 'false',
      'sort': '[{\"property\":\"seasonId\", \"direction\":\"DESC\"}]',
      'factCayenneExp': 'playerId=$playerId'
    });

    print('$printMsg fetchPlayerStat: $searchUri');
    return await fetch(searchUri, client).then((value) {
      if (value is Map<String, dynamic>) {
        return getJsonList(['data'], value);
      }
      throw Exception('Error while formatting data in $printMsg::fetchPlayer');
    }).catchError((error) => onFetchError(error));
  }

  Future<List<dynamic>> fetchTeamStat(String stat, int teamId) async {
    final searchUri = Uri.https(baseUrl, 'stats/rest/en/team/$stat', {
      'isAggregate': 'false',
      'isGame': 'false',
      'sort': '[{\"property\":\"seasonId\", \"direction\":\"DESC\"}]',
      'factCayenneExp': 'teamId=$teamId'
    });

    print('$printMsg fetchTeamStat: $searchUri');
    return await fetch(searchUri, client).then((value) {
      if (value is Map<String, dynamic>) {
        return getJsonList(['data'], value);
      }
      throw Exception('Error while formatting data in $printMsg::fetchPlayer');
    }).catchError((error) => onFetchError(error));
  }

  void onFetchError(Exception error) {
    print('$printMsg: ${error.toString()}');
    throw Exception('Error while fetching data in $printMsg');
  }
}

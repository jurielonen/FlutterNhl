import 'package:FlutterNhl/redux/api/fetch.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
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
      if (value is Map<String, dynamic>) {
        try {
          return Config().fromJson(value);
        } catch (error) {
          throw NetworkParseException(
              'Failed to parse data.\nCall: fetchConfig.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
        }
      }
      throw Exception('Error while formatting data in $printMsg::fetchConfig');
    });//.catchError((error) => onFetchError(error));
  }

  Future<StatResponse> fetchStats(StatParameters params) async {
    final searchUri = Uri.https(baseUrl, params.getPath(), params.getParams());
    print('$printMsg fetchStats: $searchUri');

    return await fetch(searchUri, client).then((value) {
      try {
        return StatResponse.fromJson(value);
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchStats.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    });//.catchError((error) => onFetchError(error));
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
        try {
          if (type == StatType.PLAYER)
            return PlayerPage.fromJsonPlayer(value);
          else if (type == StatType.GOALIE)
            return PlayerPage.fromJsonGoalie(value);
          else
            throw Exception(
                '$printMsg::fetchPlayer: Unknown player type $type');
        } catch (error) {
          throw NetworkParseException(
              'Failed to parse data.\nCall: fetchPlayerBio.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
        }
      }
      throw Exception(
          'Error while formatting data in $printMsg::fetchPlayerBio');
    });//.catchError((error) => onFetchError(error));
  }

  Future<List<dynamic>> fetchPlayerStat(
      PageStatParams stat, int playerId, StatType type) async {
    final searchUri =
        Uri.https(baseUrl, 'stats/rest/en/${statTypeToParam(type)}/${stat.stat}', {
      'isAggregate': 'false',
      'isGame': 'false',
      'sort': '[{\"property\":\"seasonId\", \"direction\":\"DESC\"}]',
      'factCayenneExp': 'playerId=$playerId',
      'cayenneExp': 'gameTypeId=${stat.gameType ? '2' : '3'}'
    });

    print('$printMsg fetchPlayerStat: $searchUri');
    return await fetch(searchUri, client).then((value) {
      if (value is Map<String, dynamic>) {
        try {
          return getJsonList(['data'], value);
        } catch (error) {
          throw NetworkParseException(
              'Failed to parse data.\nCall: fetchPlayerStat.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
        }
      }
      throw Exception('Error while formatting data in $printMsg::fetchPlayer');
    });//.catchError((error) => onFetchError(error));
  }

  Future<List<dynamic>> fetchTeamStat(PageStatParams stat, int teamId) async {
    final searchUri = Uri.https(baseUrl, 'stats/rest/en/team/${stat.stat}', {
      'isAggregate': 'false',
      'isGame': 'false',
      'sort': '[{\"property\":\"seasonId\", \"direction\":\"DESC\"}]',
      'factCayenneExp': 'teamId=$teamId',
      'cayenneExp': 'gameTypeId=${stat.gameType ? '2' : '3'}'
    });

    print('$printMsg fetchTeamStat: $searchUri');
    return await fetch(searchUri, client).then((value) {
      if (value is Map<String, dynamic>) {
        try {
          return getJsonList(['data'], value);
        } catch (error) {
          throw NetworkParseException(
              'Failed to parse data.\nCall: fetchTeamStat.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
        }
      }
      throw Exception('Error while formatting data in $printMsg::fetchPlayer');
    });//.catchError((error) => onFetchError(error));
  }

  void onFetchError(Exception error) {
    print('$printMsg: ${error.toString()}');
    throw Exception('Error while fetching data in $printMsg');
  }
}

class StatResponse {
  final int total;
  final List<dynamic> stats;

  StatResponse(this.total, this.stats);

  factory StatResponse.fromJson(Map<String, dynamic> json) {
    return StatResponse(getJsonInt('total', json), getJsonList(['data'], json));
  }
}

///TODO: add fetch https://api.nhle.com/stats/rest/en/glossary?sort=fullName

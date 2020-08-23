import 'package:FlutterNhl/redux/api/fetch.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/search/search.dart';
import 'package:http/http.dart';

class SuggestApi {
  final Client client;
  SuggestApi(this.client);

  static final String baseUrl = 'suggest.svc.nhl.com';
  static final String basePath = '/svc/suggest/v1/minplayers/';
  static final String basePathActive = '/svc/suggest/v1/minactiveplayers/';
  static final String printMsg = 'SuggestApi';

  Future<Search> fetchPlayers(String query, {active = false}) async {
    final searchUri = Uri.https(baseUrl, '${active ? basePathActive : basePath}/$query/${Search.maxValues}');
    print('$printMsg: $searchUri');
    return await fetch(searchUri, client).then((value) {
      try {
        return Search.fromJson(value);
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchConfig.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    });//.catchError((error) => throw Exception(error.toString()));
  }

}
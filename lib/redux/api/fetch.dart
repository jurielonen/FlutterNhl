import 'dart:async';
import 'dart:convert';

import 'package:FlutterNhl/redux/enums.dart';
import 'package:http/http.dart';

Future<Map<String, dynamic>> fetch(Uri url, Client client) async {
  final response =
      await client.get(url).timeout(Duration(seconds: 20), onTimeout: () {
    throw NetworkTimeoutException('Network call took too much time');
  });
  if (response.statusCode == 200 && response.body != null)
    return json.decode(utf8.decode(response.bodyBytes));
  else
    throw NetworkException(
        '[statuscode:${response.statusCode}, error:${response.reasonPhrase}]');
}

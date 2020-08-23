import 'dart:async';
import 'dart:convert';

import 'package:FlutterNhl/redux/enums.dart';
import 'package:http/http.dart';

Future<Map<String, dynamic>> fetch(Uri url, Client client) async {
  final response = await client.get(url).timeout(Duration(seconds: 5), onTimeout: (){
    throw NetworkTimeoutException('Network call took too much time');
  });
  if(response.statusCode == 200 && response.body != null)
    return json.decode(response.body);
  else
    throw NetworkException('[statuscode:${response.statusCode}, error:${response.reasonPhrase}]');
}
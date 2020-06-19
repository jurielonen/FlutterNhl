import 'dart:convert';

import 'package:http/http.dart';

Future<Map<String, dynamic>> fetch(Uri url, Client client) async {
  final response = await client.get(url);
  if(response.statusCode == 200 && response.body != null)
    return json.decode(response.body);
  else
    throw Exception('[statuscode:${response.statusCode}, error:${response.reasonPhrase}]');
}
import 'package:FlutterNhl/redux/api/fetch.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/award/award.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:http/http.dart';

class RecordsApi {
  final Client client;
  RecordsApi(this.client);

  static const String baseUrl = 'records.nhl.com';
  static const String basePath = '/site/api/';
  static final String printMsg = 'RecordApi';

  Future<Map<int, AwardTableSource>> fetchAwards() async {
    final searchUri = Uri.https(baseUrl, '${basePath}trophy')
        .resolveUri(Uri(queryParameters: {
      'include': [
        'name',
        'briefDescription',
        'id',
        'description',
        'imageUrl',
        'trophyCategory'
      ]
    }));

    print('$printMsg fetchAwards: $searchUri');

    return await fetch(searchUri, client).then((value) {
      try {
        return Map.fromIterable(
            List<AwardTableSource>.from(getJsonList(['data'], value).map(
                (award) => AwardTableSource(award: Award.fromJson(award)))),
            key: (award) => award.award.id,
            value: (award) => award);
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchAwards.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    });
  }

  Future<List<AwardFinalists>> fetchRecipients(Award award) async {
    final searchUri = Uri.https(baseUrl, '${basePath}trophy/recipient')
        .resolveUri(Uri(queryParameters: {
      'cayenneExp':
          'trophyCategoryId=${award.trophyCategoryId} and trophyId=${award.id}',
      'include': award.recipientQueryParams(),
      'sort': 'seasonId',
      'dir': 'DESC'
    }));
    print('$printMsg fetchAwards: $searchUri');

    return await fetch(searchUri, client).then((value) {
      try {
        return List<AwardFinalists>.from(getJsonList(['data'], value).map(
            (finalist) =>
                AwardFinalists.fromJson(finalist, award.trophyCategory)));
      } catch (error) {
        throw NetworkParseException(
            'Failed to parse data.\nCall: fetchRecipients.\nUrl: ${searchUri.toString()}\nError: ${error.toString()}');
      }
    });
  }
}

/*
https://records.nhl.com/site/api/trophy?include=id&include=name&include=briefDescription&include=description&include=imageUrl&include=trophyCategory&sort=name

https://records.nhl.com/site/api/trophy/recipient?
cayenneExp=trophyCategoryId=2%20and%20trophyId=16
&include=seasonId&
include=player.fullName&
include=player.id&
include=multipleWinners&
include=winnerGoals&
include=team.id&
include=team.fullName&
include=team.triCode&
include=team.active&
include=runnerUpPlayer.fullName&
include=runnerUpPlayer.id&
include=multipleRunnerUp&
include=runnerUpTeam.id&
include=runnerUpTeam.fullName&
include=runnerUpTeam.triCode&
include=runnerUpTeam.active&
include=finalistPlayer.fullName&
include=finalistPlayer.id&
include=multipleFinalists&
include=finalistTeam.id&
include=finalistTeam.fullName&
include=finalistTeam.triCode&
include=finalistTeam.active&
sort=seasonId&
dir=DESC
 */

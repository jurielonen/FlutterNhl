import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/player/player_enums.dart';
import 'package:flutter/cupertino.dart';

class Search {
  static const int maxValues = 30;
  final List<Player> searchValues;
  String filter = '';

  List<PlayerSearch> get getPlayersFiltered {
    if(!needApi && filter != ''){
      return searchValues.where((element) => element.fullname.toLowerCase().contains(filter.toLowerCase())).toList();
    }
    return searchValues;
  }

  Search({@required this.searchValues});

  factory Search.fromJson(Map<String, dynamic> json) {
    List<PlayerSearch> players = List<PlayerSearch>.from(getJsonList(['suggestions'], json)
        .map((search) => PlayerSearch.fromString(search))
        .toList());
    players.sort((a, b) {
      if(a.active && b.active){
        if(a.rookie && b.rookie)
          return 0;
        if(a.rookie)
          return 1;
        if(b.rookie)
          return -1;
        return 0;
      } else if(a.active)
        return -1;
      return 1;
    });
    return Search(
        searchValues: players,
    );
  }

  bool get needApi {
    if(searchValues.length >= maxValues){
      filter = '';
      return true;
    }
    return false;
  }
}

class PlayerSearch extends Player {
  final bool active;
  final bool rookie;
  final String country;
  final PersonPosition position;
  final String teamAbb;
  final String jerseyNumber;

  PlayerSearch(
      {@required Player player,
      @required this.active,
      @required this.rookie,
      @required this.country,
      @required this.position,
      @required this.teamAbb,
      @required this.jerseyNumber}): super.clone(player);

  factory PlayerSearch.fromString(String value) {
    List<String> values = value.split('|');
    return PlayerSearch(
        player: Player(
            id: int.parse(values[0]), fullname: '${values[2]} ${values[1]}'),
        active: int.parse(values[3]) == 1,
        rookie: int.parse(values[4]) == 1,
        country: values[9],
        position: PersonPosition(
            code: positionFromString(values[12]), name: values[12]),
        teamAbb: values[11],
        jerseyNumber: values[13]);
  }
  String get statusText {
    if(active)
      return rookie ? 'Rookie' : 'Active';
    return 'Inactive';
  }
}

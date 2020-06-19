import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:FlutterNhl/redux/models/player/player_enums.dart';

class Player {
  final int id;
  final String fullname;

  Player({
    @required this.id,
    @required this.fullname,
  });

  static final Map<int, Player> _cache = <int, Player>{};

  Player.clone(Player clone) : this(id: clone.id, fullname: clone.fullname);

  factory Player.fromJson(Map<String,dynamic> json){
    int tId = getJsonInt('id', json);
    if(_cache.containsKey(tId)){
      return _cache[tId];
    } else {
      if(tId == -1){
        final temp = Player.empty();
        _cache[tId] = temp;
        return temp;
      } else {
        return Player(
            id: getJsonInt('id', json),
            fullname: getJsonString('fullName', json)
        );
      }
    }
  }

  factory Player.empty(){
    return Player(
      id: -1,
      fullname: '',
    );
  }
}

class PlayerPlay extends Player {
  final String playerType;

  PlayerPlay({@required Player player, this.playerType}): super.clone(player);
  
  factory PlayerPlay.fromJson(Map<String, dynamic> json){
    return PlayerPlay(
      player: Player.fromJson(getJsonObject(['player'], json)),
      playerType: getJsonString('playerType', json)
    );
  }
}

class PlayerGame extends Player {
  String jerseyNumber;
  PersonPosition position;
  Map<String, dynamic> stats;

  PlayerGame({
    @required Player player,
    this.jerseyNumber,
    this.position,
    this.stats,
  }): super.clone(player);

  factory PlayerGame.fromJsonFinal(Map<String, dynamic> json) {
    PersonPosition posTemp = PersonPosition.fromJson(getJsonObject(['position'], json));
    Map<String, dynamic> statsTemp = {};
    if(posTemp.isGoalie()){
      statsTemp = getJsonObject(['stats', 'goalieStats'], json);
    } else if(posTemp.isPlayer()){
      statsTemp = getJsonObject(['stats', 'skaterStats'], json);
    }

    return PlayerGame(
      player: Player.fromJson(getJsonObject(['person'], json)),
      jerseyNumber: getJsonString('jerseyNumber', json),
      position: posTemp,
      stats: statsTemp,
    );
  }

  factory PlayerGame.fromJsonPreview(Map<String, dynamic> json) {
    return PlayerGame(
      player: Player.fromJson(getJsonObject(['person'], json)),
      jerseyNumber: getJsonString('jerseyNumber', json),
      position: PersonPosition.fromJson(getJsonObject(['position'], json)),
      stats: getJsonObject(['person', 'stats', 0, 'splits', 0, 'stat'], json),
    );
  }
}

class PersonPosition {
  Position code;
  String name;

  PersonPosition({
    this.code,
    this.name,
  });

  factory PersonPosition.fromJson(Map<String, dynamic> json) => PersonPosition(
    code: positionFromString(getJsonString('code', json)),
    name: getJsonString('name', json),
  );

  bool isGoalie(){
    if(code == Position.G)
      return true;
    return false;
  }

  bool isPlayer(){
    if(code == Position.C || code == Position.D || code == Position.L || code == Position.R)
      return true;
    return false;
  }
}

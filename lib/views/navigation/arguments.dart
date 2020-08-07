import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';

abstract class Argument {}

class GameArgument extends Argument {
  final Game game;
  GameArgument(this.game);
}

class PlayerArguments extends Argument {
  final Player player;
  final StatType type;

  int get playerId => player.id;
  String get playerFullName => player.fullname;

  PlayerArguments(this.player, this.type);
}

class TeamArguments extends Argument {
  final Team team;
  final StatType type = StatType.TEAM;

  int get teamId => team.id;
  String get teamName => team.name;

  TeamArguments(this.team);
}

class FilterArguments extends Argument {
  final StatParameters currentParams;
  FilterArguments(this.currentParams);
}

class VideoArguments extends Argument {
  final String url;
  VideoArguments(this.url);
}
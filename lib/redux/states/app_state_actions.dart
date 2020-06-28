import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';

abstract class ScheduleAction {}

abstract class StatsAction {}

abstract class PlayerAction {}

class InitAction {}

class ConfigReceived {
  final Config config;
  ConfigReceived(this.config);
}

class StatsEntered extends StatsAction {}

class PlayerEntered extends PlayerAction {
  final int playerId;
  final StatType statType;
  PlayerEntered(this.playerId, this.statType);
}

class TeamEntered {
  final int teamId;
  TeamEntered(this.teamId);
}

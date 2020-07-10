import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';

abstract class ScheduleAction {}

abstract class StatsAction {}

abstract class PlayerAction {}

abstract class TeamAction {}

class InitAction {}

class ConfigReceived {}

class SeasonConfigReceived {}

class ScheduleEntered extends ScheduleAction {}

class StatsEntered extends StatsAction {}

class PlayerEntered extends PlayerAction {
  final int playerId;
  final StatType statType;
  PlayerEntered(this.playerId, this.statType);
}

class TeamEntered extends TeamAction {
  final int teamId;
  TeamEntered(this.teamId);
}

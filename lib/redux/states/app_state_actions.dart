import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';

abstract class ScheduleAction {}

abstract class StatsAction {}

abstract class PlayerAction {}

abstract class TeamAction {}

abstract class DraftAction {}

abstract class AwardAction {}

abstract class GameAction {}

class InitAction {}

class DownloadAction {}

class ConfigReceived {}

class SeasonConfigReceived {}

class PageChangedAction {
  final DrawerPages page;
  PageChangedAction(this.page);
}

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

class DraftEntered extends DraftAction {}

class AwardEntered extends AwardAction {}

class GameEntered extends GameAction {
  final Game game;
  GameEntered(this.game);
}

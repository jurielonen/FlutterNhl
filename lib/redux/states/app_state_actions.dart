import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/settings/settings_middleware.dart';

/*
AppState actions
 */

class InitAction {}

class DownloadAction {}

class ConfigReceived {}

class SeasonConfigReceived {}

///Fires in [SettingsMiddleware]
class InitActionFinished {}

class ErrorAction {
  final Exception error;
  ErrorAction(this.error);
}

class PageChangedAction {
  final DrawerPages page;
  PageChangedAction(this.page);
}

class ShowSnackBar {
  final SnackBarNotification snackBarNotification;
  ShowSnackBar(this.snackBarNotification);
}

class CloseSnackBar {}


///Other states abstract classes
abstract class FirebaseAction {}

abstract class ScheduleAction {}

abstract class StatsAction {}

abstract class PlayerAction {}

abstract class TeamAction {}

abstract class DraftAction {}

abstract class AwardAction {}

abstract class GameAction {}

abstract class StandingsAction {}

abstract class SearchAction {}

abstract class PlayoffsAction {}

abstract class SeriesAction {}

abstract class StarredAction {}

abstract class SettingsAction {}

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

class PlayoffsEntered extends PlayoffsAction {}

class StarredEntered extends StarredAction {}

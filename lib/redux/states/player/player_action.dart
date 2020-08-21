import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';

class PlayerRequestingAction extends PlayerAction {}

class PlayerReceivedBioAction extends PlayerAction {
  final PlayerPage player;
  PlayerReceivedBioAction(this.player);
}

class PlayerStatsChangedAction extends PlayerAction {
  final String stat;
  PlayerStatsChangedAction(this.stat);
}

class PlayerStatsAlreadyDownloaded extends PlayerAction {}

class PlayerReceivedStatAction extends PlayerAction {
  final PlayerSeasonTableSource stats;
  PlayerReceivedStatAction(this.stats);
}

class PlayerGetGameLogsAction extends PlayerAction {
  final GameLogParams params;
  PlayerGetGameLogsAction(this.params);
}

class PlayerGameLogsAlreadyDownloaded extends PlayerAction {}

class PlayerReceivedGameLogsAction extends PlayerAction {
  final List<GameLogsPlayer> logs;
  PlayerReceivedGameLogsAction(this.logs);
}

class PlayerErrorAction extends PlayerAction {
  final String error;
  PlayerErrorAction(this.error);
}

import 'package:FlutterNhl/redux/api/nhl_api.dart';
import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/player/player_action.dart';
import 'package:FlutterNhl/redux/states/player/player_selectors.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/redux/states/stats/stats_middleware.dart';
import 'package:redux/redux.dart';

class PlayerMiddleware extends MiddlewareClass<AppState> {
  final StatsApi statsApi;
  final NHLApi nhlApi;

  PlayerMiddleware(this.statsApi, this.nhlApi);

  ///TODO: modify like teammiddleware
  @override
  Future<Null> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is PlayerEntered) {
      if (store.state.config.isEmpty()) {
        await getConfig(store, next, nhlApi);
      }

      ///TODO: add check to see if player already downloaded
      await _getBio(store, next);
    } else if (action is PlayerStatsChangedAction || action is PlayerStatsTabChangedAction) {
      if (!selectedPlayerSelector(store.state).containsStat(store.state.playerState.selectedStat/*action.stat*/)) {
        await _getStat(store, next);
      } else {
        next(PlayerStatsAlreadyDownloaded());
      }
    } else if (action is PlayerGetGameLogsAction || action is PlayerGameLogTabChangedAction) {
      if (!selectedPlayerSelector(store.state).containsGameLogs(store.state.playerState.gameLogParams/*action.params*/)) {
        await _getGameLogs(store, next);
      } else {
        next(PlayerGameLogsAlreadyDownloaded());
      }
    }
  }

  Future<Null> _getBio(Store<AppState> store, NextDispatcher next) async {
    if (store.state.playerState.loadingStatus != LoadingStatus.LOADING) {
      next(PlayerRequestingAction());
      try {
        final PlayerPage player = await nhlApi.fetchPlayerBio(
            store.state.playerState.playerId,
            store.state.playerState.playerType);
        next(PlayerReceivedBioAction(player));
      } catch (error) {
        next(PlayerErrorAction(error));
      }
    }
  }

  Future<Null> _getStat(Store<AppState> store, NextDispatcher next) async {
    if (store.state.playerState.loadingStatus != LoadingStatus.LOADING) {
      next(PlayerRequestingAction());
      try {
        final List<dynamic> stats = await nhlApi.fetchPlayerStat(
            store.state.playerState.selectedStat,
            store.state.playerState.playerId,
            store.state.playerState.playerType);
        next(PlayerReceivedStatAction(PlayerSeasonTableSource.fromData(
            stats, playerFilterTypeSelector(store.state))));
      } catch (error) {
        next(PlayerErrorAction(error));
      }
    }
  }

  Future<Null> _getGameLogs(Store<AppState> store, NextDispatcher next) async {
    if (store.state.playerState.loadingStatus != LoadingStatus.LOADING) {
      next(PlayerRequestingAction());
      try {
        List<GameLogsPlayer> logs = await statsApi.fetchPlayerGameLogs(
            store.state.playerState.playerId,
            store.state.playerState.gameLogParams.year,
            store.state.playerState.gameLogParams.gameType
            );
        next(PlayerReceivedGameLogsAction(logs));
      } catch (error) {
        next(PlayerErrorAction(error));
      }
    }
  }
}

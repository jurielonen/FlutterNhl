import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/player/player_action.dart';
import 'package:FlutterNhl/redux/states/player/player_selectors.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:kt_dart/collection.dart';

PlayerState playerReducer(PlayerState state, dynamic action) {
  print('PLAYERSTATE: ${action.runtimeType}');
  if (action is PlayerEntered) {
    return state.copyWith(
        playerId: action.playerId, playerType: action.statType);
  } else if (action is PlayerRequestingAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if (action is PlayerReceivedBioAction) {
    final players = state.players.toMutableMap();
    players[action.player.id] = action.player;
    return state.copyWith(
        loadingStatus: LoadingStatus.SUCCESS, players: players);
  } else if (action is PlayerStatsChangedAction) {
    return state.copyWith(
        selectedStat: action.stat, loadingStatus: LoadingStatus.IDLE);
  } else if (action is PlayerReceivedStatAction) {
    final players = state.players.toMutableMap();
    PlayerPage player = players[state.playerId];
    player.addStat(state.selectedStat, action.stats);
    players[player.id] = player;
    return state.copyWith(
        loadingStatus: LoadingStatus.SUCCESS, players: players);
  } else if (action is PlayerReceivedGameLogsAction) {
    final players = state.players.toMutableMap();
    PlayerPage player = players[state.playerId];
    player.gameLog = action.logs;
    players[player.id] = player;
    return state.copyWith(
        loadingStatus: LoadingStatus.SUCCESS, players: players);
  } else if (action is PlayerErrorAction) {
    return state.copyWith(
        errorMsg: action.error, loadingStatus: LoadingStatus.ERROR);
  } else if (action is PlayerGetGameLogsAction) {
    return state.copyWith(loadingStatus: LoadingStatus.IDLE);
  } else if (action is PlayerStatsAlreadyDownloaded) {
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS);
  } else if (action is PlayerGameLogsAlreadyDownloaded) {
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS);
  }
  return state;
}

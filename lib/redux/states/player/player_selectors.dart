import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_selectors.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/redux/states/starred/starred_selectors.dart';
import 'package:kt_dart/kt.dart';
import 'package:memoize/function_defs.dart';
import 'package:reselect/reselect.dart';

final selectedPlayerIdSelector = (AppState state) => state.playerState.playerId;
final playerMapSelector = (AppState state) => state.playerState.players;
final selectedStatSelector =
    (AppState state) => state.playerState.selectedStat.stat;
final statTypes =
    (AppState state) => state.config.getStatTypes(state.playerState.playerType);
final selectedStats = (AppState state) => state.playerState.selectedStat;
final selectedGameLogs = (AppState state) => state.playerState.gameLogParams;

final selectedPlayerSelector =
    createSelector2(selectedPlayerIdSelector, playerMapSelector, _getPlayer);

PlayerPage _getPlayer(int playerId, KtMap<int, PlayerPage> players) {
  if (players.containsKey(playerId)) {
    return players[playerId];
  } else {
    return null;
  }
}

final playerFilterTypeSelector = createSelector3(configSelector,
    selectedPlayerSelector, selectedStatSelector, _getFilterList);

List<String> _getFilterList(
    Config config, PlayerPage player, String selectedStat) {
  return config.getFilterItems(player.getStatType(), selectedStat);
}

final playerStatMapSelector =
    createSelector1(selectedPlayerSelector, _playerStatMapSelector);

Map<PageStatParams, PlayerSeasonTableSource> _playerStatMapSelector(
    PlayerPage player) {
  print('IN playerStatMapSelector');
  if (player != null) return player.stats;
  return null;
}

///TOOD: Add memoize function
final playerSelectedStatSelector =
    createSelector2(playerStatMapSelector, selectedStats, _getPlayerStats, memoize: );

PlayerSeasonTableSource _getPlayerStats(
    Map<PageStatParams, PlayerSeasonTableSource> map, PageStatParams params) {
  print('getting player stats: $params, $map');
  if (map != null && map.containsKey(params)) {
    return map[params];
  }
  return null;
}

///TOOD: Add memoize function
final playerGameLogSelector = createSelector2(
  selectedPlayerSelector,
  selectedGameLogs,
  _getPlayerGameLogs,
  memoize:
);

List<GameLogsPlayer> _getPlayerGameLogs(
    PlayerPage player, PageGameLogParams params) {
  print('getting player game logs: $params, $player');
  if (player != null) {
    return player.getGameLog(params);
  }
  return null;
}

final isPlayerStarredSelector = createSelector2(
    selectedPlayerIdSelector, starredPlayersList, _isPlayerStarredSelector,
    memoize: _memoizeIsPlayerStarred);

bool _isPlayerStarredSelector(int id, List<Player> players) {
  if (players != null || players.isNotEmpty)
    return players.any((player) => player.id == id);
  return false;
}

bool Function(int, List<Player>) _memoizeIsPlayerStarred(
    Func2<int, List<Player>, bool> combiner) {
  int prevId;
  int prevPlayers;
  bool prevIsStarred;
  return ((int id, List<Player> players) {
    if (identical(id, prevId) &&
        identical(players.length, prevPlayers)) {
      return prevIsStarred;
    } else {
      prevId = id;
      prevPlayers = players.length;
      prevIsStarred = combiner(prevId, players);
      return prevIsStarred;
    }
  });
}

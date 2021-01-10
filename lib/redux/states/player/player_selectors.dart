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

///selector for getting current player's [Map<PageStatParams, PlayerSeasonTableSource>]
final playerStatMapSelector =
    createSelector1(selectedPlayerSelector, _playerStatMapSelector, memoize: _memoizeStatMap);

///selector for getting current players [Map<PageStatParams, PlayerSeasonTableSource>]
Map<PageStatParams, PlayerSeasonTableSource> _playerStatMapSelector(
    PlayerPage player) {
  if (player != null) return player.stats;
  return null;
}

///memoize function for getting current players [Map<PageGameLogParams, List<GameLogsPlayer>>]
Map<PageStatParams, PlayerSeasonTableSource> Function(PlayerPage) _memoizeStatMap(Func1<PlayerPage, Map<PageStatParams, PlayerSeasonTableSource>> combiner){
  int prevPageId;
  int prevMapLength;
  Map<PageStatParams, PlayerSeasonTableSource> prevMap;

  return ((PlayerPage page) {
    print('prevPageId: $prevPageId, length: $prevMapLength');
    if(page == null){
      return null;
    } else if(identical(page.id, prevPageId) && identical(page.stats.length, prevMapLength)){
      print('prevPageId: ${page.id}, length: ${page.stats.length}');
      return prevMap;
    } else {
      prevPageId = page.id;
      prevMapLength = page.stats.length;
      prevMap = combiner(page);
      return prevMap;
    }
  });
}

///selector for getting currently selected player's currently select stats
final playerSelectedStatSelector = createSelector2(
    playerStatMapSelector, selectedStats, _getPlayerStats,
    memoize: _memoizePlayerStats);

///selector for getting [PlayerSeasonTableSource]
PlayerSeasonTableSource _getPlayerStats(
    Map<PageStatParams, PlayerSeasonTableSource> map, PageStatParams params) {
  print('getting player stats: $params, $map');
  if (map != null && map.containsKey(params)) {
    return map[params];
  }
  return null;
}

///memoize function for getting [PlayerSeasonTableSource]
PlayerSeasonTableSource Function(
        Map<PageStatParams, PlayerSeasonTableSource>, PageStatParams)
    _memoizePlayerStats(
        Func2<Map<PageStatParams, PlayerSeasonTableSource>, PageStatParams,
                PlayerSeasonTableSource>
            combiner) {

  Map<PageStatParams, PlayerSeasonTableSource> prevMap;
  PageStatParams prevParams;
  PlayerSeasonTableSource prevSource;

  return ((Map<PageStatParams, PlayerSeasonTableSource> map, PageStatParams params){
    if(identical(params, prevParams) && identical(map, prevMap) && identical(map.length, prevMap.length)){
      return prevSource;
    } else {
      prevMap = map;
      prevParams = PageStatParams.clone(params);
      prevSource = combiner(prevMap, prevParams);
      return prevSource;
    }
  });
}


final playerGameLogMapSelector =
createSelector1(selectedPlayerSelector, _playerGameLogMapSelector, memoize: _memoizeGameLogMap);

///selector for getting current players [Map<PageGameLogParams, List<GameLogsPlayer>>]
Map<PageGameLogParams, List<GameLogsPlayer>> _playerGameLogMapSelector(
    PlayerPage player) {
  if (player != null) return player.gameLog;
  return null;
}

///memoize function for getting current players [Map<PageGameLogParams, List<GameLogsPlayer>>]
Map<PageGameLogParams, List<GameLogsPlayer>> Function(PlayerPage) _memoizeGameLogMap(Func1<PlayerPage, Map<PageGameLogParams, List<GameLogsPlayer>>> combiner){
  int prevPageId;
  int prevMapLength;
  Map<PageGameLogParams, List<GameLogsPlayer>> prevMap;

  return ((PlayerPage page) {
    if(page == null){
      return null;
    } else if (identical(page.id, prevPageId) && identical(page.gameLog.length, prevMapLength)){
      return prevMap;
    } else {
      prevPageId = page.id;
      prevMapLength = page.gameLog.length;
      prevMap = combiner(page);
      return prevMap;
    }
  });
}

///selector for getting currently selected player's currently select game logs
final playerGameLogSelector = createSelector2(
    playerGameLogMapSelector, selectedGameLogs, _getPlayerGameLogs,
    memoize: _memoizePlayerGameLogs);

///selector for getting [List<GameLogsPlayer] from [Map<PageGameLogParams, List<GameLogsPlayer>>]
///with [PageGameLogParams]
List<GameLogsPlayer> _getPlayerGameLogs(
    Map<PageGameLogParams, List<GameLogsPlayer>> logs, PageGameLogParams params) {
  print('getting player game logs: $params, $logs');
  if (logs != null && logs.containsKey(params)) {
    return logs[params];
  }
  return null;
}

///memoize function for getting [List<GameLogsPlayer>]
List<GameLogsPlayer> Function(Map<PageGameLogParams, List<GameLogsPlayer>>, PageGameLogParams)
    _memoizePlayerGameLogs(
        Func2<Map<PageGameLogParams, List<GameLogsPlayer>>, PageGameLogParams, List<GameLogsPlayer>> combiner) {

  int prevMapLength;
  PageGameLogParams prevParams;
  List<GameLogsPlayer> prevLogs;

  return ((Map<PageGameLogParams, List<GameLogsPlayer>> map, PageGameLogParams params) {
    if(identical(map.length, prevMapLength) && identical(params, prevParams)){
      return prevLogs;
    } else {
      prevMapLength = map.length;
      prevParams = PageGameLogParams.clone(params);
      prevLogs = combiner(map, prevParams);
      return prevLogs;
    }
  });
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
    if (identical(id, prevId) && identical(players.length, prevPlayers)) {
      return prevIsStarred;
    } else {
      prevId = id;
      prevPlayers = players.length;
      prevIsStarred = combiner(prevId, players);
      return prevIsStarred;
    }
  });
}

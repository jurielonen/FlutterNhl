import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_selectors.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:kt_dart/kt.dart';
import 'package:reselect/reselect.dart';

final selectedPlayerIdSelector = (AppState state) => state.playerState.playerId;
final playerMapSelector = (AppState state) => state.playerState.players;
final selectedStatSelector = (AppState state) => state.playerState.selectedStat;
final statTypes =
    (AppState state) => state.config.getStatTypes(state.playerState.playerType);

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

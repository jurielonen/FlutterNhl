import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/starred/starred_action.dart';
import 'package:FlutterNhl/redux/states/starred/starred_state.dart';

StarredState starredReducer(StarredState state, StarredAction action) {
  if (action is StarredLoadingPlayersAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if (action is StarredReceivedPlayersAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.SUCCESS, starredPlayers: action.starredPlayers);
  } else if (action is StarredErrorAction) {
    return state.copyWith(loadingStatus: LoadingStatus.ERROR, error: action.error);
  } else if (action is StarredAddPlayerAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if (action is StarredDeletePlayerAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if (action is StarredDeletePlayerDeletedAction) {
    List<Player> temp = state.starredPlayers;
    temp.removeWhere((player) => player.id == action.player.id);
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS, starredPlayers: temp);
  } else if (action is StarredAddPlayerAddedAction) {
    List<Player> temp = state.starredPlayers;
    temp.add(action.player);
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS, starredPlayers: temp);
  }
  return state;
}

import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/game/game_action.dart';
import 'package:FlutterNhl/redux/states/game/game_state.dart';
import 'package:kt_dart/collection.dart';

GameState gameReducer(GameState state, dynamic action) {
  if (action is GameEntered) {
    return state.copyWith(
        loadingStatus: LoadingStatus.IDLE,
        selectedGame: action.game,
        error: null);
  } else if (action is GameRequestingAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING, error: null);
  } else if (action is GameDownloadedAction) {
    final gamesMap = state.games.toMutableMap();
    gamesMap[state.selectedGame.id] = action.game;
    return state.copyWith(
        loadingStatus: LoadingStatus.SUCCESS,
        games: gamesMap,
        selectedGame: action.game);
  } else if (action is GameAlreadyDownloadedAction) {
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS);
  } else if (action is GameErrorAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.ERROR, error: action.error);
  } else if (action is GameExited) {
    return state.copyWith(error: null, selectedGame: null);
  } else if (action is GameDownloadedContentAction) {
    final gamesMap = state.games.toMutableMap();
    gamesMap[state.selectedGame.id].content = action.content;
    return state.copyWith(
        loadingStatus: LoadingStatus.SUCCESS, games: gamesMap);
    ;
  } else if (action is GameAlreadyDownloadedContentAction) {
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS);
  }
  return state;
}

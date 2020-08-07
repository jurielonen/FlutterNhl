import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/game/game_action.dart';
import 'package:redux/redux.dart';

class GameMiddleware extends MiddlewareClass<AppState> {
  final StatsApi api;
  bool inGame = false;

  GameMiddleware(this.api);

  @override
  Future<Null> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is GameEntered) {
      inGame = true;
      if (store.state.gameState.loadingStatus != LoadingStatus.LOADING) {
        next(GameRequestingAction());
        if (store.state.gameState.games
            .containsKey(store.state.gameState.selectedGame.id)) {
          next(GameAlreadyDownloadedAction());
        } else {
          await _fetchGame(store.state.gameState.selectedGame, store, next);
        }
      }
    } else if (action is GameRefreshAction) {
      await _fetchGame(store.state.gameState.selectedGame, store, next);
    } else if(action is GameExited){
      inGame = false;
    }
  }

  Future<Null> _fetchGame(
      Game game, Store<AppState> store, NextDispatcher next) async {
    try {
      if (game.isPreview) {
        GamePreview previewGame = await api.fetchGamePreview(game);
        next(GameDownloadedAction(previewGame));
      } else {
        GameFinal finalGame = await api.fetchGameFinal(game);
        checkIfGameLive(game, store);
        next(GameDownloadedAction(finalGame));
      }
    } catch (error) {
      next(GameErrorAction(error.toString()));
    }
  }

  void checkIfGameLive(Game game, Store<AppState> store) {
    //gameLive = game.isLive;
    if (game.isLive && inGame)
      Future.delayed(Duration(seconds: 15), () {
        if(inGame) {
          print('game refresh called ${DateTime.now()}');
          store.dispatch(GameRefreshAction());
        }
      });
  }
}

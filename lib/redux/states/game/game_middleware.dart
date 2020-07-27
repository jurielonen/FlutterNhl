import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/game/game_action.dart';
import 'package:redux/redux.dart';

class GameMiddleware extends MiddlewareClass<AppState>{
  final StatsApi api;

  GameMiddleware(this.api);

  @override
  Future<Null> call(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if(action is GameEntered){
      if(store.state.gameState.loadingStatus != LoadingStatus.LOADING){
        next(GameRequestingAction());
        if(store.state.gameState.games.containsKey(store.state.gameState.selectedGame.id)){
          next(GameAlreadyDownloadedAction());
        } else {
          _fetchGame(store.state.gameState.selectedGame, next);
        }
      }
    }
  }

  Future<Null> _fetchGame(Game game, NextDispatcher next) async {
    try {
      if (game.isPreview) {
        GamePreview previewGame = await api.fetchGamePreview(game);
        next(GameDownloadedAction(previewGame));
      } else {
        GameFinal finalGame = await api.fetchGameFinal(game);
        next(GameDownloadedAction(finalGame));
      }
    } catch(error){
      next(GameErrorAction(error.toString()));
    }
  }
}
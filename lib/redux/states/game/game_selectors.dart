import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:kt_dart/collection.dart';
import 'package:reselect/reselect.dart';

final selectedGameIdSelector = (AppState state) => state.gameState.selectedGame.id;
final gamesSelector = (AppState state) => state.gameState.games;

final selectedGameSelector = createSelector2(selectedGameIdSelector, gamesSelector, _getGame);

Game _getGame(int id, KtMap<int, Game> games){
  if(games.containsKey(id))
    return games[id];

  return null;
}
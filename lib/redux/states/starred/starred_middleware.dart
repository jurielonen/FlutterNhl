import 'package:FlutterNhl/database/starred_database.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/starred/starred_action.dart';
import 'package:redux/redux.dart';

class StarredMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is StarredEntered) {
      _getStarredPlayers(next);
    } else if (action is StarredLoadingPlayersAction) {
      await _getStarredPlayers(next);
    } else if (action is StarredAddPlayerAction) {
      await _addPlayer(next, action.player);
    } else if (action is StarredDeletePlayerAction) {
      await _deletePlayer(next, action.player);
    }
  }

  Future<Null> _getStarredPlayers(NextDispatcher next) async {
    next(StarredLoadingPlayersAction());
    try {
      List<Player> players = await PlayerDatabase().get();
      next(StarredReceivedPlayersAction(players));
    } catch (e) {
      print(e.toString());
      if (e is Exception)
        next(StarredErrorAction(e));
      else
        next(StarredErrorAction(Exception(e.toString())));
    }
  }

  Future<Null> _addPlayer(NextDispatcher next, Player player) async {
    final temp = player.copyWith(starred: true);
    try {
      PlayerDatabase().insert(temp);
      next(StarredAddPlayerAddedAction(temp));
    } catch (e) {
      print(e.toString());
      if (e is Exception)
        next(StarredErrorAction(e));
      else
        next(StarredErrorAction(Exception(e.toString())));
    }
  }

  Future<Null> _deletePlayer(NextDispatcher next, Player player) async {
    final temp = player.copyWith(starred: false);
    try {
      PlayerDatabase().delete(temp);
      next(StarredDeletePlayerDeletedAction(temp));
    } catch (e) {
      print(e.toString());
      if (e is Exception)
        next(StarredErrorAction(e));
      else
        next(StarredErrorAction(Exception(e.toString())));
    }
  }
}

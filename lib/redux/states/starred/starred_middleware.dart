import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/starred/starred_action.dart';
import 'package:path/path.dart';
import 'package:redux/redux.dart';
import 'package:sqflite/sqflite.dart';
import 'package:FlutterNhl/constants/constants.dart';

class StarredMiddleware extends MiddlewareClass<AppState> {
  Future<Database> database;

  @override
  call(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is StarredEntered) {
      database =
          openDatabase(join(await getDatabasesPath(), DB_PATH_PLAYER), onCreate: (db, version) {
        print('StarredMiddleware onCreate');
        return db.execute(
          "CREATE TABLE $DB_TABLE_PLAYER($DB_KEY_PLAYER_ID INTEGER PRIMARY KEY NOT NULL, $DB_KEY_PLAYER_NAME TEXT NOT NULL)",
        );
      }, onUpgrade: (db, v, v2) {
        print('StarredMiddleware onUpgrade');
      }, onOpen: (db) {
        print('StarredMiddleware onOpen');
        _getStarredPlayers(next);
      }, version: 2);
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
      final Database db = await database;
      final List<Map<String, dynamic>> value = await db.query(DB_TABLE_PLAYER);
      next(StarredReceivedPlayersAction(Player.fromDatabase(value)));
    } catch (e) {
      print(e.toString());
      if (e is Exception)
        next(StarredErrorAction(e));
      else
        next(StarredErrorAction(Exception(e.toString())));
    }
  }

  Future<Null> _addPlayer(NextDispatcher next, Player player) async {
    final Database db = await database;
    try {
      await db.insert(DB_TABLE_PLAYER, player.toMap());
      player.starred = true;
      next(StarredAddPlayerAddedAction());
    } catch (e) {
      print(e.toString());
      if (e is Exception)
        next(StarredErrorAction(e));
      else
        next(StarredErrorAction(Exception(e.toString())));
    }
  }

  Future<Null> _deletePlayer(NextDispatcher next, Player player) async {
    final Database db = await database;
    try {
      await db.delete(DB_TABLE_PLAYER, where: '$DB_KEY_PLAYER_ID = ?', whereArgs: [player.id]);
      player.starred = false;
      next(StarredDeletePlayerDeletedAction());
    } catch (e) {
      print(e.toString());
      if (e is Exception)
        next(StarredErrorAction(e));
      else
        next(StarredErrorAction(Exception(e.toString())));
    }
  }
}

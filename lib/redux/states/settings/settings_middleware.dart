import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/settings/game_show.dart';
import 'package:FlutterNhl/redux/models/settings/settings.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_action.dart';
import 'package:FlutterNhl/redux/states/settings/settings_action.dart';
import 'package:path/path.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

class SettingsMiddleware extends MiddlewareClass<AppState> {
  Future<Database> database;
  SharedPreferences sharedPreferences;
  static const SP_KEY_CURRENT_DATE = 'CURRENT_DATE';
  static const SP_KEY_GAMES_SHOWN = 'CURRENT_DATE';

  @override
  call(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is SettingsInitialDownloadAction) {
      database = openDatabase(
        join(await getDatabasesPath(), DB_PATH_SETTINGS),
        onCreate: (db, version) async {
          print('SettingsMiddleware onCreate');
          await db.execute(
              "CREATE TABLE $DB_TABLE_SETTINGS($DB_KEY_SETTINGS_NAME INTEGER PRIMARY KEY NOT NULL, $DB_KEY_SETTINGS_VALUE TEXT NOT NULL)");
          for (Map<String, dynamic> setting in NhlSettings.getInitialMap()) {
            await db.insert(DB_TABLE_SETTINGS, setting);
          }
          _checkGameShown(await _getSettings(next), next);
        },
        onOpen: (db) async {
          print('SettingsMiddleware onOpen');
          _checkGameShown(await _getSettings(next), next);
        },
        onUpgrade: (db, v1, v2) async {
          print('SettingsMiddleware onUpgrade');
          for (Map<String, dynamic> setting in NhlSettings.getInitialMap()) {
            await db.insert(DB_TABLE_SETTINGS, setting,
                conflictAlgorithm: ConflictAlgorithm.ignore);
          }
          _checkGameShown(await _getSettings(next), next);
        },
        version: 1,
      );
    } else if (action is SettingsChangedAction) {
      _setSettings(next, action.settings.getChangedValues(store.state.settingsState.settings));
    } else if (action is SettingsGamesShownChangedAction) {
      _saveGameShown(action.gameShow);
    }
  }

  Future<Null> _getSettings(NextDispatcher next) async {
    next(SettingsDownloadAction());
    NhlSettings settings;
    try {
      final Database db = await database;
      settings = NhlSettings.fromJson(await db.query(DB_TABLE_SETTINGS));
      next(SettingsReceivedAction(settings));
    } catch (e) {
      if (e is Exception)
        next(SettingsErrorAction(e));
      else
        next(SettingsErrorAction(Exception(e.toString())));
    }
    return settings;
  }

  Future<Null> _setSettings(NextDispatcher next, List<Map<String, dynamic>> list) async {
    final Database db = await database;
    try {
      for (Map<String, dynamic> setting in list) {
        await db.update(
            DB_TABLE_SETTINGS,
            {
              DB_KEY_SETTINGS_NAME: setting[DB_KEY_SETTINGS_NAME],
              DB_KEY_SETTINGS_VALUE: setting[DB_KEY_SETTINGS_VALUE].toString()
            },
            where: '$DB_KEY_SETTINGS_NAME = ?',
            whereArgs: [setting[DB_KEY_SETTINGS_NAME]]);
      }
      _getSettings(next);
    } catch (e) {
      if (e is Exception)
        next(SettingsErrorAction(e));
      else
        next(SettingsErrorAction(Exception(e.toString())));
    }
  }

  Future<Null> _checkGameShown(NhlSettings settings, NextDispatcher next) async {
    if (settings == null || !settings.gameResult) return;

    if (sharedPreferences == null) {
      sharedPreferences = await SharedPreferences.getInstance();
    }
    String currentDate = sharedPreferences.getString(SP_KEY_CURRENT_DATE);
    GameShow gameShow;
    if (Config().getStartingDate().toString() != currentDate) {
      currentDate = Config().getStartingDate().toString();
      sharedPreferences.setString(SP_KEY_CURRENT_DATE, currentDate);
      sharedPreferences.remove(SP_KEY_GAMES_SHOWN);
      gameShow = GameShow.fromSharedPrefs(currentDate, []);
    } else {
      gameShow = GameShow.fromSharedPrefs(
          currentDate, sharedPreferences.getStringList(SP_KEY_GAMES_SHOWN));
    }
    next(ScheduleGameShownAction(gameShow));
    next(ScheduleDateChangedAction(Config().getStartingDate()));
  }

  Future<Null> _saveGameShown(GameShow gameShow) async {
    if (sharedPreferences == null) {
      sharedPreferences = await SharedPreferences.getInstance();
    }

    sharedPreferences.setString(SP_KEY_CURRENT_DATE, gameShow.getCurrentDateString);
    sharedPreferences.setStringList(SP_KEY_GAMES_SHOWN, gameShow.gameShownListString);
  }
}

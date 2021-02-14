import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/redux/models/settings/settings.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/settings/settings_action.dart';
import 'package:path/path.dart';
import 'package:redux/redux.dart';
import 'package:sqflite/sqflite.dart';

class SettingsMiddleware extends MiddlewareClass<AppState> {
  Future<Database> database;

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
          _getSettings(next);
        },
        onOpen: (db) async {
          print('SettingsMiddleware onOpen');
          _getSettings(next);
        },
        onUpgrade: (db, v1, v2) async {
          print('SettingsMiddleware onUpgrade');
          for (Map<String, dynamic> setting in NhlSettings.getInitialMap()) {
            await db.insert(DB_TABLE_SETTINGS, setting,
                conflictAlgorithm: ConflictAlgorithm.ignore);
          }
          _getSettings(next);
        },
        version: 1,
      );
    } else if (action is SettingsChangedAction) {
      _setSettings(next, action.settings.getChangedValues(store.state.settingsState.settings));
    }
  }

  Future<Null> _getSettings(NextDispatcher next) async {
    next(SettingsDownloadAction());
    try {
      final Database db = await database;
      next(SettingsReceivedAction(NhlSettings.fromJson(await db.query(DB_TABLE_SETTINGS))));
    } catch (e) {
      if (e is Exception)
        next(SettingsErrorAction(e));
      else
        next(SettingsErrorAction(Exception(e.toString())));
    }
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
}

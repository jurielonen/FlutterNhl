import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/redux/models/settings/settings.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SettingsDatabase {
  static final SettingsDatabase _settingsDatabase = SettingsDatabase._internal();
  _SettingsDB _settingsDB;

  SettingsDatabase._internal() {
    _settingsDB = _SettingsDB();
  }

  Future<Null> update(List<Map<String, dynamic>> list) async {
    final Database db = await _settingsDB.db;
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
  }

  Future<NhlSettings> get() async {
    final Database db = await _settingsDB.db;
    return NhlSettings.fromJson(await db.query(DB_TABLE_SETTINGS));
  }

  Future<Null> clear() async {
    final Database db = await _settingsDB.db;
    await db.execute('DELETE FROM $DB_TABLE_SETTINGS');
  }

  factory SettingsDatabase() => _settingsDatabase;
}

class _SettingsDB {
  Future<Database> _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = openDatabase(join(await getDatabasesPath(), DB_PATH_SETTINGS),
          onCreate: _dbOnCreate, version: 2);
    }
    return _db;
  }

  Future<Null> _dbOnCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE $DB_TABLE_SETTINGS($DB_KEY_SETTINGS_NAME INTEGER PRIMARY KEY NOT NULL, $DB_KEY_SETTINGS_VALUE TEXT NOT NULL)");
    for (Map<String, dynamic> setting in NhlSettings.getInitialMap()) {
      await db.insert(DB_TABLE_SETTINGS, setting);
    }
  }
}

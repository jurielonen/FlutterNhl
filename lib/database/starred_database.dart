import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class PlayerDatabase {
  static final PlayerDatabase _playerDatabase = PlayerDatabase._internal();
  _PlayerDB _playerDB;

  PlayerDatabase._internal() {
    _playerDB = _PlayerDB();
  }

  Future<Null> insert(Player player) async {
    final Database db = await _playerDB.db;
    await db.insert(DB_TABLE_PLAYER, player.toMap());
  }

  Future<List<Player>> get() async {
    final Database db = await _playerDB.db;
    final dbValue = await db.query(DB_TABLE_PLAYER);
    return Player.fromDatabase(dbValue);
  }

  Future<Null> clear() async {
    final Database db = await _playerDB.db;
    await db.execute('DELETE FROM $DB_TABLE_PLAYER');
  }

  Future<Null> delete(Player player) async {
    final Database db = await _playerDB.db;
    await db.delete(DB_TABLE_PLAYER, where: '$DB_KEY_PLAYER_ID = ?', whereArgs: [player.id]);
  }

  factory PlayerDatabase() => _playerDatabase;
}

class _PlayerDB {
  Future<Database> _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = openDatabase(join(await getDatabasesPath(), DB_PATH_PLAYER),
          onCreate: _dbOnCreate, version: 2);
    }
    return _db;
  }

  Future<Null> _dbOnCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE $DB_TABLE_PLAYER($DB_KEY_PLAYER_ID INTEGER PRIMARY KEY NOT NULL, $DB_KEY_PLAYER_NAME TEXT NOT NULL)");
  }
}

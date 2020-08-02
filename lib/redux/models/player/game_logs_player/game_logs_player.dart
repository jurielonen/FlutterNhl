import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';

class GameLogsPlayer {
  final Team opponent;
  final int gamePk;
  final DateTime date;
  final bool home;
  final bool won;
  final bool overtime;
  final Map<String, dynamic> stats;

  GameLogsPlayer(
      {this.opponent,
      this.gamePk,
      this.date,
      this.home,
      this.won,
      this.overtime,
      this.stats});

  factory GameLogsPlayer.fromJson(Map<String, dynamic> json) {
    return GameLogsPlayer(
        opponent: Team.fromJson(getJsonObject(['opponent'], json)),
        gamePk: getJsonInt2(['game', 'gamePk'], json),
        date: getJsonDateTime('date', json),
        home: getJsonBoolean('isHome', json),
        won: getJsonBoolean('isWin', json),
        overtime: getJsonBoolean('isOT', json),
        stats: getJsonObject(['stat'], json));
  }

  String get result => won ? 'W' : overtime ? 'OTL' : 'L';

  String get isHome => home ? 'vs' : '@';
}

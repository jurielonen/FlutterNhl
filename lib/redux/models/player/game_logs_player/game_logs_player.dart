import 'package:FlutterNhl/redux/models/helpers.dart';

class GameLogsPlayer {
  final String opponentName;
  final String opponentAbb;
  final int gamePk;
  final DateTime date;
  final bool home;
  final bool won;
  final Map<String, dynamic> stats;

  GameLogsPlayer(
      {this.opponentName,
      this.opponentAbb,
      this.gamePk,
      this.date,
      this.home,
      this.won,
      this.stats});

  factory GameLogsPlayer.fromJson(Map<String, dynamic> json) {
    return GameLogsPlayer(
        opponentName: getJsonString2(['opponent', 'name'], json),
        opponentAbb: getJsonString2(['opponent', 'abbreviation'], json),
        gamePk: getJsonInt2(['game', 'gamePk'], json),
        date: getJsonDateTime('date', json),
        home: getJsonBoolean('isHome', json),
        won: getJsonBoolean('isWin', json),
        stats: getJsonObject(['stat'], json));
  }
}

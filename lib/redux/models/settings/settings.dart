import 'package:FlutterNhl/constants/constants.dart';
import 'package:flutter/cupertino.dart';

@immutable
class NhlSettings {
  final bool gameResult;
  final int yesterdayGame;

  NhlSettings({@required this.gameResult, @required this.yesterdayGame});

  factory NhlSettings.fromJson(List<Map<String, dynamic>> json) {
    bool gResult = false;
    int yGame = 0;
    json.asMap().forEach((key, value) {
      final sName = value[DB_KEY_SETTINGS_NAME];
      if (sName == SettingsTypeEnum.GAME_RESULT.index) {
        gResult = value[DB_KEY_SETTINGS_VALUE] == 'true' ? true : false;
      } else if (sName == SettingsTypeEnum.YESTERDAY_GAME.index) {
        yGame = int.parse(value[DB_KEY_SETTINGS_VALUE], onError: (value) => 0);
      }
    });

    return NhlSettings(gameResult: gResult, yesterdayGame: yGame);
  }

  NhlSettings copyWith({bool gameResult, int yesterdayGame}) {
    return NhlSettings(
        gameResult: gameResult ?? this.gameResult,
        yesterdayGame: yesterdayGame ?? this.yesterdayGame);
  }

  List<Map<String, dynamic>> getChangedValues(NhlSettings old) {
    List<Map<String, dynamic>> list = [];

    if (this.gameResult != old.gameResult) {
      list.add({
        DB_KEY_SETTINGS_NAME: SettingsTypeEnum.GAME_RESULT.index,
        DB_KEY_SETTINGS_VALUE: this.gameResult,
      });
    }

    if (this.yesterdayGame != old.yesterdayGame) {
      list.add({
        DB_KEY_SETTINGS_NAME: SettingsTypeEnum.YESTERDAY_GAME.index,
        DB_KEY_SETTINGS_VALUE: this.yesterdayGame,
      });
    }

    return list;
  }

  static List<Map<String, dynamic>> getInitialMap() {
    return [
      {
        DB_KEY_SETTINGS_NAME: SettingsTypeEnum.GAME_RESULT.index,
        DB_KEY_SETTINGS_VALUE: false.toString(),
      },
      {
        DB_KEY_SETTINGS_NAME: SettingsTypeEnum.YESTERDAY_GAME.index,
        DB_KEY_SETTINGS_VALUE: 0,
      }
    ];
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NhlSettings &&
          gameResult == other.gameResult &&
          yesterdayGame == other.yesterdayGame;

  @override
  int get hashCode => gameResult.hashCode ^ yesterdayGame.hashCode;
}

enum SettingsTypeEnum { GAME_RESULT, YESTERDAY_GAME }

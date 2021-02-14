import 'package:FlutterNhl/constants/constants.dart';
import 'package:flutter/cupertino.dart';

@immutable
class NhlSettings {
  final bool gameResult;

  NhlSettings({@required this.gameResult});

  factory NhlSettings.fromJson(List<Map<String, dynamic>> json) {
    bool gResult = false;

    json.asMap().forEach((key, value) {
      final sName = value[DB_KEY_SETTINGS_NAME];
      if (sName == SettingsTypeEnum.GAME_RESULT.index) {
        gResult = value[DB_KEY_SETTINGS_VALUE] == 'true' ? true : false;
      }
    });

    return NhlSettings(gameResult: gResult);
  }

  NhlSettings copyWith({bool gameResult}) {
    return NhlSettings(gameResult: gameResult ?? this.gameResult);
  }

  List<Map<String, dynamic>> getChangedValues(NhlSettings old) {
    List<Map<String, dynamic>> list = [];

    if (this.gameResult != old.gameResult) {
      list.add({
        DB_KEY_SETTINGS_NAME: SettingsTypeEnum.GAME_RESULT.index,
        DB_KEY_SETTINGS_VALUE: this.gameResult,
      });
    }

    return list;
  }

  static List<Map<String, dynamic>> getInitialMap() {
    return [
      {
        DB_KEY_SETTINGS_NAME: SettingsTypeEnum.GAME_RESULT.index,
        DB_KEY_SETTINGS_VALUE: false.toString(),
      }
    ];
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is NhlSettings && gameResult == other.gameResult;

  @override
  int get hashCode => gameResult.hashCode;
}

enum SettingsTypeEnum { GAME_RESULT }

import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/settings/game_show.dart';
import 'package:FlutterNhl/redux/models/settings/settings.dart';
import 'package:flutter/foundation.dart';

@immutable
class SettingsState {
  final LoadingStatus loadingStatus;
  final Exception error;
  final NhlSettings settings;
  final GameShow gameShow;

  SettingsState(
      {@required this.loadingStatus,
      @required this.settings,
      @required this.error,
      @required this.gameShow});

  factory SettingsState.initial() {
    return SettingsState(
        loadingStatus: LoadingStatus.IDLE, settings: null, error: null, gameShow: null);
  }

  SettingsState copyWith(
      {LoadingStatus loadingStatus, NhlSettings settings, Exception error, GameShow gameShow}) {
    return SettingsState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      settings: settings ?? this.settings,
      error: error ?? this.error,
      gameShow: gameShow ?? this.gameShow,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsState &&
          loadingStatus == other.loadingStatus &&
          settings == other.settings &&
          error == other.error &&
          gameShow == other.gameShow;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^ settings.hashCode ^ error.hashCode ^ gameShow.hashCode;
}

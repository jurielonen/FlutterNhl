import 'package:FlutterNhl/redux/models/settings/game_show.dart';
import 'package:FlutterNhl/redux/models/settings/settings.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';

class SettingsInitialDownloadAction extends SettingsAction {}

class SettingsDownloadAction extends SettingsAction {}

class SettingsReceivedAction extends SettingsAction {
  NhlSettings settings;
  SettingsReceivedAction(this.settings);
}

class SettingsErrorAction extends SettingsAction {
  final Exception error;
  SettingsErrorAction(this.error);
}

class SettingsChangedAction extends SettingsAction {
  final NhlSettings settings;
  SettingsChangedAction(this.settings);
}

class SettingsGamesShownChangedAction extends SettingsAction {
  final GameShow gameShow;
  SettingsGamesShownChangedAction(this.gameShow);
}

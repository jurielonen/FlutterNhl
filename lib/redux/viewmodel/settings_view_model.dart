import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/settings/settings.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/settings/settings_action.dart';
import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';

class SettingsViewModel {
  final LoadingStatus loadingStatus;
  final Exception error;
  final NhlSettings settings;
  final Function(NhlSettings) updateSettings;

  SettingsViewModel({
    @required this.loadingStatus,
    @required this.error,
    @required this.settings,
    @required this.updateSettings,
  });

  static SettingsViewModel fromStore(Store<AppState> store) {
    return SettingsViewModel(
      loadingStatus: store.state.settingsState.loadingStatus,
      error: store.state.settingsState.error,
      settings: store.state.settingsState.settings,
      updateSettings: (NhlSettings settings) => store.dispatch(SettingsChangedAction(settings)),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsViewModel &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          error == other.error &&
          settings == other.settings;

  @override
  int get hashCode => loadingStatus.hashCode ^ error.hashCode ^ settings.hashCode;
}

import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/settings/settings_action.dart';
import 'package:FlutterNhl/redux/states/settings/settings_state.dart';

SettingsState settingsReducer(SettingsState state, SettingsAction action) {
  if (action is SettingsDownloadAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING, error: null);
  } else if (action is SettingsReceivedAction) {
    return state.copyWith(
        settings: action.settings, loadingStatus: LoadingStatus.SUCCESS, error: null);
  } else if (action is SettingsErrorAction) {
    return state.copyWith(loadingStatus: LoadingStatus.ERROR, error: action.error);
  }

  return state;
}

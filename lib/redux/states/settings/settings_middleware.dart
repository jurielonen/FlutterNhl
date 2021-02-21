import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/database/settings_database.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/settings/game_show.dart';
import 'package:FlutterNhl/redux/models/settings/settings.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_action.dart';
import 'package:FlutterNhl/redux/states/settings/settings_action.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsMiddleware extends MiddlewareClass<AppState> {
  SharedPreferences sharedPreferences;
  static const SP_KEY_CURRENT_DATE = 'CURRENT_DATE';
  static const SP_KEY_GAMES_SHOWN = 'GAMES_SHOWN';

  @override
  call(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is SettingsInitialDownloadAction) {
      NhlSettings settings = await _getSettings(next);
      next(ScheduleDateChangedAction(
          Config().getStartingDate(delayDate: settings?.yesterdayGame ?? 0)));
      next(InitActionFinished());
    } else if (action is SettingsChangedAction) {
      await _setSettings(
          next, action.settings.getChangedValues(store.state.settingsState.settings));
    } else if (action is SettingsGamesShownChangedAction) {
      await _saveGameShown(action.gameShow);
    }
  }

  Future<NhlSettings> _getSettings(NextDispatcher next) async {
    NhlSettings settings;
    next(SettingsDownloadAction());
    try {
      settings = await SettingsDatabase().get();
      await _checkGameShown(settings, next);
      next(SettingsReceivedAction(settings));
    } catch (error) {
      _errorHandler(next, error);
    }
    return settings;
  }

  Future<Null> _setSettings(NextDispatcher next, List<Map<String, dynamic>> list) async {
    try {
      await SettingsDatabase().update(list);
      await _getSettings(next);
    } catch (e) {
      _errorHandler(next, e);
    }
  }

  void _errorHandler(NextDispatcher next, dynamic error) {
    if (error is Exception)
      next(SettingsErrorAction(error));
    else
      next(SettingsErrorAction(Exception(error.toString())));
  }

  Future<Null> _checkGameShown(NhlSettings settings, NextDispatcher next) async {
    if (settings == null || !settings.gameResult) return;

    if (sharedPreferences == null) {
      sharedPreferences = await SharedPreferences.getInstance();
    }
    String currentDate = sharedPreferences.getString(SP_KEY_CURRENT_DATE);
    String configCurrentDate =
        Styles.apiDateFormat.format(Config().getStartingDate(delayDate: settings.yesterdayGame));
    GameShow gameShow;
    if (configCurrentDate != currentDate) {
      currentDate = configCurrentDate;
      sharedPreferences.setString(SP_KEY_CURRENT_DATE, currentDate);
      sharedPreferences.remove(SP_KEY_GAMES_SHOWN);
      gameShow = GameShow.fromSharedPrefs(currentDate, []);
    } else {
      gameShow = GameShow.fromSharedPrefs(
          currentDate, sharedPreferences.getStringList(SP_KEY_GAMES_SHOWN));
    }
    next(SettingsGamesShownChangedAction(gameShow));
  }

  Future<Null> _saveGameShown(GameShow gameShow) async {
    if (sharedPreferences == null) {
      sharedPreferences = await SharedPreferences.getInstance();
    }

    sharedPreferences.setString(SP_KEY_CURRENT_DATE, gameShow.getCurrentDateString);
    sharedPreferences.setStringList(SP_KEY_GAMES_SHOWN, gameShow.gameShownListString);
  }
}

import 'package:FlutterNhl/redux/models/settings/game_show.dart';
import 'package:FlutterNhl/redux/models/settings/settings.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:reselect/reselect.dart';

final _settingsSelector = (AppState state) => state.settingsState.settings;
final _gameShowSelector = (AppState state) => state.settingsState.gameShow;

final gameShowSelector = createSelector2(_settingsSelector, _gameShowSelector, _getGameShow);

GameShow _getGameShow(NhlSettings settings, GameShow gameShow) {
  if (settings != null && settings.gameResult) return gameShow;
  return null;
}

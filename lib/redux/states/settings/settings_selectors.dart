import 'package:FlutterNhl/redux/models/settings/game_show.dart';
import 'package:FlutterNhl/redux/models/settings/settings.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:reselect/reselect.dart';

final settingsSelector = (AppState state) => state.settingsState.settings;
final gameShownSelector = (AppState state) => state.settingsState.gameShow;

final gameShowSelector = createSelector2(settingsSelector, gameShownSelector, _getGameShow);

GameShow _getGameShow(NhlSettings settings, GameShow gameShow) {
  if (settings.gameResult) return gameShow;
  return null;
}

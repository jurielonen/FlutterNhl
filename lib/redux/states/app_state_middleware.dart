import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/settings/settings_action.dart';
import 'package:redux/redux.dart';

class AppStateMiddleware extends MiddlewareClass<AppState> {
  final StatsApi api;

  AppStateMiddleware(this.api);

  @override
  Future<Null> call(Store<AppState> store, action, next) async {
    next(action);
    if (action is InitAction) {
      try {
        await api.fetchCurrentSeason();
        await api.fetchTeams();
        next(SettingsInitialDownloadAction());
        next(SeasonConfigReceived());
      } catch (error) {
        next(ErrorAction(error));
      }
    }
  }
}

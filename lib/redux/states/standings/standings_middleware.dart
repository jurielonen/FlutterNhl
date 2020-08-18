import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/standings/standings.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/standings/standings_action.dart';
import 'package:redux/redux.dart';

class StandingsMiddleware extends MiddlewareClass<AppState> {
  final StatsApi api;

  StandingsMiddleware(this.api);

  @override
  Future<Null> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is StandingsSeasonChangedAction &&
        store.state.standingsState.loadingStatus != LoadingStatus.LOADING) {
      next(StandingsRequestingAction());

      if (store.state.standingsState.standings.containsKey(store.state.standingsState.selectedSeason)) {
        next(StandingsAlreadyDownloadedAction());
      } else {
        try {
          Standing standing;
          if (action.season != null)
            standing = await api.fetchStandings(season: action.season);
          else
            standing = await api.fetchStandings();
          next(StandingsDownloaded(standing));
        } catch (error) {
          next(StandingsError(error.toString()));
        }
      }
    }
  }
}

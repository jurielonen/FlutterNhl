import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/playoffs/series/series_action.dart';
import 'package:redux/redux.dart';

class SeriesMiddleware extends MiddlewareClass<AppState> {
  final StatsApi api;
  SeriesMiddleware(this.api);

  @override
  Future<Null> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is SeriesEntered) {
      next(SeriesRequestingAction());
      if (action.selectedSeries.games == null ||
          action.selectedSeries.games.isEmpty) {
        try {
          final games = await api.fetchPlayoffGames(
              action.selectedSeries.teams.first.id,
              action.selectedSeries.teams.last.id,
              store.state.playoffsState.selectedSeason);
          next(SeriesDownloadedGamesAction(games));
        } catch (error) {
          next(SeriesErrorAction(error));
        }
      } else {
        next(SeriesAlreadyDownloadedGamesAction());
      }
    }
  }
}

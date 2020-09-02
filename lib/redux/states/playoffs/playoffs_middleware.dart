import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/playoffs/playoffs_action.dart';
import 'package:redux/redux.dart';

class PlayoffsMiddleware extends MiddlewareClass<AppState> {
  final StatsApi api;
  PlayoffsMiddleware(this.api);

  @override
  Future<Null> call(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if(action is PlayoffsEntered || action is PlayoffsSeasonChangedAction){
      next(PlayoffsRequestingAction());
      if(store.state.playoffsState.playoffs.containsKey(store.state.playoffsState.selectedSeason)){
        next(PlayoffsAlreadyDownloadedAction());
      } else {
        try {
          final playoff = await api.fetchPlayoff(store.state.playoffsState.selectedSeason);
          next(PlayoffsDownloadedAction(playoff));
        } catch(error){
          next(PlayoffsError(error));
        }
      }
    }
  }

}
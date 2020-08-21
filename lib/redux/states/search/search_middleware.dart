import 'package:FlutterNhl/redux/api/suggest_api.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/search/search_actions.dart';
import 'package:redux/redux.dart';

class SearchMiddleware extends MiddlewareClass<AppState> {
  final SuggestApi api;
  SearchMiddleware(this.api);

  @override
  call(Store<AppState> store, dynamic action, NextDispatcher next) async {
    if (action is SearchRequestingAction) {
      if (store.state.searchState.loadingStatus != LoadingStatus.LOADING) {
        next(action);
        try {
          final search =
              await api.fetchPlayers(action.query, active: action.active);
          next(SearchDownloadedAction(search));
        } catch (error) {
          next(SearchErrorAction(error.toString()));
        }
      }
    } else {
      next(action);
    }
  }
}

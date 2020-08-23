import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/draft/draft.dart';
import 'package:FlutterNhl/redux/models/draft/draft_table_source.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/draft/draft_action.dart';
import 'package:redux/redux.dart';

class DraftMiddleware extends MiddlewareClass<AppState> {
  final StatsApi statsApi;

  DraftMiddleware(this.statsApi);

  @override
  Future<Null> call(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if(store.state.draftState.loadingStatus != LoadingStatus.LOADING){
      if(action is DraftEntered || action is DraftChangedAction){
        next(DraftRequestingAction());
        if(store.state.draftState.drafts.containsKey(store.state.draftState.selectedYear)){
          next(DraftAlreadyDownloadedAction());
        } else {
          try {
            final Draft draft = await statsApi.fetchDraft(
                store.state.draftState.selectedYear);
            next(DraftDownloadedAction(DraftTableSource(draft: draft)));
          } catch(error){
            next(DraftErrorAction(error));
          }
        }
      }
    }
  }

}
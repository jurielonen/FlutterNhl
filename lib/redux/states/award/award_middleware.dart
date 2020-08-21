import 'package:FlutterNhl/redux/api/records_api.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/award/award.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/award/award_actions.dart';
import 'package:FlutterNhl/redux/states/award/award_selectors.dart';
import 'package:redux/redux.dart';

class AwardMiddleware extends MiddlewareClass<AppState> {
  final RecordsApi recordsApi;

  AwardMiddleware(this.recordsApi);

  @override
  Future<Null> call(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (store.state.awardState.loadingStatus != LoadingStatus.LOADING) {
      if (action is AwardEntered) {
        await _downloadAwards(store, next);
      } else if(action is AwardChosenAction){
        await _downloadRecipients(store, next);
      }
    }
  }

  Future<Null> _downloadAwards(Store<AppState> store, NextDispatcher next) async {
    next(AwardRequestingAction());
    if (store.state.awardState.awards.isEmpty()) {
      try {
        final Map<int, AwardTableSource> awards = await recordsApi.fetchAwards();
        next(AwardDownloadedAction(awards));
      } catch (error) {
        next(AwardError(error.toString()));
      }
    } else {
    next(AwardAlreadyDownloadedAction());
    }
  }

  Future<Null> _downloadRecipients(Store<AppState> store, NextDispatcher next) async {
    next(AwardRequestingAction());
    if (store.state.awardState.selectedAward != null) {
      try {
        final List<AwardFinalists> recipient = await recordsApi.fetchRecipients(selectedAwardSelector(store.state).award);
        next(AwardRecipientDownloadedAction(recipient));
      } catch (error) {
        next(AwardError(error.toString()));
      }
    } else {
      next(AwardRecipientAlreadyDownloadedAction());
    }
  }
}
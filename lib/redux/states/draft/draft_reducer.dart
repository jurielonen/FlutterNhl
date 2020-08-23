import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/draft/draft_action.dart';
import 'package:FlutterNhl/redux/states/draft/draft_state.dart';
import 'package:kt_dart/collection.dart';

DraftState draftReducer(DraftState state, dynamic action){
  if(action is DraftEntered){
    return state.copyWith(loadingStatus: LoadingStatus.IDLE);
  } else if(action is DraftRequestingAction){
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if(action is DraftAlreadyDownloadedAction){
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS);
  } else if(action is DraftChangedAction){
    return state.copyWith(selectedYear: action.year);
  } else if(action is DraftDownloadedAction){
    final drafts = state.drafts.toMutableMap();
    drafts[state.selectedYear] = action.draft;
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS, drafts: drafts);
  } else if(action is DraftErrorAction){
    return state.copyWith(loadingStatus: LoadingStatus.ERROR, error: action.error);
  } else if(action is SeasonConfigReceived){
    return state.copyWith(selectedYear: Config.getCurrentDraft());
  }

  return state;
}
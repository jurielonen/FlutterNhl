import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/award/award_actions.dart';
import 'package:FlutterNhl/redux/states/award/award_state.dart';
import 'package:kt_dart/collection.dart';

AwardState awardReducer(AwardState state, dynamic action) {
  print('AWARDSTATE: ${action.runtimeType}');

  if (action is AwardEntered) {
    return state.copyWith(loadingStatus: LoadingStatus.IDLE);
  } else if (action is AwardRequestingAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if (action is AwardError) {
    return state.copyWith(
        loadingStatus: LoadingStatus.ERROR, errorMsg: action.error);
  } else if (action is AwardAlreadyDownloadedAction) {
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS);
  } else if (action is AwardRecipientAlreadyDownloadedAction) {
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS);
  } else if (action is AwardDownloadedAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.SUCCESS,
        awards: KtMap.from(action.awards));
  } else if (action is AwardRecipientDownloadedAction) {
    final awards = state.awards.toMutableMap();
    awards[state.selectedAward].recipients = action.recipients;
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS, awards: awards);
  } else if (action is AwardChosenAction) {
    return state.copyWith(selectedAward: action.selectedAward);
  } else if(action is AwardUnChosenAction){
    return state.copyWith(selectedAward: null);
  }
  return state;
}

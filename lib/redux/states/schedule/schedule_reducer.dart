import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_action.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_state.dart';
import 'package:kt_dart/collection.dart';

ScheduleState scheduleReducer(ScheduleState state, dynamic action) {
  if (action is ScheduleDateChangedAction) {
    return state.copyWith(selectedDate: action.date);
  } else if (action is RequestingScheduleAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if (action is ReceivedScheduleAction) {
    final tSchedule = state.schedules.toMutableMap();
    tSchedule[action.date] = action.schedule;
    return state.copyWith(
        loadingStatus: LoadingStatus.SUCCESS,
        selectedDate: action.schedule.date,
        schedules: tSchedule,
        error: null);
  } else if (action is ScheduleAlreadyDownloadedAction) {
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS);
  } else if (action is ErrorScheduleAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.ERROR, error: action.error);
  } else if(action is ScheduleEntered){
    return state.copyWith(inSchedule: true);
  } else if(action is ScheduleExited){
    return state.copyWith(inSchedule: false);
  }
  /* else if (action is SeasonConfigReceived) {
    return state.copyWith(
        selectedDate: DateTime.parse(Config().regularSeasonEndDate));
  }*/

  return state;
}

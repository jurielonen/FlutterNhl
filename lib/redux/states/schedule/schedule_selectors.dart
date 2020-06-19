import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:kt_dart/kt.dart';
import 'package:reselect/reselect.dart';

final selectedDateSelector = (AppState state) => Styles.apiDateFormat.format(state.scheduleState.selectedDate);
final schedulesSelector = (AppState state) => state.scheduleState.schedules;

final scheduleSelector = createSelector2(selectedDateSelector, schedulesSelector, _getSchedule);

Schedule _getSchedule(String selectedDate, KtMap<String, Schedule> schedules){
  if(schedules.containsKey(selectedDate))
    return schedules[selectedDate];
  else
    return Schedule.empty();
}
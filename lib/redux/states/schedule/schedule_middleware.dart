import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_action.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_selectors.dart';
import 'package:redux/redux.dart';

class ScheduleMiddleware extends MiddlewareClass<AppState>{
  final StatsApi api;
  ScheduleMiddleware(this.api);

  @override
  Future<Null> call(Store<AppState> store, dynamic action, NextDispatcher next) async {
    if(action is InitAction){

      next(ScheduleDateChangedAction(DateTime(2020, 2, 1)));
      _getSchedule(store, next);
    } else
    if(action is GetCurrentDateScheduleIfNotLoadedAction) {
      if(store.state.scheduleState.loadingStatus != LoadingStatus.LOADING) {
        if (store.state.scheduleState.selectedDate == null) {
          next(ScheduleDateChangedAction(DateTime(2020, 2, 1)));
        }
        _getSchedule(store, next);
      }
    } else {
      next(action);
      if (action is ScheduleDateChangedAction) {
        _getSchedule(store, next);
      }
    }
  }

  Future<Null> _getSchedule(Store<AppState> store, NextDispatcher next) async {
    next(RequestingScheduleAction);
    String sDate = selectedDateSelector(store.state);
    if (store.state.scheduleState.schedules.containsKey(sDate)) {
      next(ScheduleAlreadyDownloadedAction());
    } else {
      try{
        final Schedule schedule = await api.fetchSchedule(sDate);
        next(ReceivedScheduleAction(sDate, schedule));
      } catch(e) {
        print(e.toString());
        next(ErrorScheduleAction(e.toString()));
      }
    }
  }
  
}
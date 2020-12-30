import 'dart:async';

import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_action.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_selectors.dart';
import 'package:redux/redux.dart';

class ScheduleMiddleware extends MiddlewareClass<AppState> {
  final StatsApi api;
  bool refreshInitialized = false;
  ScheduleMiddleware(this.api);

  @override
  Future<Null> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is ScheduleEntered) {
      if (store.state.scheduleState.selectedDate == null) {
        next(ScheduleDateChangedAction(DateTime(2020, 2, 1)));
      }
      await _getSchedule(store, next);
    } else if (action is GetCurrentDateScheduleIfNotLoadedAction) {
      if (store.state.scheduleState.selectedDate == null) {
        next(ScheduleDateChangedAction(DateTime(2020, 2, 1)));
      }
      await _getSchedule(store, next);
    } else {
      if (action is ScheduleDateChangedAction) {
        await _getSchedule(store, next);
      } else if (action is RefreshScheduleAction) {
        await _downloadSchedule(store, next);
        if(store.state.scheduleState.loadingStatus == LoadingStatus.SUCCESS)
          store.dispatch(ShowSnackBar(SnackBarNotification('Schedule refreshed ${DateTime.now()}', )));
      }
    }
  }

  Future<Null> _getSchedule(Store<AppState> store, NextDispatcher next) async {
    if (store.state.scheduleState.loadingStatus != LoadingStatus.LOADING) {
      next(RequestingScheduleAction());
      String sDate = selectedDateSelector(store.state);
      if (store.state.scheduleState.schedules.containsKey(sDate)) {
        checkIfScheduleLive(scheduleSelector(store.state), store);
        next(ScheduleAlreadyDownloadedAction());
      } else {
        await _downloadSchedule(store, next);
      }
    }
  }

  Future<Null> _downloadSchedule(
      Store<AppState> store, NextDispatcher next) async {
    String sDate = selectedDateSelector(store.state);
    try {
      final Schedule schedule = await api.fetchSchedule(sDate);
      checkIfScheduleLive(schedule, store);
      next(ReceivedScheduleAction(sDate, schedule));
    } catch (e) {
      print(e.toString());
      next(ErrorScheduleAction(Exception(e.toString())));
    }
  }

  void checkIfScheduleLive(Schedule schedule, Store<AppState> store) {
    if (schedule.isGameLive && store.state.scheduleState.inSchedule && !refreshInitialized) {
      refreshInitialized = true;
      Future.delayed(Duration(seconds: 30), () {
        refreshInitialized = false;
        if(store.state.scheduleState.inSchedule) {
          print('schedule refresh called ${DateTime.now()}');
          store.dispatch(RefreshScheduleAction());
        }
      });
    }
  }
}

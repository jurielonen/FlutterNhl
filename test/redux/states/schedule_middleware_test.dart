import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_action.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_middleware.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';

import '../../mocks.dart';
import '../models/schedule_unit_test.dart';

void main(){
  group('ScheduleMiddleware', (){
    final actionLog = <dynamic>[];
    final dateLog = <DateTime>[];
    final scheduleLog = <Schedule>[];
    final errorLog = <String>[];
    final Function(dynamic) next = (dynamic action) {
      if (action is ScheduleDateChangedAction) {
        dateLog.add(action.date);
      } else if(action is ReceivedScheduleAction){
        scheduleLog.add(action.schedule);
      } else if(action is ErrorScheduleAction){
        errorLog.add(action.error);
      }
      actionLog.add(action);
    };

    AppState _mockState(ScheduleState copy){
      return AppState.initial().copyWith(scheduleState: ScheduleState.initial().copyWith(selectedDate: copy.selectedDate, schedules: copy.schedules));
    }

    ScheduleMiddleware mockMiddleware;
    MockStatsApi mockStatsApi;
    MockStore mockStore;

    setUp((){
      mockStatsApi = MockStatsApi();
      mockStore = MockStore();
      mockMiddleware = ScheduleMiddleware(mockStatsApi);
    });

    tearDown((){
      actionLog.clear();
    });

    test('InitAction Success', () async {
      when(mockStore.state).thenReturn(_mockState(ScheduleState.initial().copyWith(selectedDate: DateTime(2020,2,1))));
      when(mockStatsApi.fetchSchedule('2020-02-01')).thenAnswer((_) => Future.value(scheduleFinal));
      await mockMiddleware.call(mockStore, InitAction(), next);
      expect(actionLog.length, 3);
      expect(actionLog[0].runtimeType, ScheduleDateChangedAction);
      expect(actionLog[1].runtimeType, RequestingScheduleAction);
      expect(actionLog[2].runtimeType, ReceivedScheduleAction);
      verify(mockStatsApi.fetchSchedule(any));
    });

    test('InitAction Fail', () async {
      when(mockStore.state).thenReturn(_mockState(ScheduleState.initial().copyWith(selectedDate: DateTime(2020,2,1))));
      when(mockStatsApi.fetchSchedule('2020-02-01')).thenThrow((_) => throw Exception('Error'));
      await mockMiddleware.call(mockStore, InitAction(), next);
      expect(actionLog.length, 3);
      expect(actionLog[0].runtimeType, ScheduleDateChangedAction);
      expect(actionLog[1].runtimeType, RequestingScheduleAction);
      expect(actionLog[2].runtimeType, ErrorScheduleAction);
      verify(mockStatsApi.fetchSchedule(any));
    });

    test('GetCurrentDateScheduleIfNotLoadedAction', () async {
      when(mockStore.state).thenReturn(_mockState(ScheduleState.initial().copyWith(selectedDate: DateTime(2020,2,1), schedules: {'2020-02-01': Schedule(gameCount: 0, date: DateTime(2020))}.toImmutableMap())));

      await mockMiddleware.call(mockStore, GetCurrentDateScheduleIfNotLoadedAction(), next);
      expect(actionLog.length, 2);
      expect(actionLog[0].runtimeType, RequestingScheduleAction);
      expect(actionLog[1].runtimeType, ScheduleAlreadyDownloadedAction);
    });

  });
}
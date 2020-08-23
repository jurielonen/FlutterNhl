import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';

class ScheduleDateChangedAction extends ScheduleAction {
  final DateTime date;
  ScheduleDateChangedAction(this.date);
}

class RequestingScheduleAction extends ScheduleAction {}

class GetCurrentDateScheduleIfNotLoadedAction extends ScheduleAction {}

class ScheduleAlreadyDownloadedAction extends ScheduleAction {}

class ReceivedScheduleAction extends ScheduleAction {
  final String date;
  final Schedule schedule;
  ReceivedScheduleAction(this.date, this.schedule);
}

class ErrorScheduleAction extends ScheduleAction {
  final Exception error;
  ErrorScheduleAction(this.error);
}

class RefreshScheduleAction extends ScheduleAction {}

class ScheduleExited extends ScheduleAction {}

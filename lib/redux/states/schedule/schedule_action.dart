import 'package:FlutterNhl/redux/models/schedule.dart';

class ScheduleDateChangedAction {
  final DateTime date;
  ScheduleDateChangedAction(this.date);
}

class RequestingScheduleAction {}

class GetCurrentDateScheduleIfNotLoadedAction {}

class ScheduleAlreadyDownloadedAction {}

class ReceivedScheduleAction {
  final String date;
  final Schedule schedule;
  ReceivedScheduleAction(this.date, this.schedule);
}

class ErrorScheduleAction {
  final String error;
  ErrorScheduleAction(this.error);
}

class RefreshScheduleAction {}
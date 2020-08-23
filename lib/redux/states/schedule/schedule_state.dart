import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:meta/meta.dart';
import 'package:kt_dart/collection.dart';

@immutable
class ScheduleState {
  ScheduleState(
      {@required this.loadingStatus,
      @required this.selectedDate,
      @required this.schedules,
      @required this.error,
      @required this.inSchedule});

  final LoadingStatus loadingStatus;
  final DateTime selectedDate;
  final KtMap<String, Schedule> schedules;
  final Exception error;
  final bool inSchedule;

  factory ScheduleState.initial() {
    return ScheduleState(
      loadingStatus: LoadingStatus.IDLE,
      selectedDate: DateTime.now(),
      schedules: emptyMap(),
      error: null,
      inSchedule: false,
    );
  }

  ScheduleState copyWith(
      {LoadingStatus loadingStatus,
      DateTime selectedDate,
      KtMap<String, Schedule> schedules,
      Exception error,
      bool inSchedule}) {
    return ScheduleState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      selectedDate: selectedDate ?? this.selectedDate,
      schedules: schedules ?? this.schedules,
      error: error ?? this.error,
      inSchedule: inSchedule ?? this.inSchedule,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          selectedDate == other.selectedDate &&
          schedules == other.schedules &&
          error == other.error &&
          inSchedule == other.inSchedule;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      selectedDate.hashCode ^
      schedules.hashCode ^
      error.hashCode ^
      inSchedule.hashCode;
}

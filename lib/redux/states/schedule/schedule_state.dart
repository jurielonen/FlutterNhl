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
      @required this.errorMsg,
      @required this.inSchedule});

  final LoadingStatus loadingStatus;
  final DateTime selectedDate;
  final KtMap<String, Schedule> schedules;
  final String errorMsg;
  final bool inSchedule;

  factory ScheduleState.initial() {
    return ScheduleState(
        loadingStatus: LoadingStatus.IDLE,
        selectedDate: DateTime.now(),
        schedules: emptyMap(),
        errorMsg: '',
        inSchedule: false,
    );
  }

  ScheduleState copyWith(
      {LoadingStatus loadingStatus,
      DateTime selectedDate,
      KtMap<String, Schedule> schedules,
      String errorMsg, bool inSchedule}) {
    return ScheduleState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        selectedDate: selectedDate ?? this.selectedDate,
        schedules: schedules ?? this.schedules,
        errorMsg: errorMsg ?? this.errorMsg,
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
          errorMsg == other.errorMsg &&
          inSchedule == other.inSchedule;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      selectedDate.hashCode ^
      schedules.hashCode ^
      errorMsg.hashCode ^
      inSchedule.hashCode;
}

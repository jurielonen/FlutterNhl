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
      @required this.errorMsg});

  final LoadingStatus loadingStatus;
  final DateTime selectedDate;
  final KtMap<String, Schedule> schedules;
  final String errorMsg;

  factory ScheduleState.initial() {
    return ScheduleState(
        loadingStatus: LoadingStatus.IDLE,
        selectedDate: null,
        schedules: emptyMap(),
        errorMsg: '');
  }

  ScheduleState copyWith({
      LoadingStatus loadingStatus,
      DateTime selectedDate,
      KtMap<String, Schedule> schedules,
      String errorMsg}) {
    return ScheduleState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        selectedDate: selectedDate ?? this.selectedDate,
        schedules: schedules ?? this.schedules,
        errorMsg: errorMsg ?? this.errorMsg);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleState &&
        runtimeType == other.runtimeType &&
        loadingStatus == other.loadingStatus &&
        selectedDate == other.selectedDate &&
        schedules == other.schedules &&
        errorMsg == other.errorMsg;

  @override
  int get hashCode =>
    loadingStatus.hashCode ^
    selectedDate.hashCode ^
    schedules.hashCode ^
    errorMsg.hashCode;
}

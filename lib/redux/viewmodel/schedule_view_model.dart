import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_action.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_selectors.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

class ScheduleViewModel {
  final LoadingStatus loadingStatus;
  final DateTime selectedDate;
  final Schedule selectedSchedule;
  final Exception error;
  final bool inSchedule;
  final Function(DateTime) changeSelectedDate;
  final Function refreshSchedule;

  ScheduleViewModel({
    @required this.loadingStatus,
    @required this.selectedDate,
    @required this.selectedSchedule,
    @required this.error,
    @required this.inSchedule,
    @required this.changeSelectedDate,
    @required this.refreshSchedule
  });

  static ScheduleViewModel fromStore(Store<AppState> store){
    return ScheduleViewModel(
      loadingStatus: store.state.scheduleState.loadingStatus,
      selectedDate: store.state.scheduleState.selectedDate,
      selectedSchedule: scheduleSelector(store.state),
      error: store.state.scheduleState.error,
      inSchedule: store.state.scheduleState.inSchedule,
      changeSelectedDate: (DateTime newDate) => store.dispatch(ScheduleDateChangedAction(newDate)),
      refreshSchedule: () => store.dispatch(RefreshScheduleAction())
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ScheduleViewModel &&
              runtimeType == other.runtimeType &&
              loadingStatus == other.loadingStatus &&
              selectedDate == other.selectedDate &&
              selectedSchedule == other.selectedSchedule &&
              error == other.error;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      selectedDate.hashCode ^
      selectedSchedule.hashCode ^
      error.hashCode;
}
import 'package:FlutterNhl/redux/states/schedule/schedule_state.dart';
import 'package:meta/meta.dart';


@immutable
class AppState {
  final ScheduleState scheduleState;

  AppState({
    @required this.scheduleState,
  });

  factory AppState.initial() {
    return AppState(
      scheduleState: ScheduleState.initial(),
    );
  }

  AppState copyWith({
    ScheduleState scheduleState
  }) {
    return AppState(
      scheduleState: scheduleState ?? this.scheduleState,
    );
  }
}

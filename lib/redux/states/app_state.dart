import 'package:FlutterNhl/redux/states/schedule/schedule_state.dart';
import 'package:FlutterNhl/redux/states/stats/stats_state.dart';
import 'package:meta/meta.dart';

import '../enums.dart';


@immutable
class AppState {
  final ScheduleState scheduleState;
  final StatsState statsState;

  AppState({
    @required this.scheduleState,
    @required this.statsState,
  });

  factory AppState.initial() {
    return AppState(
      scheduleState: ScheduleState.initial(),
      statsState: StatsState.initial(),
    );
  }

  AppState copyWith({
    ScheduleState scheduleState,
    StatsState statsState
  }) {
    return AppState(
      scheduleState: scheduleState ?? this.scheduleState,
      statsState: statsState ?? this.statsState,
    );
  }
}

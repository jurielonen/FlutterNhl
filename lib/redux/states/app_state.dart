import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_state.dart';
import 'package:FlutterNhl/redux/states/stats/stats_state.dart';
import 'package:meta/meta.dart';

import '../enums.dart';

@immutable
class AppState {
  final ScheduleState scheduleState;
  final StatsState statsState;
  final PlayerState playerState;
  final Config config;

  AppState({
    @required this.scheduleState,
    @required this.statsState,
    @required this.playerState,
    @required this.config,
  });

  factory AppState.initial() {
    return AppState(
      scheduleState: ScheduleState.initial(),
      statsState: StatsState.initial(),
      playerState: PlayerState.initial(),
      config: Config.initial(),
    );
  }

  AppState copyWith({
    ScheduleState scheduleState,
    StatsState statsState,
    PlayerState playerState,
    Config config,
  }) {
    return AppState(
      scheduleState: scheduleState ?? this.scheduleState,
      statsState: statsState ?? this.statsState,
      playerState: playerState ?? this.playerState,
      config: config ?? this.config,
    );
  }
}

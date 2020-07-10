import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_state.dart';
import 'package:FlutterNhl/redux/states/stats/stats_state.dart';
import 'package:FlutterNhl/redux/states/team/team_state.dart';
import 'package:meta/meta.dart';

import '../enums.dart';

@immutable
class AppState {
  final ScheduleState scheduleState;
  final StatsState statsState;
  final PlayerState playerState;
  final TeamState teamState;
  final Config config;

  AppState({
    @required this.scheduleState,
    @required this.statsState,
    @required this.playerState,
    @required this.teamState,
    @required this.config,
  });

  factory AppState.initial() {
    return AppState(
      scheduleState: ScheduleState.initial(),
      statsState: StatsState.initial(),
      playerState: PlayerState.initial(),
      teamState: TeamState.initial(),
      config: Config(),
    );
  }

  AppState copyWith({
    ScheduleState scheduleState,
    StatsState statsState,
    PlayerState playerState,
    TeamState teamState,
    Config config,
  }) {
    return AppState(
      scheduleState: scheduleState ?? this.scheduleState,
      statsState: statsState ?? this.statsState,
      playerState: playerState ?? this.playerState,
      teamState: teamState ?? this.teamState,
      config: config ?? this.config,
    );
  }
}

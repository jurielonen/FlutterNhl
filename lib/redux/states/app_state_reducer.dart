import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/player/player_reducer.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_reducer.dart';
import 'package:FlutterNhl/redux/states/stats/stats_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is ConfigReceived) {
    return state.copyWith(
        scheduleState: state.scheduleState,
        statsState: statsReducer(state.statsState, action),
        playerState: state.playerState,
        config: action.config);
  } else if (action is ScheduleAction) {
    return state.copyWith(
      scheduleState: scheduleReducer(state.scheduleState, action),
      statsState: state.statsState,
      playerState: state.playerState,
    );
  } else if (action is StatsAction) {
    return state.copyWith(
      scheduleState: state.scheduleState,
      statsState: statsReducer(state.statsState, action),
      playerState: state.playerState,
    );
  } else if (action is PlayerAction) {
    return state.copyWith(
        scheduleState: state.scheduleState,
        statsState: state.statsState,
        playerState: playerReducer(state.playerState, action));
  }
  return new AppState(
    scheduleState: scheduleReducer(state.scheduleState, action),
    statsState: statsReducer(state.statsState, action),
    playerState: playerReducer(state.playerState, action),
    config: state.config,
  );
}

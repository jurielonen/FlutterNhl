import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/stats/stats_action.dart';
import 'package:FlutterNhl/redux/states/stats/stats_state.dart';

StatsState statsReducer(StatsState state, dynamic action) {
  print('STATSSTATE: ${action.runtimeType}');
  if (action is StatsParametersChangedAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.IDLE, selectedStat: action.param.copyWith(start: 0));
  } else if (action is StatsParamTypeChangedAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.IDLE,
        selectedStat: StatParameters.create(action.type),
    );
  } else if (action is StatsRequestingAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if (action is StatsNextAction) {
    return state.copyWith(selectedStat: state.selectedParams.nextStats());
  } else if (action is StatsPreviousAction) {
    return state.copyWith(selectedStat: state.selectedParams.previousStats());
  } else if (action is StatsReceived) {
    return state.copyWith(
        loadingStatus: LoadingStatus.SUCCESS, downloadedStats: action.stats);
  } else if (action is StatsErrorAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.ERROR, errorMsg: action.errorMsg);
  } else if (action is ConfigReceived) {
    String firstKey = Config().playerReportData.keys.first;
    ParamType paramType = ParamType(StatType.PLAYER, firstKey,
        Config().playerReportData[firstKey].season.getSortKeys());
    return state.copyWith(selectedStat: StatParameters.create(paramType));
  }

  return state;
}

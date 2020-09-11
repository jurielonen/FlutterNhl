import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/stats/stats_action.dart';
import 'package:FlutterNhl/redux/states/stats/stats_state.dart';

StatsState statsReducer(StatsState state, dynamic action) {
  if (action is StatsParametersChangedAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.IDLE, selectedParams: action.param.copyWith(start: 0));
  } else if (action is StatsParamTypeChangedAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.IDLE,
      selectedParams: state.selectedParams.copyWith(paramType: action.type, start: 0),// StatParameters(action.type),
    );
  } else if (action is StatsRequestingAction) {
    return state.copyWith(loadingStatus: LoadingStatus.LOADING);
  } else if (action is StatsNextAction) {
    return state.copyWith(loadingStatus: LoadingStatus.IDLE, selectedParams: state.selectedParams.nextStats());
  } else if (action is StatsPreviousAction) {
    return state.copyWith(loadingStatus: LoadingStatus.IDLE, selectedParams: state.selectedParams.previousStats());
  } else if (action is StatsReceived) {
    if(state.selectedParams.paramType.type == action.stats.type) {
      return state.copyWith(
          loadingStatus: LoadingStatus.SUCCESS,
          downloadedStats: action.stats,
          selectedParams: state.selectedParams.copyWith(total: action.total));
    } else {
      return state.copyWith(loadingStatus: LoadingStatus.LOADING);
    }
  } else if (action is StatsErrorAction) {
    return state.copyWith(
        loadingStatus: LoadingStatus.ERROR, error: action.error);
  } else if (action is ConfigReceived) {
    String firstKey = Config().playerReportData.keys.first;
    ParamType paramType = ParamType(StatType.PLAYER, firstKey,
        Config().playerReportData[firstKey].season.getSortKeys());
    return state.copyWith(selectedParams: StatParameters.create(paramType));
  }

  return state;
}

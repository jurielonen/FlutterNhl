import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_selectors.dart';
import 'package:reselect/reselect.dart';

final selectedParamType =
    (AppState state) => state.statsState.selectedParams.paramType;

final filterTypeSelector =
    createSelector2(configSelector, selectedParamType, _getFilterList);

List<String> _getFilterList(Config config, ParamType paramType) {
  return config.getFilterItems(paramType.type, paramType.stat);
}

final statTypesSelector =
    createSelector2(configSelector, selectedParamType, _getStatTypes);

List<String> _getStatTypes(Config config, ParamType paramType) {
  return config.getStatTypes(paramType.type);
}

final selectedStatTypeSelector = createSelector1(selectedParamType, _getStatType);

StatType _getStatType(ParamType paramType){
  return paramType.type;
}

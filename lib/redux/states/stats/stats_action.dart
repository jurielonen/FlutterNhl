import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/stats/stats_table_source.dart';

class StatsParamTypeChangedAction extends StatsAction {
  final ParamType type;
  StatsParamTypeChangedAction(this.type);
}

class StatsParametersChangedAction extends StatsAction {
  final StatParameters param;
  StatsParametersChangedAction(this.param);
}

class StatsRequestingAction extends StatsAction {}

class StatsNextAction extends StatsAction {}

class StatsPreviousAction extends StatsAction {}

class StatsErrorAction extends StatsAction {
  final Exception error;
  StatsErrorAction(this.error);
}

class StatsReceived extends StatsAction {
  final StatTableSource stats;
  final int total;
  StatsReceived(this.stats, this.total);
}

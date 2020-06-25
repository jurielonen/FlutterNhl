import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/states/stats/stats_table_source.dart';

class StatsConfigReceived {
  final Config config;
  StatsConfigReceived(this.config);
}

class StatsParamTypeChangedAction {
  final ParamType type;
  StatsParamTypeChangedAction(this.type);
}

class StatsParametersChangedAction {
  final StatParameters param;
  StatsParametersChangedAction(this.param);
}

class StatsRequestingAction {}

class StatsNextAction {}

class StatsPreviousAction {}

class StatsErrorAction {
  final String errorMsg;
  StatsErrorAction(this.errorMsg);
}

class StatsReceived {
  final StatsTableSource stats;
  StatsReceived(this.stats);
}

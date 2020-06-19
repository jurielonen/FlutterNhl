import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_middleware.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_reducer.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';

Store<AppState> createStore(Client client){
  final StatsApi statsApi = StatsApi(client);

  return Store(
    appReducer,
    initialState: AppState.initial(),
    distinct: true,
    middleware: [
      ScheduleMiddleware(statsApi)
    ]
  );
}

AppState appReducer(AppState state, dynamic action){
  return new AppState(
      scheduleState: scheduleReducer(state.scheduleState, action)
  );
}
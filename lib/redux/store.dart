import 'package:FlutterNhl/redux/api/nhl_api.dart';
import 'package:FlutterNhl/redux/api/records_api.dart';
import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_middleware.dart';
import 'package:FlutterNhl/redux/states/app_state_reducer.dart';
import 'package:FlutterNhl/redux/states/award/award_middleware.dart';
import 'package:FlutterNhl/redux/states/draft/draft_middleware.dart';
import 'package:FlutterNhl/redux/states/player/player_middleware.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_middleware.dart';
import 'package:FlutterNhl/redux/states/stats/stats_middleware.dart';
import 'package:FlutterNhl/redux/states/team/team_middleware.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';

Store<AppState> createStore(Client client) {
  final StatsApi statsApi = StatsApi(client);
  final NHLApi nhlApi = NHLApi(client);
  final RecordsApi recordsApi = RecordsApi(client);

  return Store(appReducer,
      initialState: AppState.initial(),
      distinct: true,
      middleware: [
        AppStateMiddleware(statsApi),
        ScheduleMiddleware(statsApi),
        StatsMiddleware(nhlApi),
        PlayerMiddleware(statsApi, nhlApi),
        TeamMiddleware(statsApi, nhlApi),
        DraftMiddleware(statsApi),
        AwardMiddleware(recordsApi),
      ]);
}

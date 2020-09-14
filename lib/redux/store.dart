import 'package:FlutterNhl/redux/api/nhl_api.dart';
import 'package:FlutterNhl/redux/api/records_api.dart';
import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/api/suggest_api.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_middleware.dart';
import 'package:FlutterNhl/redux/states/app_state_reducer.dart';
import 'package:FlutterNhl/redux/states/award/award_middleware.dart';
import 'package:FlutterNhl/redux/states/draft/draft_middleware.dart';
import 'package:FlutterNhl/redux/states/firebase/firebase_middleware.dart';
import 'package:FlutterNhl/redux/states/game/game_middleware.dart';
import 'package:FlutterNhl/redux/states/player/player_middleware.dart';
import 'package:FlutterNhl/redux/states/playoffs/playoffs_middleware.dart';
import 'package:FlutterNhl/redux/states/playoffs/series/series_middleware.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_middleware.dart';
import 'package:FlutterNhl/redux/states/search/search_middleware.dart';
import 'package:FlutterNhl/redux/states/standings/standings_middleware.dart';
import 'package:FlutterNhl/redux/states/stats/stats_middleware.dart';
import 'package:FlutterNhl/redux/states/team/team_middleware.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';

Store<AppState> createStore(Client client) {
  final StatsApi statsApi = StatsApi(client);
  final NHLApi nhlApi = NHLApi(client);
  final RecordsApi recordsApi = RecordsApi(client);
  final SuggestApi suggestApi = SuggestApi(client);

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
        GameMiddleware(statsApi),
        StandingsMiddleware(statsApi),
        SearchMiddleware(suggestApi),
        PlayoffsMiddleware(statsApi),
        FirebaseMiddleware(),
        SeriesMiddleware(statsApi),
        LoggingMiddleware.printer(),
      ]);
}

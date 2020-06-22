import 'package:FlutterNhl/redux/api/nhl_api.dart';
import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';


class MockStatsApi extends Mock implements StatsApi {}
class MockNHLApi extends Mock implements NHLApi {}
class MockStore extends Mock implements Store<AppState> {}
import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/states/award/award_state.dart';
import 'package:FlutterNhl/redux/states/draft/draft_state.dart';
import 'package:FlutterNhl/redux/states/firebase/firebase_state.dart';
import 'package:FlutterNhl/redux/states/game/game_state.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/playoffs/playoffs_state.dart';
import 'package:FlutterNhl/redux/states/playoffs/series/series_state.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_state.dart';
import 'package:FlutterNhl/redux/states/search/search_state.dart';
import 'package:FlutterNhl/redux/states/settings/settings_state.dart';
import 'package:FlutterNhl/redux/states/standings/standings_state.dart';
import 'package:FlutterNhl/redux/states/starred/starred_state.dart';
import 'package:FlutterNhl/redux/states/stats/stats_state.dart';
import 'package:FlutterNhl/redux/states/team/team_state.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final SnackBarNotification showSnackBar;
  final LoadingStatus loadingStatus;
  final Exception error;
  final DrawerPages currentPage;
  final FirebaseState firebaseState;
  final ScheduleState scheduleState;
  final StatsState statsState;
  final PlayerState playerState;
  final TeamState teamState;
  final DraftState draftState;
  final AwardState awardState;
  final GameState gameState;
  final StandingsState standingsState;
  final SearchState searchState;
  final PlayoffsState playoffsState;
  final SeriesState seriesState;
  final StarredState starredState;
  final SettingsState settingsState;
  final Config config;

  AppState({
    @required this.showSnackBar,
    @required this.loadingStatus,
    @required this.error,
    @required this.currentPage,
    @required this.firebaseState,
    @required this.scheduleState,
    @required this.statsState,
    @required this.playerState,
    @required this.teamState,
    @required this.draftState,
    @required this.awardState,
    @required this.gameState,
    @required this.config,
    @required this.searchState,
    @required this.standingsState,
    @required this.playoffsState,
    @required this.starredState,
    @required this.seriesState,
    @required this.settingsState,
  });

  factory AppState.initial() {
    return AppState(
      showSnackBar: null,
      loadingStatus: LoadingStatus.IDLE,
      error: null,
      currentPage: DrawerPages.SCHEDULE,
      firebaseState: FirebaseState.initial(),
      scheduleState: ScheduleState.initial(),
      statsState: StatsState.initial(),
      playerState: PlayerState.initial(),
      teamState: TeamState.initial(),
      draftState: DraftState.initial(),
      awardState: AwardState.initial(),
      gameState: GameState.initial(),
      standingsState: StandingsState.initial(),
      searchState: SearchState.initial(),
      playoffsState: PlayoffsState.initial(),
      seriesState: SeriesState.initial(),
      starredState: StarredState.initial(),
      settingsState: SettingsState.initial(),
      config: Config(),
    );
  }

  AppState copyWith({
    SnackBarNotification showSnackBar,
    LoadingStatus loadingStatus,
    Exception error,
    DrawerPages currentPage,
    FirebaseState firebaseState,
    ScheduleState scheduleState,
    StatsState statsState,
    PlayerState playerState,
    TeamState teamState,
    DraftState draftState,
    AwardState awardState,
    GameState gameState,
    StandingsState standingsState,
    SearchState searchState,
    PlayoffsState playoffsState,
    SeriesState seriesState,
    StarredState starredState,
    SettingsState settingsState,
    Config config,
  }) {
    return AppState(
      showSnackBar: showSnackBar ?? this.showSnackBar,
      loadingStatus: loadingStatus ?? this.loadingStatus,
      error: error ?? this.error,
      currentPage: currentPage ?? this.currentPage,
      firebaseState: firebaseState ?? this.firebaseState,
      scheduleState: scheduleState ?? this.scheduleState,
      statsState: statsState ?? this.statsState,
      playerState: playerState ?? this.playerState,
      teamState: teamState ?? this.teamState,
      draftState: draftState ?? this.draftState,
      awardState: awardState ?? this.awardState,
      gameState: gameState ?? this.gameState,
      standingsState: standingsState ?? this.standingsState,
      searchState: searchState ?? this.searchState,
      playoffsState: playoffsState ?? this.playoffsState,
      seriesState: seriesState ?? this.seriesState,
      starredState: starredState ?? this.starredState,
      settingsState: settingsState ?? this.settingsState,
      config: config ?? this.config,
    );
  }
}

class SnackBarNotification {
  final String msg;
  final Duration duration = Duration(seconds: 4);
  bool show = true;

  SnackBarNotification(this.msg);
}

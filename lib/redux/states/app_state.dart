import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/states/award/award_state.dart';
import 'package:FlutterNhl/redux/states/draft/draft_state.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_state.dart';
import 'package:FlutterNhl/redux/states/stats/stats_state.dart';
import 'package:FlutterNhl/redux/states/team/team_state.dart';
import 'package:meta/meta.dart';

import '../enums.dart';

@immutable
class AppState {
  final LoadingStatus loadingStatus;
  final String errorMsg;
  final DrawerPages currentPage;
  final ScheduleState scheduleState;
  final StatsState statsState;
  final PlayerState playerState;
  final TeamState teamState;
  final DraftState draftState;
  final AwardState awardState;
  final Config config;

  AppState({
    @required this.loadingStatus,
    @required this.errorMsg,
    @required this.currentPage,
    @required this.scheduleState,
    @required this.statsState,
    @required this.playerState,
    @required this.teamState,
    @required this.draftState,
    @required this.awardState,
    @required this.config,
  });

  factory AppState.initial() {
    return AppState(
      loadingStatus: LoadingStatus.IDLE,
      errorMsg: '',
      currentPage: DrawerPages.AWARDS,
      scheduleState: ScheduleState.initial(),
      statsState: StatsState.initial(),
      playerState: PlayerState.initial(),
      teamState: TeamState.initial(),
      draftState: DraftState.initial(),
      awardState: AwardState.initial(),
      config: Config(),
    );
  }

  AppState copyWith({
    LoadingStatus loadingStatus,
    String errorMsg,
    DrawerPages currentPage,
    ScheduleState scheduleState,
    StatsState statsState,
    PlayerState playerState,
    TeamState teamState,
    DraftState draftState,
    AwardState awardState,
    Config config,
  }) {
    return AppState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      errorMsg: errorMsg ?? this.errorMsg,
      currentPage: currentPage ?? this.currentPage,
      scheduleState: scheduleState ?? this.scheduleState,
      statsState: statsState ?? this.statsState,
      playerState: playerState ?? this.playerState,
      teamState: teamState ?? this.teamState,
      draftState: draftState ?? this.draftState,
      awardState: awardState ?? this.awardState,
      config: config ?? this.config,
    );
  }
}

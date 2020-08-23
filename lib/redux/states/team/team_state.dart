import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:meta/meta.dart';
import 'package:kt_dart/collection.dart';

@immutable
class TeamState {
  TeamState(
      {@required this.loadingStatus,
      @required this.teamId,
      @required this.selectedStat,
      @required this.selectedParams,
      @required this.teams,
      @required this.error});

  final LoadingStatus loadingStatus;
  final int teamId;
  final String selectedStat;
  final GameLogParams selectedParams;
  final KtMap<int, TeamPage> teams;
  final Exception error;

  factory TeamState.initial() {
    return TeamState(
        loadingStatus: LoadingStatus.IDLE,
        teamId: 0,
        selectedStat: 'summary',
        selectedParams: null,
        teams: emptyMap(),
        error: null);
  }

  TeamState copyWith(
      {LoadingStatus loadingStatus,
      int teamId,
      String selectedStat,
      GameLogParams selectedParams,
      KtMap<int, TeamPage> teams,
      Exception error}) {
    return TeamState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        teamId: teamId ?? this.teamId,
        selectedStat: selectedStat ?? this.selectedStat,
        selectedParams: selectedParams ?? this.selectedParams,
        teams: teams ?? this.teams,
        error: error ?? this.error);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          teamId == other.teamId &&
          selectedStat == other.selectedStat &&
          selectedParams == other.selectedParams &&
          teams == other.teams &&
          error == other.error;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      teamId.hashCode ^
      selectedStat.hashCode ^
      selectedParams.hashCode ^
      teams.hashCode ^
      error.hashCode;
}

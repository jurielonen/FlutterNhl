import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:meta/meta.dart';
import 'package:kt_dart/collection.dart';

@immutable
class TeamState {
  TeamState(
      {@required this.loadingStatus,
      @required this.teamId,
      @required this.selectedStat,
      @required this.selectedDate,
      @required this.teams,
      @required this.errorMsg});

  final LoadingStatus loadingStatus;
  final int teamId;
  final String selectedStat;
  final String selectedDate;
  final KtMap<int, TeamPage> teams;
  final String errorMsg;

  factory TeamState.initial() {
    return TeamState(
        loadingStatus: LoadingStatus.IDLE,
        teamId: 0,
        selectedStat: 'summary',
        selectedDate: '',
        teams: emptyMap(),
        errorMsg: '');
  }

  TeamState copyWith(
      {LoadingStatus loadingStatus,
      int teamId,
      String selectedStat,
      String selectedDate,
      KtMap<int, TeamPage> teams,
      String errorMsg}) {
    return TeamState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        teamId: teamId ?? this.teamId,
        selectedStat: selectedStat ?? this.selectedStat,
        selectedDate: selectedDate ?? this.selectedDate,
        teams: teams ?? this.teams,
        errorMsg: errorMsg ?? this.errorMsg);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          teamId == other.teamId &&
          selectedStat == other.selectedStat &&
          selectedDate == other.selectedDate &&
          teams == other.teams &&
          errorMsg == other.errorMsg;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      teamId.hashCode ^
      selectedStat.hashCode ^
      selectedDate.hashCode ^
      teams.hashCode ^
      errorMsg.hashCode;
}

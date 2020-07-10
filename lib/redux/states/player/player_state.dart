import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:meta/meta.dart';
import 'package:kt_dart/collection.dart';

@immutable
class PlayerState {
  PlayerState(
      {@required this.loadingStatus,
      @required this.playerId,
      @required this.playerType,
      @required this.selectedStat,
      @required this.selectedYear,
      @required this.players,
      @required this.errorMsg});

  final LoadingStatus loadingStatus;
  final int playerId;
  final StatType playerType;
  final String selectedStat;
  final String selectedYear;
  final KtMap<int, PlayerPage> players;
  final String errorMsg;

  factory PlayerState.initial() {
    return PlayerState(
      loadingStatus: LoadingStatus.IDLE,
      playerId: 0,

      ///TODO: Unknown enum to StatType
      playerType: StatType.PLAYER,
      selectedStat: 'summary',
      selectedYear: '20192020',
      players: emptyMap(),
      errorMsg: '',
    );
  }

  PlayerState copyWith(
      {LoadingStatus loadingStatus,
      int playerId,
      StatType playerType,
      String selectedStat,
      String selectedYear,
      KtMap<int, PlayerPage> players,
      String errorMsg}) {
    return PlayerState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        playerId: playerId ?? this.playerId,
        playerType: playerType ?? this.playerType,
        selectedStat: selectedStat ?? this.selectedStat,
        selectedYear: selectedYear ?? this.selectedYear,
        players: players ?? this.players,
        errorMsg: errorMsg ?? this.errorMsg);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayerState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          playerId == other.playerId &&
          playerType == other.playerType &&
          selectedStat == other.selectedStat &&
          selectedYear == other.selectedYear &&
          players == other.players &&
          errorMsg == other.errorMsg;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      playerId.hashCode ^
      playerType.hashCode ^
      selectedStat.hashCode ^
      selectedYear.hashCode ^
      players.hashCode ^
      errorMsg.hashCode;
}

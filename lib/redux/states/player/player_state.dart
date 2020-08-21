import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:meta/meta.dart';
import 'package:kt_dart/collection.dart';

class GameLogParams {
  String year;
  bool gameType;

  GameLogParams(this.year, this.gameType);

  GameLogParams copyWith({ String year, bool gameType}){
    return GameLogParams(year ?? this.year, gameType ?? this.gameType);
  }
}

@immutable
class PlayerState {
  PlayerState(
      {@required this.loadingStatus,
      @required this.playerId,
      @required this.playerType,
      @required this.selectedStat,
      @required this.gameLogParams,
      @required this.players,
      @required this.errorMsg,});

  final LoadingStatus loadingStatus;
  final int playerId;
  final StatType playerType;
  final String selectedStat;
  final GameLogParams gameLogParams;
  final KtMap<int, PlayerPage> players;
  final String errorMsg;

  factory PlayerState.initial() {
    return PlayerState(
      loadingStatus: LoadingStatus.IDLE,
      playerId: 0,

      ///TODO: Unknown enum to StatType
      playerType: StatType.PLAYER,
      selectedStat: 'summary',
      gameLogParams: null,
      players: emptyMap(),
      errorMsg: '',
    );
  }

  PlayerState copyWith(
      {LoadingStatus loadingStatus,
      int playerId,
      StatType playerType,
      String selectedStat,
      GameLogParams gameLogParams,
      KtMap<int, PlayerPage> players,
      String errorMsg}) {
    return PlayerState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        playerId: playerId ?? this.playerId,
        playerType: playerType ?? this.playerType,
        selectedStat: selectedStat ?? this.selectedStat,
        gameLogParams: gameLogParams ?? this.gameLogParams,
        players: players ?? this.players,
        errorMsg: errorMsg ?? this.errorMsg,
        );
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
          gameLogParams == other.gameLogParams &&
          players == other.players &&
          errorMsg == other.errorMsg;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      playerId.hashCode ^
      playerType.hashCode ^
      selectedStat.hashCode ^
      gameLogParams.hashCode ^
      players.hashCode ^
      errorMsg.hashCode;
}

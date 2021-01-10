import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:meta/meta.dart';
import 'package:kt_dart/collection.dart';

class PageParam {
  final bool gameType;
  static const _regularString = 'Regular';
  static const _playoffsString = 'Playoffs';

  static const List<String> gameTypes = [_regularString, _playoffsString];

  PageParam(this.gameType);

  String get gameTypeString => gameType ? _regularString : _playoffsString;

  static bool getGameTypeBoolean(String type) =>
      type == _playoffsString ? false : true;
}

class PageStatParams extends PageParam {
  String stat;

  PageStatParams(this.stat, bool gameType) : super(gameType);

  PageStatParams copyWith({String stat, bool gameType}) {
    return PageStatParams(stat ?? this.stat, gameType ?? this.gameType);
  }

  PageStatParams.clone(PageStatParams params):this(params.stat, params.gameType);

  @override
  int get hashCode => stat.hashCode ^ gameType.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PageStatParams &&
          runtimeType == other.runtimeType &&
          stat == other.stat &&
          gameType == other.gameType;
}

class PageGameLogParams extends PageParam {
  String year;

  PageGameLogParams(this.year, bool gameType) : super(gameType);

  PageGameLogParams copyWith({String year, bool gameType}) {
    return PageGameLogParams(year ?? this.year, gameType ?? this.gameType);
  }

  PageGameLogParams.clone(PageGameLogParams params):this(params.year, params.gameType);

  @override
  int get hashCode => year.hashCode ^ gameType.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PageGameLogParams &&
          runtimeType == other.runtimeType &&
          year == other.year &&
          gameType == other.gameType;
}

@immutable
class PlayerState {
  PlayerState({
    @required this.loadingStatus,
    @required this.playerId,
    @required this.playerType,
    @required this.selectedStat,
    @required this.gameLogParams,
    @required this.players,
    @required this.error,
  });

  final LoadingStatus loadingStatus;
  final int playerId;
  final StatType playerType;
  final PageStatParams selectedStat;
  final PageGameLogParams gameLogParams;
  final KtMap<int, PlayerPage> players;
  final Exception error;

  factory PlayerState.initial() {
    return PlayerState(
      loadingStatus: LoadingStatus.IDLE,
      playerId: 0,

      ///TODO: Unknown enum to StatType
      playerType: StatType.PLAYER,
      selectedStat: null,
      gameLogParams: null,
      players: emptyMap(),
      error: null,
    );
  }

  PlayerState copyWith(
      {LoadingStatus loadingStatus,
      int playerId,
      StatType playerType,
      PageStatParams selectedStat,
      PageGameLogParams gameLogParams,
      KtMap<int, PlayerPage> players,
      Exception error}) {
    return PlayerState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      playerId: playerId ?? this.playerId,
      playerType: playerType ?? this.playerType,
      selectedStat: selectedStat ?? this.selectedStat,
      gameLogParams: gameLogParams ?? this.gameLogParams,
      players: players ?? this.players,
      error: error ?? this.error,
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
          error == other.error;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      playerId.hashCode ^
      playerType.hashCode ^
      selectedStat.hashCode ^
      gameLogParams.hashCode ^
      players.hashCode ^
      error.hashCode;
}

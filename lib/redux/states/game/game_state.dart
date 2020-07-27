import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/collection.dart';

@immutable
class GameState {
  GameState(
      {@required this.loadingStatus,
      @required this.selectedGame,
      @required this.games,
      @required this.errorMsg});

  final LoadingStatus loadingStatus;
  final Game selectedGame;
  final KtMap<int, Game> games;
  final String errorMsg;

  factory GameState.initial() {
    return GameState(
        loadingStatus: LoadingStatus.IDLE,
        selectedGame: null,
        games: emptyMap(),
        errorMsg: '');
  }

  GameState copyWith(
      {LoadingStatus loadingStatus,
      Game selectedGame,
      KtMap<int, Game> games,
      String errorMsg}) {
    return GameState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        selectedGame: selectedGame ?? this.selectedGame,
        games: games ?? this.games,
        errorMsg: errorMsg ?? this.errorMsg);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          selectedGame == other.selectedGame &&
          games == other.games &&
          errorMsg == other.errorMsg;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      selectedGame.hashCode ^
      games.hashCode ^
      errorMsg.hashCode;
}

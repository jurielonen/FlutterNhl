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
      @required this.error});

  final LoadingStatus loadingStatus;
  final Game selectedGame;
  final KtMap<int, Game> games;
  final Exception error;

  factory GameState.initial() {
    return GameState(
        loadingStatus: LoadingStatus.IDLE,
        selectedGame: null,
        games: emptyMap(),
        error: null);
  }

  GameState copyWith(
      {LoadingStatus loadingStatus,
      Game selectedGame,
      KtMap<int, Game> games,
      Exception error}) {
    return GameState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        selectedGame: selectedGame ?? this.selectedGame,
        games: games ?? this.games,
        error: error ?? this.error);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          selectedGame == other.selectedGame &&
          games == other.games &&
          error == other.error;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      selectedGame.hashCode ^
      games.hashCode ^
      error.hashCode;
}

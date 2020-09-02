import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/playoffs/playoffs.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/playoffs/playoffs_action.dart';
import 'package:FlutterNhl/redux/states/playoffs/playoffs_selectors.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class PlayoffsSeasonViewModel {
  final String selectedSeason;
  final Function(String) seasonChanged;

  PlayoffsSeasonViewModel(
      {@required this.selectedSeason, @required this.seasonChanged});

  static PlayoffsSeasonViewModel fromStore(Store<AppState> store) {
    return PlayoffsSeasonViewModel(
        selectedSeason: store.state.playoffsState.selectedSeason,
        seasonChanged: (season) =>
            store.dispatch(PlayoffsSeasonChangedAction(season)));
  }

  @override
  int get hashCode => selectedSeason.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayoffsSeasonViewModel &&
          runtimeType == other.runtimeType &&
          selectedSeason == other.selectedSeason;
}

class PlayoffsViewModel {
  final LoadingStatus loadingStatus;
  final Exception error;
  final Playoff playoff;

  PlayoffsViewModel(
      {@required this.loadingStatus,
      @required this.error,
      @required this.playoff});

  static PlayoffsViewModel fromStore(Store<AppState> store){
    return PlayoffsViewModel(
      loadingStatus: store.state.playoffsState.loadingStatus,
      error: store.state.playoffsState.error,
      playoff: selectedPlayoffsSelector(store.state),
    );
  }


  @override
  int get hashCode => loadingStatus.hashCode ^ error.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is PlayoffsViewModel &&
              runtimeType == other.runtimeType &&
              loadingStatus == other.loadingStatus;
}

import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/standings/standings.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/standings/standings_action.dart';
import 'package:FlutterNhl/redux/states/standings/standings_selectors.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class StandingsViewModel {
  final LoadingStatus loadingStatus;
  final Exception error;
  final String selectedSeason;
  final Standing standing;
  final Function(String) seasonChanged;

  StandingsViewModel({
    @required this.loadingStatus,
    @required this.error,
    @required this.selectedSeason,
    @required this.standing,
    @required this.seasonChanged,
  });

  static StandingsViewModel fromStore(Store<AppState> store) {
    return StandingsViewModel(
      loadingStatus: store.state.standingsState.loadingStatus,
      error: store.state.standingsState.error,
      selectedSeason: store.state.standingsState.selectedSeason,
      standing: selectedStandingSelector(store.state),
      seasonChanged: (String season) =>
          store.dispatch(StandingsSeasonChangedAction(season: season)),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is StandingsViewModel &&
              runtimeType == other.runtimeType &&
              loadingStatus == other.loadingStatus &&
              error == other.error &&
              selectedSeason == other.selectedSeason &&
              standing == other.standing;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      error.hashCode ^
      selectedSeason.hashCode ^
      standing.hashCode;
}

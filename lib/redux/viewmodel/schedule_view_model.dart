import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:FlutterNhl/redux/models/settings/game_show.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_action.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_selectors.dart';
import 'package:FlutterNhl/redux/states/settings/settings_action.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

class GameCardHiddenViewModel {
  final Function(int gameId) gameShownChanged;

  GameCardHiddenViewModel({
    @required this.gameShownChanged,
  });

  static GameCardHiddenViewModel fromStore(Store<AppState> store) {
    return GameCardHiddenViewModel(
      gameShownChanged: (int gameId) => store.dispatch(SettingsGamesShownChangedAction(
          store.state.settingsState.gameShow.addGameToList(gameId))),
    );
  }
}

class ScheduleBodyViewModel {
  final LoadingStatus loadingStatus;
  final Schedule selectedSchedule;
  final Exception error;
  final GameShow gameShow;
  final Function(GameShow) gameShownChanged;

  ScheduleBodyViewModel({
    @required this.loadingStatus,
    @required this.selectedSchedule,
    @required this.error,
    @required this.gameShow,
    @required this.gameShownChanged,
  });

  static ScheduleBodyViewModel fromStore(Store<AppState> store) {
    return ScheduleBodyViewModel(
      loadingStatus: store.state.scheduleState.loadingStatus,
      selectedSchedule: scheduleSelector(store.state),
      error: store.state.scheduleState.error,
      gameShow: scheduleGameShowSelector(store.state),
      gameShownChanged: (GameShow g) => store.dispatch(SettingsGamesShownChangedAction(g)),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleBodyViewModel &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          selectedSchedule == other.selectedSchedule &&
          error == other.error;

  @override
  int get hashCode => loadingStatus.hashCode ^ selectedSchedule.hashCode ^ error.hashCode;
}

class ScheduleAppBarViewModel {
  final LoadingStatus loadingStatus;
  final DateTime selectedDate;
  final Function(DateTime) changeSelectedDate;
  final Function refreshSchedule;

  ScheduleAppBarViewModel(
      {@required this.loadingStatus,
      @required this.selectedDate,
      @required this.changeSelectedDate,
      @required this.refreshSchedule});

  static ScheduleAppBarViewModel fromStore(Store<AppState> store) {
    return ScheduleAppBarViewModel(
      loadingStatus: store.state.scheduleState.loadingStatus,
      selectedDate: store.state.scheduleState.selectedDate,
      changeSelectedDate: (DateTime newDate) => store.dispatch(ScheduleDateChangedAction(newDate)),
      refreshSchedule: () => store.dispatch(RefreshScheduleAction()),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleAppBarViewModel &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          selectedDate == other.selectedDate;

  @override
  int get hashCode => loadingStatus.hashCode ^ selectedDate.hashCode;
}

import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/player/player_action.dart';
import 'package:FlutterNhl/redux/states/player/player_selectors.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/redux/states/starred/starred_action.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class PlayerAppBarViewModel {
  final Player player;
  final bool isStarred;
  final VoidCallback getStats;
  final VoidCallback getGameLogs;
  final Function(Player) starredPlayer;
  final Function(Player) unstarredPlayer;

  PlayerAppBarViewModel(
      {@required this.player,
      @required this.isStarred,
      @required this.getStats,
      @required this.getGameLogs,
      @required this.starredPlayer,
      @required this.unstarredPlayer});

  static PlayerAppBarViewModel fromStore(Store<AppState> store) {
    return PlayerAppBarViewModel(
      player: Player.checkIfFoundInCache(store.state.playerState.playerId),
      isStarred: isPlayerStarredSelector(store.state),
      getStats: () => store.dispatch(PlayerStatsTabChangedAction()),
      getGameLogs: () => store.dispatch(PlayerGameLogTabChangedAction()),
      starredPlayer: (Player player) => store.dispatch(StarredAddPlayerAction(player)),
      unstarredPlayer: (Player player) => store.dispatch(StarredDeletePlayerAction(player)),
    );
  }

  @override
  bool operator ==(Object other) {
    bool retVal = identical(this, other) ||
        other is PlayerAppBarViewModel &&
            runtimeType == other.runtimeType &&
            player == other.player &&
            isStarred == other.isStarred;
    return retVal;
  }

  @override
  int get hashCode => player.hashCode;
}

class PlayerBioTabObject {
  final String nationality;
  final String birthCity;
  final String birthCountry;
  final DateTime birthDate;
  final String handness;
  final int weight;
  final String height;
  final List<PlayerStat> playerStats;
  final PlayerDraft draft;
  final String firstYearRegularSeason;
  final String firstYearRegularPlayoffs;
  final String playerPositionString;
  final String playerHandessString;
  final String currentTeam;

  PlayerBioTabObject(
      this.nationality,
      this.birthCity,
      this.birthCountry,
      this.birthDate,
      this.handness,
      this.weight,
      this.height,
      this.playerStats,
      this.draft,
      this.firstYearRegularSeason,
      this.firstYearRegularPlayoffs,
      this.playerPositionString,
      this.playerHandessString,
      this.currentTeam);

  static PlayerBioTabObject fromPlayerPage(PlayerPage player) {
    if (player == null) return null;
    return PlayerBioTabObject(
        player.nationality,
        player.birthCity,
        player.birthCountry,
        player.birthDate,
        player.handness,
        player.weight,
        player.height,
        player.playerStats,
        player.draft,
        'firstYearRegularSeason',
        'firstYearRegularPlayoffs',
        player.playerPositionString,
        player.playerHandessString,
        player.currentTeam);
  }
}

class PlayerBioTabViewModel {
  final LoadingStatus loadingStatus;
  final Exception error;
  final PlayerBioTabObject player;

  PlayerBioTabViewModel({
    @required this.loadingStatus,
    @required this.error,
    @required this.player,
  });

  static PlayerBioTabViewModel fromStore(Store<AppState> store) {
    return PlayerBioTabViewModel(
      loadingStatus: store.state.playerState.loadingStatus,
      error: store.state.playerState.error,
      player: PlayerBioTabObject.fromPlayerPage(selectedPlayerSelector(store.state)),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayerBioTabViewModel &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          error == other.error &&
          player == other.player;

  @override
  int get hashCode => loadingStatus.hashCode ^ error.hashCode ^ player.hashCode;
}

class PlayerStatsViewModel {
  final LoadingStatus loadingStatus;
  final Exception error;
  final Function(PageStatParams) getStats;
  final PageStatParams selectedStat;
  final List<String> displayItems;
  final PlayerSeasonTableSource selectedStats;

  PlayerStatsViewModel(
      {@required this.loadingStatus,
      @required this.error,
      @required this.getStats,
      @required this.selectedStat,
      @required this.displayItems,
      @required this.selectedStats});

  static PlayerStatsViewModel fromStore(Store<AppState> store) {
    print('PlayerStatsViewModel fromStore');
    dynamic temp = playerSelectedStatSelector(store.state);
    return PlayerStatsViewModel(
      loadingStatus: store.state.playerState.loadingStatus,
      selectedStat: store.state.playerState.selectedStat,
      displayItems: statTypes(store.state),
      error: store.state.playerState.error,
      selectedStats: temp,
      getStats: (PageStatParams stat) => store.dispatch(PlayerStatsChangedAction(stat: stat)),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayerStatsViewModel &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          error == other.error &&
          selectedStats == other.selectedStats &&
          selectedStat == other.selectedStat;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^ error.hashCode ^ selectedStats.hashCode ^ selectedStat.hashCode;
}

class PlayerGameLogViewModel {
  final LoadingStatus loadingStatus;
  final Exception error;
  final Function(PageGameLogParams) getGameLogs;
  final PageGameLogParams params;
  final List<GameLogsPlayer> selectedGameLogs;

  PlayerGameLogViewModel(
      {@required this.loadingStatus,
      @required this.error,
      @required this.getGameLogs,
      @required this.params,
      @required this.selectedGameLogs});

  static PlayerGameLogViewModel fromStore(Store<AppState> store) {
    print('PlayerGameLogViewModel fromStore');
    dynamic temp = playerGameLogSelector(store.state);
    return PlayerGameLogViewModel(
      loadingStatus: store.state.playerState.loadingStatus,
      params: store.state.playerState.gameLogParams,
      error: store.state.playerState.error,
      selectedGameLogs: temp,
      getGameLogs: (PageGameLogParams stat) => store.dispatch(PlayerGetGameLogsAction(stat)),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayerGameLogViewModel &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          error == other.error &&
          selectedGameLogs.length == other.selectedGameLogs.length &&
          params == other.params;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^ error.hashCode ^ selectedGameLogs.hashCode ^ params.hashCode;
}

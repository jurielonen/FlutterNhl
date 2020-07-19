import 'package:FlutterNhl/redux/api/nhl_api.dart';
import 'package:FlutterNhl/redux/api/stats_api.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/redux/states/team/team_action.dart';
import 'package:FlutterNhl/redux/states/team/team_selectors.dart';
import 'package:redux/redux.dart';

class TeamMiddleware extends MiddlewareClass<AppState> {
  final StatsApi statsApi;
  final NHLApi nhlApi;

  TeamMiddleware(this.statsApi, this.nhlApi);

  @override
  Future<Null> call(Store<AppState> store, action, next) async {
    next(action);
    if (store.state.teamState.loadingStatus != LoadingStatus.LOADING) {
      if (action is TeamEntered) {
        await _getBio(store, next);
      } else if (action is TeamDownloadRoster) {
        await _getRoster(store, next);
      } else if (action is TeamStatsChangedAction) {
        await _getStat(store, next);
      } else if (action is TeamDateChangedAction) {
        await _getDate(store, next);
      }
    }
  }

  Future<Null> _getBio(Store<AppState> store, NextDispatcher next) async {
    if (store.state.teamState.teams.containsKey(store.state.teamState.teamId)) {
      next(TeamBioAlreadyDownloaded());
    } else {
      next(TeamRequestingAction());
      try {
        final TeamPage team =
            await statsApi.fetchTeamInfo(store.state.teamState.teamId);
        next(TeamReceivedBioAction(team));
      } catch (error) {
        next(TeamErrorAction(error.toString()));
      }
    }
  }

  Future<Null> _getRoster(Store<AppState> store, NextDispatcher next) async {
    if (selectedTeamSelector(store.state).containsRosterStats()) {
      next(TeamRosterAlreadyDownloaded());
    } else {
      try {
        final List<PlayerGame> team =
            await statsApi.fetchTeamRoster(store.state.teamState.teamId);
        next(TeamReceivedRosterAction(team));
      } catch (error) {
        next(TeamErrorAction(error.toString()));
      }
    }
  }

  Future<Null> _getStat(Store<AppState> store, NextDispatcher next) async {
    if (selectedTeamSelector(store.state).containsStat(store.state.teamState.selectedStat)) {
      next(TeamStatsAlreadyDownloaded());
    } else {
      try {
        final List<dynamic> stats = await nhlApi.fetchTeamStat(
            store.state.teamState.selectedStat, store.state.teamState.teamId);
        next(TeamReceivedStatAction(PlayerTableSource.fromData(
            stats, teamFilterTypeSelector(store.state))));
      } catch (error) {
        next(TeamErrorAction(error.toString()));
      }
    }
  }

  Future<Null> _getDate(Store<AppState> store, NextDispatcher next) async {
    if (selectedTeamSelector(store.state).containsGameLog(store.state.teamState.selectedDate)) {
      next(TeamDateAlreadyDownloaded());
    } else {
      try {
        final List<Game> games = await statsApi.fetchTeamGameLog(
            store.state.teamState.teamId, store.state.teamState.selectedDate);
        next(TeamReceivedDateAction(games));
      } catch (error) {
        next(TeamErrorAction(error.toString()));
      }
    }
  }
}

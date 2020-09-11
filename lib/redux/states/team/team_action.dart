import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';

class TeamRequestingAction extends TeamAction {}

class TeamBioAlreadyDownloaded extends TeamAction {}

class TeamReceivedBioAction extends TeamAction {
  final TeamPage team;
  TeamReceivedBioAction(this.team);
}

class TeamStatsChangedAction extends TeamAction {
  final PageStatParams stat;
  TeamStatsChangedAction(this.stat);
}

class TeamStatsAlreadyDownloaded extends TeamAction {}

class TeamReceivedStatAction extends TeamAction {
  final PlayerSeasonTableSource stats;
  TeamReceivedStatAction(this.stats);
}

class TeamDateChangedAction extends TeamAction {
  final PageGameLogParams params;
  TeamDateChangedAction(this.params);
}

class TeamDateAlreadyDownloaded extends TeamAction {}

class TeamReceivedDateAction extends TeamAction {
  final List<Game> games;
  TeamReceivedDateAction(this.games);
}

class TeamDownloadRoster extends TeamAction {}

class TeamRosterAlreadyDownloaded extends TeamAction {}

class TeamReceivedRosterAction extends TeamAction {
  final List<PlayerGame> players;
  TeamReceivedRosterAction(this.players);
}

class TeamErrorAction extends TeamAction {
  final Exception error;
  TeamErrorAction(this.error);
}

class TeamStatsTabChangedAction extends TeamAction {}

class TeamRosterTabChangedAction extends TeamAction {}

class TeamGameLogTabChangedAction extends TeamAction {}
import 'package:FlutterNhl/redux/models/standings/standings.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';

class StandingsSeasonChangedAction extends StandingsAction {
  final String season;

  StandingsSeasonChangedAction({this.season});
}

class StandingsRequestingAction extends StandingsAction {}

class StandingsAlreadyDownloadedAction extends StandingsAction {}

class StandingsDownloaded extends StandingsAction {
  final Standing standing;

  StandingsDownloaded(this.standing);
}

class StandingsError extends StandingsAction {
  final String error;

  StandingsError(this.error);
}
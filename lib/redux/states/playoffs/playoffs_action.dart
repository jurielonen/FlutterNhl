import 'package:FlutterNhl/redux/models/playoffs/playoffs.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';

class PlayoffsRequestingAction extends PlayoffsAction {}

class PlayoffsSeasonChangedAction extends PlayoffsAction {
  final String season;
  PlayoffsSeasonChangedAction(this.season);
}

class PlayoffsAlreadyDownloadedAction extends PlayoffsAction {}

class PlayoffsDownloadedAction extends PlayoffsAction {
  final Playoff playoff;
  PlayoffsDownloadedAction(this.playoff);
}

class PlayoffsError extends PlayoffsAction {
  final Exception error;
  PlayoffsError(this.error);
}
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/playoffs/playoffs.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';

class SeriesEntered extends SeriesAction {
  final Series selectedSeries;
  SeriesEntered(this.selectedSeries);
}

class SeriesExited extends SeriesAction {}

class SeriesRequestingAction extends SeriesAction {}

class SeriesDownloadedGamesAction extends SeriesAction {
  final List<Game> games;
  SeriesDownloadedGamesAction(this.games);
}

class SeriesAlreadyDownloadedGamesAction extends SeriesAction {}

class SeriesErrorAction extends SeriesAction {
  final Exception error;
  SeriesErrorAction(this.error);
}

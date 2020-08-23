import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';

class GameRequestingAction extends GameAction {}

class GameAlreadyDownloadedAction extends GameAction {}

class GameDownloadedAction extends GameAction {
  final Game game;
  GameDownloadedAction(this.game);
}

class GameErrorAction extends GameAction {
  final Exception error;
  GameErrorAction(this.error);
}

class GameRefreshAction extends GameAction {}

class GameDownloadContentAction extends GameAction {}

class GameDownloadedContentAction extends GameAction {
  final Content content;
  GameDownloadedContentAction(this.content);
}

class GameAlreadyDownloadedContentAction extends GameAction {}

class GameExited extends GameAction {}
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';

class StarredLoadingPlayersAction extends StarredAction {}

class StarredReceivedPlayersAction extends StarredAction {
  final List<Player> starredPlayers;
  StarredReceivedPlayersAction(this.starredPlayers);
}

class StarredErrorAction extends StarredAction {
  final Exception error;
  StarredErrorAction(this.error);
}

class StarredAddPlayerAction extends StarredAction {
  final Player player;
  StarredAddPlayerAction(this.player);
}

class StarredAddPlayerAddedAction extends StarredAction {
  final Player player;
  StarredAddPlayerAddedAction(this.player);
}

class StarredDeletePlayerAction extends StarredAction {
  final Player player;
  StarredDeletePlayerAction(this.player);
}

class StarredDeletePlayerDeletedAction extends StarredAction {
  final Player player;
  StarredDeletePlayerDeletedAction(this.player);
}

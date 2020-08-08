import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/game/game_action.dart';
import 'package:FlutterNhl/redux/states/game/game_selectors.dart';
import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';

class GameViewModel {
  final LoadingStatus loadingStatus;
  final Game game;
  final String errorMsg;
  final VoidCallback refreshCallBack;
  final VoidCallback contentCallBack;

  GameViewModel(
      {@required this.loadingStatus,
      @required this.game,
      @required this.errorMsg,
      @required this.refreshCallBack,
      @required this.contentCallBack});

  static GameViewModel fromStore(Store<AppState> store) {
    return GameViewModel(
      loadingStatus: store.state.gameState.loadingStatus,
      game: selectedGameSelector(store.state),
      errorMsg: store.state.gameState.errorMsg,
      refreshCallBack: () => store.dispatch(GameRefreshAction()),
      contentCallBack: () => store.dispatch(GameDownloadContentAction()),
    );
  }
}

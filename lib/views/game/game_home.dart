import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/game/game_action.dart';
import 'package:FlutterNhl/redux/viewmodel/game_view_model.dart';
import 'package:FlutterNhl/views/game/game_final_view.dart';
import 'package:FlutterNhl/views/game/game_preview_view.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class GameHome extends StatelessWidget {
  static const String routeName = '/game';
  final GameArgument argument;
  const GameHome({Key key, @required this.argument}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoreConnector<AppState, GameViewModel>(
        distinct: true,
        onInit: (store) => store.dispatch(GameEntered(argument.game)),
        converter: (store) => GameViewModel.fromStore(store),
        onDispose: (store) => store.dispatch(GameExited()),
          builder: (ctx, viewModel) {
            if (viewModel.game is GameFinal) {
              return GameFinalView(game: viewModel.game, loadingStatus: viewModel.loadingStatus, errorMsg: viewModel.errorMsg,);
            } else if (viewModel.game is GamePreview) {
              return GamePreviewView(game: viewModel.game, loadingStatus: viewModel.loadingStatus, errorMsg: viewModel.errorMsg,);
            } else {
              if (viewModel.errorMsg != '') {
                return ErrorView(viewModel.errorMsg);
              } else {
                return ProgressView('Loading game');
              }
            }
          }
      ),
    );
  }
}

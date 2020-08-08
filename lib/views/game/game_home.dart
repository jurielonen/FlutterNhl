import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/game/game_action.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_action.dart';
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
    return /*Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: _getTitle(),
      ),
      body: */
        Material(
      child: StoreConnector<AppState, GameViewModel>(
          distinct: true,
          onInit: (store)  {
            store.dispatch(ScheduleExited());
            store.dispatch(GameEntered(argument.game));
          },
          converter: (store) => GameViewModel.fromStore(store),
          onDispose: (store) {
            print('Game exited');
            store.dispatch(GameExited());
            store.dispatch(ScheduleEntered());
          },
          builder: (ctx, viewModel) {
            if (viewModel.game is GameFinal) {
              return GameFinalView(
                game: viewModel.game,
                loadingStatus: viewModel.loadingStatus,
                errorMsg: viewModel.errorMsg,
                contentCallBack: viewModel.contentCallBack,
                refreshCallBack: viewModel.refreshCallBack,
              );
            } else if (viewModel.game is GamePreview) {
              return GamePreviewView(
                game: viewModel.game,
                loadingStatus: viewModel.loadingStatus,
                errorMsg: viewModel.errorMsg,
              );
            } else {
              if (viewModel.errorMsg != '') {
                return ErrorView(viewModel.errorMsg);
              } else {
                return ProgressView('Loading game');
              }
            }
          }),
    );
  }

  Widget _getTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Styles.buildTeamSvgImage(argument.game.homeTeam),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Styles.scaffoldGameLoserText,
                children: <TextSpan>[
                  TextSpan(
                      text: '${argument.game.homeTeam.abb}',
                      style: Styles.scaffoldGameWinnerText),
                  TextSpan(text: ' VS ', style: Styles.scaffoldGameVsText),
                  TextSpan(
                      text: '${argument.game.awayTeam.abb}',
                      style: Styles.scaffoldGameWinnerText),
                ],
              ),
            ),
            Text(
              Styles.dateTimeFormat.format(argument.game.dateTime),
              style: Styles.scaffoldGameVsText,
            ),
          ],
        ),
        Styles.buildTeamSvgImage(argument.game.awayTeam),
      ],
    );
  }
}

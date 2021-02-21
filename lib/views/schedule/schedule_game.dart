import 'package:FlutterNhl/constants/colors.dart';
import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/settings/game_show.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/viewmodel/schedule_view_model.dart';
import 'package:FlutterNhl/views/game/game_widgets/game_video_view.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/views/schedule/schedule_game_base.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';

Widget getScheduleGameCard(Game game, bool isPlayoffs, {GameShow gameShow}) {
  if (game.isPreview) {
    return ScheduleGamePreviewCard(game);
  } else if (game.isLive) {
    return ScheduleGameLiveCard(game);
  } else {
    if (gameShow != null && !gameShow.checkGame(game)) {
      return ScheduleGameFinalHiddenCard(game);
    } else {
      return ScheduleGameFinalCard(game);
    }
  }
}

class ScheduleGameFinalHiddenCard extends ScheduleGameBaseFinalCard {
  final Game game;

  ScheduleGameFinalHiddenCard(this.game);

  @override
  List<TableRow> buildTeamTableRows(Game game) {
    return [
      TableRow(
        children: [
          ...ScheduleGameBaseCard.buildTeamTableRow(game.homeTeam, Text('')),
          TableCell(child: Text('')),
        ],
      ),
      TableRow(
        children: [
          ...ScheduleGameBaseCard.buildTeamTableRow(game.awayTeam, Text('')),
          TableCell(child: Text('')),
        ],
      ),
    ];
  }

  @override
  Widget getStateRow({BuildContext context, VoidCallback callback}) {
    List<Widget> widgets = [];
    widgets.add(game.gameState);
    if (game.isFinal &&
        game.content != null &&
        game.content.videos != null &&
        game.content.videos.isNotEmpty) {
      widgets.add(
        IconButton(
          icon: Icon(Icons.videocam),
          onPressed: () {
            showVideoDialog(context).then((value) => callback());
          },
          tooltip: 'Game recaps',
        ),
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: widgets,
    );
  }

  @override
  Iterable<Widget> get videoTiles sync* {
    for (Video video in game.content.videos)
      yield VideoCard(
        video: video,
      );
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, GameCardHiddenViewModel>(
      converter: (store) => GameCardHiddenViewModel.fromStore(store),
      builder: (context, viewModel) {
        return buildCard(context, game, onCardPressed: () => viewModel.gameShownChanged(game.id));
      },
    );
  }
}

class ScheduleGameFinalCard extends ScheduleGameBaseFinalCard {
  final Game game;

  ScheduleGameFinalCard(this.game);
  @override
  List<TableRow> buildTeamTableRows(Game game) {
    return [
      TableRow(
        children: [
          ...ScheduleGameBaseCard.buildTeamTableRow(game.homeTeam, game.homeScheduleInfo,
              opacity: game.homeOpacity),
          ScheduleGameBaseCard.buildScoreRow(game.homeTeam.score, opacity: game.homeOpacity),
        ],
      ),
      TableRow(
        children: [
          ...ScheduleGameBaseCard.buildTeamTableRow(game.awayTeam, game.awayScheduleInfo,
              opacity: game.awayOpacity),
          ScheduleGameBaseCard.buildScoreRow(game.awayTeam.score, opacity: game.awayOpacity),
        ],
      ),
    ];
  }

  @override
  Widget getStateRow({BuildContext context, VoidCallback callback}) {
    List<Widget> widgets = [];
    widgets.add(game.gameStateText);
    if (game.isFinal &&
        game.content != null &&
        game.content.videos != null &&
        game.content.videos.isNotEmpty) {
      widgets.add(
        IconButton(
          icon: Icon(Icons.videocam),
          onPressed: () => showVideoDialog(context),
          tooltip: 'Game recaps',
        ),
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: widgets,
    );
  }

  @override
  Iterable<Widget> get videoTiles sync* {
    for (Video video in game.content.videos)
      yield VideoCard(
        video: video,
      );
  }

  @override
  Widget build(BuildContext context) {
    return buildCard(context, game);
  }
}

class ScheduleGameLiveCard extends ScheduleGameBaseCard {
  final Game game;
  ScheduleGameLiveCard(this.game);

  @override
  List<TableRow> buildTeamTableRows(Game game) {
    return [
      TableRow(
        children: [
          ...ScheduleGameBaseCard.buildTeamTableRow(game.homeTeam, game.homeScheduleInfo),
          ScheduleGameBaseCard.buildScoreRow(game.homeTeam.score),
        ],
      ),
      TableRow(
        children: [
          ...ScheduleGameBaseCard.buildTeamTableRow(game.awayTeam, game.awayScheduleInfo),
          ScheduleGameBaseCard.buildScoreRow(game.awayTeam.score),
        ],
      ),
    ];
  }

  @override
  Widget getStateRow({BuildContext context, VoidCallback callback}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        game.gameStateText,
        Text(
          game.getLiveScheduleInfo,
          style: Styles.gameStateText,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildCard(context, game);
  }
}

class ScheduleGamePreviewCard extends ScheduleGameBaseCard {
  final Game game;

  ScheduleGamePreviewCard(this.game);
  @override
  Widget getStateRow({BuildContext context, VoidCallback callback}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        game.gameStateText,
        Text(
          game.getScheduleTime,
          style: Styles.gameStateText,
        ),
      ],
    );
  }

  @override
  List<TableRow> buildTeamTableRows(Game game) {
    return [
      TableRow(
        children: [
          ...ScheduleGameBaseCard.buildTeamTableRow(game.homeTeam, game.homeScheduleInfo),
          TableCell(child: Text('')),
        ],
      ),
      TableRow(
        children: [
          ...ScheduleGameBaseCard.buildTeamTableRow(game.awayTeam, game.awayScheduleInfo),
          TableCell(child: Text('')),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return buildCard(context, game);
  }
}

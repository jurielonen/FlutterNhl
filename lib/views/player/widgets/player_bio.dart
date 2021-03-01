import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/viewmodel/player_view_model.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class PlayerBioTab extends StatelessWidget {
  //final PlayerPage player;

  const PlayerBioTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PlayerBioTabViewModel>(
        converter: (store) => PlayerBioTabViewModel.fromStore(store),
        builder: (ctx, viewModel) {
          if (viewModel.loadingStatus == LoadingStatus.IDLE) {
            return SliverProgressView(msg: 'Loading player bio');
          } else if (viewModel.loadingStatus == LoadingStatus.LOADING) {
            return SliverProgressView(msg: 'Loading player bio');
          } else if (viewModel.loadingStatus == LoadingStatus.ERROR) {
            return SliverErrorView(error: viewModel.error);
          } else {
            if (viewModel.player == null)
              return SliverErrorView(error: NoDataException('PlayerBioTab build'));
            return PlayerBioWidget(
              player: viewModel.player,
            );
          }
        });
  }
}

class PlayerBioWidget extends StatelessWidget {
  final PlayerBioTabObject player;

  const PlayerBioWidget({Key key, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
        padding: const EdgeInsets.all(8.0),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return bioTiles.elementAt(index);
            },
            childCount: bioTiles.length,
          ),
        ),);
  }

  Iterable<Widget> get bioTiles sync* {
    yield createTextCard(
      'Info',
      playerInfoTable,
    );
    yield createTextCard('Draft', playerDraftTable);
    for (PlayerStat stat in player.playerStats) {
      if(stat is PlayerAllTimeStat)
        yield createTextCard(stat.header, stat.statTable);
    }
  }

  static Widget createTextCard(String title, Widget value) {
    return Column(
      children: <Widget>[createHeaderDivider(title), value],
    );
  }

  static createHeaderDividerWidget(Widget title) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            thickness: 4,
            endIndent: 8,
            color: Colors.white,
          ),
        ),
        title,
        Expanded(
          child: Divider(
            thickness: 4,
            indent: 8,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  static createSecondaryHeaderDivider(String title) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            thickness: 1,
            endIndent: 8,
            indent: 8,
            color: Colors.grey,
          ),
        ),
        Text(title.toUpperCase(), style: Styles.infoTableSecondaryHeaderText),
        Expanded(
          child: Divider(
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  static createHeaderDivider(String title) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            thickness: 4,
            endIndent: 8,
            color: Colors.white,
          ),
        ),
        Text(title.toUpperCase(), style: Styles.infoTableHeaderText),
        Expanded(
          child: Divider(
            thickness: 4,
            indent: 8,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Table get playerInfoTable {
    return Table(children: [
      getRow('Team', player.currentTeam),
      getRow('Position', player.playerPositionString),
      getRow('Handess', player.playerHandessString),
      getRow('First year in NHL', player.firstYearRegularSeason),
      getRow('First year in playoffs', player.firstYearRegularPlayoffs),
      getRow('Birth date', Styles.dateFormat.format(player.birthDate)),
      getRow('Birthplace', '${player.birthCity}, ${player.birthCountry}'),
      getRow('Nationality', player.nationality),
      getRow('Height', player.height.toString()),
      getRow('Weight', player.weight.toString()),
    ]);
  }

  Table get playerDraftTable {
    return Table(
      children: [
        getRow('Year', player.draft?.draftYear.toString()),
        getRow('Round', '${player.draft?.draftRound} rd'),
        getRow('Pick', player.draft?.draftOverall.toString()),
      ],
    );
  }

  static TableRow getRow(String header, String value) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 8.0, bottom: 8.0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(header.toUpperCase(), style: Styles.infoTableHeaderText)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 30.0, right: 8.0, bottom: 8.0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(value.toUpperCase(), style: Styles.infoTableValueText, maxLines: 1, overflow: TextOverflow.ellipsis,)),
      )
    ]);
  }
}

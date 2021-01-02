import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/starred_view_model.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/views/search/search_home.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/idle_view.dart';
import 'package:FlutterNhl/widgets/template_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

///TODO: add functionality to add players to starred players
///TODO: add download starred players to opening the app
class StarredHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, StarredViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(StarredEntered()),
      converter: (store) => StarredViewModel.fromStore(store),
      builder: (ctx, starredVM) => TemplateView(
          starredVM.loadingStatus,
          () => _buildBody(ctx, starredVM.starredPlayers),
          _buildAppBar(ctx),
          starredVM.error),
    );
  }

  Widget _buildBody(BuildContext ctx, List<Player> players) {
    if (players == null) {
      return SliverErrorView(
          error: UINoDataDownloadedException('starred_home _buildBody'));
    }
    if (players.isEmpty) {
      return SliverIdleView(msg: 'No players starred');
    }

    return SliverFixedExtentList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          Player player = players[index];
          return Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Theme.of(context).hintColor))),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Styles.buildPlayerCircleIcon(player, size: 30.0),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(player.fullname),
                  ),
                ),
              ],
            ),
          );
        }, childCount: players.length),
        itemExtent: 100.0);
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      title: const Text('Starred players'),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          tooltip: 'Search for a player',
          onPressed: () {
            Navigator.pushNamed(context, SearchHome.routeName,
                arguments: SearchArguments(true));
          },
        ),
      ],
    );
  }
}

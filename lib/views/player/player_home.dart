import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/player_view_model.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/views/player/widgets/player_bio.dart';
import 'package:FlutterNhl/views/player/widgets/player_game_log_view.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:FlutterNhl/widgets/single_stat_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class CustomTabTemplate {
  final int index;
  final String name;
  const CustomTabTemplate(this.index, this.name);
}

///TODO: continue making player appbar
class PlayerHome extends StatefulWidget {
  static const String routeName = '/player';
  static const List<CustomTabTemplate> tabs = [
    CustomTabTemplate(0, 'Bio'),
    CustomTabTemplate(1, 'Stats'),
    CustomTabTemplate(2, 'Game Logs')
  ];
  final PlayerArguments playerArgs;

  const PlayerHome({
    this.playerArgs,
  });

  @override
  _PlayerHomeState createState() => _PlayerHomeState();
}

class _PlayerHomeState extends State<PlayerHome> {
  static const double appBarHeight = 250.0;
  static const double tabBarHeight = 50.0;
  PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StoreConnector<AppState, PlayerAppBarViewModel>(
        distinct: true,
        onInit: (store) =>
            store.dispatch(PlayerEntered(widget.playerArgs.playerId, widget.playerArgs.type)),
        converter: (store) => PlayerAppBarViewModel.fromStore(store),
        builder: (_, viewModel) {
          return DefaultTabController(
              length: PlayerHome.tabs.length,
              child: NestedScrollView(
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverOverlapAbsorber(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                      sliver: SliverAppBar(
                        pinned: true,
                        snap: false,
                        floating: false,
                        expandedHeight: appBarHeight,
                        title: Text(viewModel.player.fullname),
                        actions: [
                          IconButton(
                              icon: viewModel.isStarred
                                  ? const Icon(Icons.star)
                                  : const Icon(Icons.star_border),
                              onPressed: () => viewModel.isStarred
                                  ? viewModel.unstarredPlayer(viewModel.player)
                                  : viewModel.starredPlayer(viewModel.player))
                        ],
                        flexibleSpace: FlexibleSpaceBar(
                          collapseMode: CollapseMode.parallax,
                          background: Stack(
                            fit: StackFit.expand,
                            children: [
                              Positioned(
                                bottom: tabBarHeight,
                                child: SizedBox(
                                  height: appBarHeight - kToolbarHeight * 2,
                                  width: MediaQuery.of(context).size.width,
                                  child: DecoratedBox(
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        const DecoratedBox(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment(-0.30, 0.1),
                                              end: Alignment(-0.31, 0.2),
                                              colors: <Color>[
                                                Colors.white12,
                                                Colors.white12,
                                                Colors.black,
                                              ],
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Styles.buildPlayerBoxIcon(viewModel.player),
                                            Column(
                                              children: [
                                                Text(
                                                  viewModel.player.fullname,
                                                ),
                                                Text(viewModel.player.currentTeam),
                                                Text(viewModel.player.position.positionString),
                                                Text(
                                                    viewModel.player.active ? "Active" : "Inactive")
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        //color: Colors.amber,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        forceElevated: innerBoxIsScrolled,
                        bottom: PreferredSize(
                          preferredSize: Size.fromHeight(tabBarHeight),
                          child: TabBar(
                            tabs: PlayerHome.tabs
                                .map((tab) => Tab(
                                      text: tab.name,
                                    ))
                                .toList(),
                          ),
                        ),
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                  children: PlayerHome.tabs.map((tab) {
                    print('map ${tab.name}');
                    return SafeArea(child: Builder(
                      builder: (BuildContext context) {
                        print('builder ${tab.name}');
                        return CustomScrollView(
                          key: PageStorageKey<String>(tab.name),
                          slivers: [
                            SliverOverlapInjector(
                                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
                            _buildBody(tab.name),
                          ],
                        );
                      },
                    ));
                  }).toList(),
                ),
              ));
        },
      ),
    );
  }

  Widget _buildBody(String tab) {
    switch (tab) {
      case 'Bio':
        return PlayerBioTab();
      case 'Stats':
        return SingleStatView();
      case 'Game Logs':
        return PlayerGameLogView();
      default:
        return SliverErrorView(error: UIUnknownStateException('player_home _createTab'));
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

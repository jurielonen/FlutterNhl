import 'package:FlutterNhl/constants/colors.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/player_view_model.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/views/player/widgets/player_bio.dart';
import 'package:FlutterNhl/views/player/widgets/player_game_log_view.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/single_stat_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class CustomTabTemplate {
  final int index;
  final String name;

  const CustomTabTemplate(this.index, this.name);
}

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
                  print('is inner: $innerBoxIsScrolled');
                  return <Widget>[
                    SliverOverlapAbsorber(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                      sliver: SliverAppBar(
                        pinned: true,
                        snap: false,
                        floating: false,
                        expandedHeight: appBarHeight,
                        title: Opacity(
                          opacity: innerBoxIsScrolled ? 1.0 : 0.0,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Styles.buildPlayerBoxIcon(viewModel.player)),
                              ),
                              Text(viewModel.player.fullname),
                            ],
                          ),
                        ),
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
                                  height: appBarHeight - kToolbarHeight,
                                  width: MediaQuery.of(context).size.width,
                                  child: DecoratedBox(
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        const DecoratedBox(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment(0.0, 0.19999),
                                              end: Alignment(0.0, 0.2),
                                              colors: <Color>[
                                                kNHLPrimary,
                                                kNHLSecondaryLight,
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: kToolbarHeight,
                                          left: -50.0,
                                          child: Opacity(
                                              opacity: 0.5,
                                              child: Styles.buildTeamSvgImageAbb(
                                                  Team.logoSvgUrl(viewModel.player.currentTeam),
                                                  size: 100)),
                                        ),
                                        Positioned(
                                          bottom: 0.0,
                                          height: appBarHeight - kToolbarHeight * 2,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Styles.buildPlayerBoxIcon(viewModel.player),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 16.0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    RichText(
                                                      text: TextSpan(
                                                        text: '',
                                                        style: Styles.playerAppbarLegendText,
                                                        children: [
                                                          TextSpan(
                                                            text: viewModel.player.fullname
                                                                .toUpperCase(),
                                                            style: Styles.playerAppbarNameText,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      Team.getTeamNameFromAbb(
                                                              viewModel.player.currentTeam)
                                                          .toUpperCase(),
                                                      style: Styles.playerAppbarOtherText,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              'POSITION',
                                                              style: Styles.playerAppbarLegendText,
                                                            ),
                                                            Text(
                                                              'STATUS',
                                                              style: Styles.playerAppbarLegendText,
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(left: 16.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment.start,
                                                            children: [
                                                              Text(
                                                                viewModel.player.position
                                                                    .positionFullString
                                                                    .toUpperCase(),
                                                                style: Styles.playerAppbarOtherText,
                                                              ),
                                                              Text(
                                                                viewModel.player.active
                                                                    ? "ACTIVE"
                                                                    : "INACTIVE",
                                                                style: Styles.playerAppbarOtherText,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
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

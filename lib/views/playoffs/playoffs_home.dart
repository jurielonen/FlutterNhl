import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/playoffs/playoffs.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/playoffs_view_model.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:FlutterNhl/widgets/custom_year_select.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class PlayoffsHome extends StatelessWidget {
  static const int minSeason = 20002001;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PlayoffsSeasonViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(PlayoffsEntered()),
      converter: (store) => PlayoffsSeasonViewModel.fromStore(store),
      builder: (ctx, seasonVM) {
        return NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            int selectedYear;
            if(seasonVM.selectedSeason == null)
              selectedYear = int.parse(Config.getCurrentSeason);
            else
              selectedYear = int.parse(seasonVM.selectedSeason);
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  title: const Text('Playoffs'),
                  pinned: true,
                  forceElevated: innerBoxIsScrolled,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(50.0),
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.navigate_before),
                            tooltip: 'Previous season',
                            onPressed: selectedYear > minSeason
                                ? () => seasonVM.seasonChanged(
                                    (selectedYear - 10001).toString())
                                : null,
                          ),
                          CustomYearPicker(
                            selected: selectedYear,
                            onSelected: (int year) =>
                                seasonVM.seasonChanged(year.toString()),
                            maxValue: int.parse(Config.getCurrentSeason),
                            minValue: minSeason,
                            reducer: 10001,
                          ),
                          IconButton(
                            icon: Icon(Icons.navigate_next),
                            tooltip: 'Next season',
                            onPressed: selectedYear <
                                    int.parse(Config.getCurrentSeason)
                                ? () => seasonVM.seasonChanged(
                                    (selectedYear + 10001).toString())
                                : null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Builder(
            builder: (BuildContext context) {
              return CustomScrollView(
                slivers: <Widget>[
                  SliverOverlapInjector(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context)),
                  _buildBody(),
                ],
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildBody() {
    return StoreConnector<AppState, PlayoffsViewModel>(
        distinct: true,
        converter: (store) => PlayoffsViewModel.fromStore(store),
        builder: (ctx, playoffVM) {
          switch (playoffVM.loadingStatus) {
            case LoadingStatus.IDLE:
            case LoadingStatus.LOADING:
              return SliverProgressView(msg: 'Loading Playoffs');
              break;
            case LoadingStatus.ERROR:
              return SliverErrorView(error: playoffVM.error);
              break;
            case LoadingStatus.SUCCESS:
              if (playoffVM.playoff == null) {
                return SliverErrorView(
                    error: UINoDataDownloadedException(
                        'playoffs_home _buildBody'));
              } else {
                return SliverFillRemaining(
                  hasScrollBody: true,
                  fillOverscroll: true,
                  child: PlayoffsTabView(playoff: playoffVM.playoff,),
                );
              }
              break;
            default:
              return SliverErrorView(
                  error: UIUnknownStateException('Unknown state'));
          }
        });
  }
}

class PlayoffsTabView extends StatefulWidget {
  final Playoff playoff;
  const PlayoffsTabView({Key key, this.playoff}) : super(key: key);
  @override
  _PlayoffsTabViewState createState() => _PlayoffsTabViewState();
}

class _PlayoffsTabViewState extends State<PlayoffsTabView>
    with TickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
        length: widget.playoff.tabs.length,
        vsync: this,
        initialIndex: 0);//widget.playoff.defaultRound);
    _pageController = new PageController(initialPage: _tabController.index);
  }

  @override
  void didUpdateWidget(PlayoffsTabView oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      _tabController.index = 0;//widget.playoff.defaultRound;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TabBar(
          controller: _tabController,
          indicatorColor: Colors.orange,
          labelColor: Colors.orange,
          unselectedLabelColor: Colors.black54,
          isScrollable: true,
          tabs: widget.playoff.tabs
              .map((name) => Tab(
                    text: name,
                  ))
              .toList(),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: widget.playoff.tabs.map((name) {
              return SafeArea(
                top: false,
                bottom: false,
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  itemBuilder: (context, position) {
                    PlayoffRound round = widget.playoff.getPlayoffRound(name);
                    return ListView.builder(
                      itemBuilder: (BuildContext ctx, int index) {
                        Series series = round.series[index];
                        if(series.teams == null || series.teams.isEmpty)
                          return Text('Team not decided yet');
                        return PressableCard(child: Column(
                          children: [
                            buildTeamRow(series.teams.first),
                            buildTeamRow(series.teams.last),
                          ],
                        ));
                      },
                      itemCount: round.series.length,
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget buildTeamRow(SeriesTeam team){
    return Row(children: [
      Styles.buildTeamSvgImage(team, size: 50),
      Text(team.abb)
    ],);
  }
}

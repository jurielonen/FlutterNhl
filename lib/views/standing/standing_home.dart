import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/standings/standings.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/standings/standings_action.dart';
import 'package:FlutterNhl/redux/viewmodel/standings_view_model.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:FlutterNhl/widgets/custom_year_select.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/template_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class StandingHome extends StatelessWidget {
  static const String routeName = '/standing';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, StandingsViewModel>(
        distinct: true,
        onInit: (store) => store.dispatch(StandingsSeasonChangedAction()),
        converter: (store) => StandingsViewModel.fromStore(store),
        builder: (ctx, viewModel) => TemplateView(
            viewModel.loadingStatus,
            () => _pageContent(viewModel.standing),
            _getAppBar(
                int.parse(viewModel.selectedSeason), viewModel.seasonChanged),
            viewModel.error));
  }

  Widget _getAppBar(int selectedYear, Function onChangeYear) {
    return SliverAppBar(
      title: const Text('Draft'),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: Container(
          height: 50,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.navigate_before),
                  tooltip: 'Previous season',
                  onPressed: () =>
                      onChangeYear((selectedYear - 10001).toString()),
                ),
                CustomYearPicker(
                  selected: selectedYear,
                  onSelected: (int year) => onChangeYear(year.toString()),
                  maxValue: int.parse(Config.getCurrentSeason),
                  minValue: 20102011,
                  reducer: 10001,
                ),
                IconButton(
                  icon: Icon(Icons.navigate_next),
                  tooltip: 'Next season',
                  onPressed: () =>
                      onChangeYear((selectedYear + 10001).toString()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _pageContent(Standing standing) {
    if (standing == null) {
      return SliverErrorView(
        error: UINoDataDownloadedException('standings_home _pageContent'),
      );
    } else {
      return SliverFillRemaining(
        child: StandingsTabView(
          source: standing,
        ),
      );
    }
  }
}

class StandingsTabView extends StatefulWidget {
  final Standing source;

  const StandingsTabView({Key key, this.source}) : super(key: key);
  @override
  _StandingsTabViewState createState() => _StandingsTabViewState();
}

class _StandingsTabViewState extends State<StandingsTabView>
    with TickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    print('INITSTATE: ${widget.source.tabs.length} ${widget.source.season}');
    _tabController = new TabController(
        length: widget.source.tabs.length, vsync: this, initialIndex: 0);
    _pageController = new PageController(initialPage: _tabController.index);
  }

  @override
  void didUpdateWidget(StandingsTabView oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
    if (oldWidget.source.tabs.length != widget.source.tabs.length) {
      _tabController.dispose();
      _tabController = new TabController(
          length: widget.source.tabs.length, vsync: this, initialIndex: 0);
    }
  }

  @override
  void dispose() {
    print('dispose');
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
          tabs: widget.source.tabs
              .map((type) => Tab(
                    text: standingsTypeToString(type),
                  ))
              .toList(),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: widget.source.tabs.map((type) {
              return SafeArea(
                top: false,
                bottom: false,
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  itemBuilder: (context, position) {
                    print('StandingsTabView: $position');
                    return SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: widget.source
                            .tabType(type)
                            .map((e) => CustomDataTable(
                                  dataTableSource: e,
                                ))
                            .toList(),
                      ),
                    );
                  },
                  itemCount: _tabController.length,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

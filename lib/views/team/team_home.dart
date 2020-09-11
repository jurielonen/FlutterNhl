import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/redux/viewmodel/team_view_model.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/views/player/player_home.dart';
import 'package:FlutterNhl/views/team/widgets/team_bio.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:FlutterNhl/widgets/custom_dropdown_button.dart';
import 'package:FlutterNhl/widgets/custom_year_select.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/game_log_item.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:FlutterNhl/widgets/scaffold_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class TeamHome extends StatefulWidget {
  static const String routeName = '/team';
  static const List<CustomTabTemplate> tabs = [
    CustomTabTemplate(0, 'Bio'),
    CustomTabTemplate(1, 'Players'),
    CustomTabTemplate(2, 'Stats'),
    CustomTabTemplate(3, 'Game Logs'),
  ];
  final TeamArguments teamArguments;

  const TeamHome({Key key, this.teamArguments}) : super(key: key);
  @override
  _TeamHomeState createState() => _TeamHomeState();
}

class _TeamHomeState extends State<TeamHome> {
  PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, TeamAppBarViewModel>(
      distinct: true,
      converter: (store) => TeamAppBarViewModel.fromStore(store),
      builder: (ctx, viewModel) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Row(
            children: <Widget>[
              Styles.buildTeamSvgImage(widget.teamArguments.team),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(widget.teamArguments.team.name),
              ),
            ],
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Container(
                height: 50.0,
                child: Row(
                  children: TeamHome.tabs.map((tab) =>
                      Expanded(
                        child: FlatButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () {
                            _currentPage = tab.index;
                            _pageController.jumpToPage(_currentPage);
                          },
                          child: Column(
                            children: [
                              Tab(
                                child: Text(
                                  tab.name,
                                  style: Styles.scaffoldGameWinnerText
                                      .copyWith(
                                      color: _currentPage == tab.index
                                          ? Colors.orange
                                          : Colors.white),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 2,
                                  color: _currentPage == tab.index
                                      ? Colors.orange
                                      : Colors.transparent,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                  ).toList(),
                ),
              ),
          ),
        ),
        body: _createBody(),
      ),
    );
  }

  Widget _createBody() {
    return StoreConnector<AppState, TeamViewModel>(
      distinct: true,
      onInit: (store) =>
          store.dispatch(TeamEntered(widget.teamArguments.teamId)),
      converter: (store) => TeamViewModel.fromStore(store),
      builder: (_, viewModel) => PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int index) {
          print(index);
          if (TeamHome.tabs.length > index) {
            switch (TeamHome.tabs[index].name) {
              case 'Stats':
                viewModel.getStats(viewModel.selectedStat);
                break;
              case 'Game Logs':
                viewModel.getGameLogs(viewModel.selectedParams);
                break;
              case 'Players':
                viewModel.getPlayers();
                break;
            }
          }
          setState(() {
            _currentPage = index;
          });
        },
        itemBuilder: (context, position) {
          print('position: $position,');
          switch (viewModel.loadingStatus) {
            case LoadingStatus.IDLE:
              return ProgressView('Checking team data');
              break;
            case LoadingStatus.LOADING:
              return ProgressView('Downloading team data');
              break;
            default:
              return _createTab(TeamHome.tabs[position].name, viewModel);
              break;
          }
        },),
    );
  }

  Widget _createTab(String tab, TeamViewModel viewModel) {
    switch (tab) {
      case 'Bio':
        return _createBioTab(viewModel);
      case 'Players':
        return _createPlayerTab(viewModel);
      case 'Stats':
        return _createStatTab(viewModel);
      case 'Game Logs':
        return _createGameLogTab(viewModel);
      default:
        return ErrorView(UIUnknownStateException('Unknown tab'));
    }
  }

  Widget _createBioTab(TeamViewModel viewModel) {
    if (viewModel.loadingStatus == LoadingStatus.ERROR &&
        viewModel.error != null) {
      return ErrorView(viewModel.error);
    } else if (viewModel.team == null)
      return ErrorView(UINoDataDownloadedException('team_home _createBioTab'));
    else
      return TeamBioTab(
        team: viewModel.team,
      );
  }

  Widget _createPlayerTab(TeamViewModel viewModel) {
    if (viewModel.loadingStatus == LoadingStatus.ERROR &&
        viewModel.error != null) {
      return ErrorView(viewModel.error);
    } else if (viewModel.team != null && viewModel.team.containsRosterStats()) {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          if (index == 0)
            return ListTile(title: Text('Players'));
          else if (index == 1)
            return CustomDataTable(
              dataTableSource: viewModel.team.playerTableSource,
            );
          else if (index == 2)
            return ListTile(
              title: Text('Goalies'),
            );
          else if (index == 3)
            return CustomDataTable(dataTableSource: viewModel.team.goalieTableSource);
          else
            return ErrorView(UIUnknownStateException(
                'team_home _createPlayerTab Unknown index: $index'));
        },
        itemCount: 4,
      );
    } else {
      return ErrorView(
          UINoDataDownloadedException('team_home _createPlayerTab'));
    }
  }

  Widget _createStatTab(TeamViewModel viewModel) {
    Widget widget;
    if (viewModel.loadingStatus == LoadingStatus.ERROR &&
        viewModel.error != null) {
      return ErrorView(viewModel.error);
    } else if (viewModel.team != null &&
        viewModel.team.containsStat(viewModel.selectedStat)) {
      PlayerSeasonTableSource stats =
          viewModel.team.getStat(viewModel.selectedStat);
      widget = Expanded(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: CustomDataTable(dataTableSource: stats)),
      );
    }
    return Column(
      children: <Widget>[
        Container(
          height: 50.0,
          color: Colors.black12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomDropdownButton(
                selectedValue: viewModel.selectedStat.stat,
                values: viewModel.displayItems,
                onValueChanged: (String stat) => viewModel.getStats(viewModel.selectedStat.copyWith(stat: stat)),
              ),
              CustomDropdownButton(
                selectedValue: viewModel.selectedStat.gameTypeString,
                values: PageParam.gameTypes,
                onValueChanged: (String type) => viewModel.getStats(
                    viewModel.selectedStat.copyWith(
                        gameType: PageParam.getGameTypeBoolean(type))),
              ),
            ],
          ),
        ),
        widget ??
            ErrorView(UINoDataDownloadedException('team_home _createStatTab')),
      ],
    );
  }

  Widget _createGameLogTab(TeamViewModel viewModel) {
    Widget widget;
    if (viewModel.loadingStatus == LoadingStatus.ERROR &&
        viewModel.error != null) {
      return ErrorView(viewModel.error);
    } else if (viewModel.team != null &&
        viewModel.team.containsGameLog(viewModel.selectedParams)) {
      List<Game> logs = viewModel.team.getGames(viewModel.selectedParams);
      widget = Expanded(
        child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return GameLogRow(
                  date: logs[index].dateTime,
                  opponent: logs[index].getOpponent(viewModel.team),
                  result: logs[index].getResult(viewModel.team));
            },
            itemCount: logs.length),
      );
    }

    return Column(
      children: <Widget>[
        Container(
          height: 50.0,
          color: Colors.black12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomYearPicker(
                selected: int.parse(viewModel.selectedParams.year),
                onSelected: (int year) => viewModel.getGameLogs(
                    viewModel.selectedParams.copyWith(year: year.toString())),
                maxValue: int.parse(StatParameters.getCurrentSeason()),
                minValue: int.parse(viewModel.team.firstYear),
                reducer: 10001,
              ),
              CustomDropdownButton(
                selectedValue: viewModel.selectedParams.gameTypeString,
                values: PageParam.gameTypes,
                onValueChanged: (String type) => viewModel.getGameLogs(
                    viewModel.selectedParams.copyWith(
                        gameType: PageParam.getGameTypeBoolean(type))),
              ),
            ],
          ),
        ),
        widget ??
            ErrorView(
                UINoDataDownloadedException('team_home _createGameLogTab')),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

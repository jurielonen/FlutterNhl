import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/player/player_enums.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/redux/viewmodel/player_view_model.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/views/player/widgets/player_bio.dart';
import 'package:FlutterNhl/views/player/widgets/player_game_log_view.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:FlutterNhl/widgets/custom_dropdown_button.dart';
import 'package:FlutterNhl/widgets/custom_year_select.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:FlutterNhl/widgets/scaffold_template.dart';
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
  PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PlayerAppBarViewModel>(
        distinct: true,
        onInit: (store) => store.dispatch(
            PlayerEntered(widget.playerArgs.playerId, widget.playerArgs.type)),
        converter: (store) => PlayerAppBarViewModel.fromStore(store),
        builder: (_, viewModel) {
          print('PlayerAppBarViewModel build');
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: true,
              title: Row(
                children: <Widget>[
                  Styles.buildPlayerCircleIcon(widget.playerArgs.player,
                      size: 30.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(widget.playerArgs.player.fullname),
                  ),
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: Container(
                  height: 50.0,
                  child: Row(
                    children: PlayerHome.tabs
                        .map(
                          (tab) => Expanded(
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
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
            body: _buildBody(),
          );
        });
  }

  Widget _buildBody() {
    return StoreConnector<AppState, PlayerViewModel>(
        distinct: true,
        onInit: (store) => store.dispatch(
            PlayerEntered(widget.playerArgs.playerId, widget.playerArgs.type)),
        converter: (store) => PlayerViewModel.fromStore(store),
        builder: (_, viewModel) {
          print('PlayerViewModel build: ${viewModel.loadingStatus}');
          return PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: (int index) {
              print(index);
              if (PlayerHome.tabs.length > index) {
                switch (PlayerHome.tabs[index].name) {
                  case 'Stats':
                    viewModel.getStats(viewModel.selectedStat);
                    break;
                  case 'Game Logs':
                    viewModel.getGameLogs(viewModel.selectedParams);
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
                  return ProgressView('Checking player data');
                  break;
                case LoadingStatus.LOADING:
                  return ProgressView('Downloading player data');
                  break;
                default:
                  return _createTab(PlayerHome.tabs[position].name, viewModel);
                  break;
              }
            },
            itemCount: PlayerHome.tabs.length,
          );
        });
  }

  Widget _createTab(String tab, PlayerViewModel viewModel) {
    switch (tab) {
      case 'Bio':
        return _createBioTab(viewModel);
      case 'Stats':
        return _createStatTab(viewModel);
      case 'Game Logs':
        return _createGameLogTab(viewModel);
      default:
        return ErrorView(UIUnknownStateException('player_home _createTab'));
    }
  }

  Widget _createBioTab(PlayerViewModel viewModel) {
    if (viewModel.loadingStatus == LoadingStatus.ERROR &&
        viewModel.error != null) {
      return ErrorView(viewModel.error);
    } else if (viewModel.player == null)
      return ErrorView(
          UINoDataDownloadedException('player_home _createBioTab'));
    else
      return PlayerBioTab(player: viewModel.player);
  }

  Widget _createStatTab(PlayerViewModel viewModel) {
    Widget widget;
    if (viewModel.loadingStatus == LoadingStatus.ERROR &&
        viewModel.error != null) {
      widget = ErrorView(viewModel.error);
    } else if (viewModel.player != null &&
        viewModel.player.containsStat(viewModel.selectedStat)) {
      PlayerSeasonTableSource stats =
          viewModel.player.getStat(viewModel.selectedStat);
      widget = Expanded(
        child: SingleChildScrollView(
          child: CustomDataTable(
            dataTableSource: stats,
          ),
        ),
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
                  onValueChanged: (String stat) => viewModel
                      .getStats(viewModel.selectedStat.copyWith(stat: stat)),
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
            ErrorView(
                UINoDataDownloadedException('player_home _createStatTab')),
      ],
    );
  }

  Widget _createGameLogTab(PlayerViewModel viewModel) {
    Widget widget;
    if (viewModel.loadingStatus == LoadingStatus.ERROR &&
        viewModel.error != null) {
      widget = ErrorView(viewModel.error);
    } else if (viewModel.player != null &&
        viewModel.player.containsGameLogs(viewModel.selectedParams)) {
      List<GameLogsPlayer> logs =
          viewModel.player.getGameLog(viewModel.selectedParams);

      widget = Expanded(
          child:
              PlayerGameLogView(logs, viewModel.player.position != Position.G));
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
                minValue: viewModel.player.firstSeason,
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
                UINoDataDownloadedException('player_home _createGameLogTab')),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

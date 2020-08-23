import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/redux/viewmodel/team_view_model.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/views/team/widgets/team_bio.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:FlutterNhl/widgets/custom_dropdown_button.dart';
import 'package:FlutterNhl/widgets/custom_year_select.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/game_log_item.dart';
import 'package:FlutterNhl/widgets/scaffold_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class TeamHome extends StatelessWidget {
  static const String routeName = '/team';
  static const List<String> _tabs = ['Bio', 'Players', 'Stats', 'Game Logs'];
  final TeamArguments teamArguments;

  const TeamHome({Key key, this.teamArguments}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, TeamViewModel>(
        distinct: true,
        onInit: (store) => store.dispatch(TeamEntered(teamArguments.teamId)),
        converter: (store) => TeamViewModel.fromStore(store),
        builder: (ctx, viewModel) => ScaffoldTemplate(
          loadingStatus: viewModel.loadingStatus,
          error: viewModel.error,
          onTabChanged: (String tab) => _createTab(tab, viewModel),
          appBarTitle: Row(
            children: <Widget>[
              Styles.buildTeamSvgImage(teamArguments.team),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(teamArguments.team.name),
              ),
            ],
          ),
          tabs: _createTabs.toList(),
          loadingText: 'Loading Team data',
          onTabPressed: (int index) {
            if (_tabs.length > index) {
              switch (_tabs[index]) {
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
          },
        ),
    );
  }

  Iterable<TemplateTab> get _createTabs sync* {
    for (String tab in _tabs) {
      yield TemplateTab(child: Text(tab), text: tab);
    }
  }

  Widget _createTab(String tab, TeamViewModel viewModel) {
    switch (tab) {
      case 'Bio':
        return _createBioTab(viewModel.team);
      case 'Players':
        return _createPlayerTab(viewModel.team);
      case 'Stats':
        return _createStatTab(viewModel);
      case 'Game Logs':
        return _createGameLogTab(viewModel);
      default:
        return ErrorView(UIUnknownStateException('Unknown tab'));
    }
  }

  Widget _createBioTab(TeamPage team) {
    if (team == null)
      return ErrorView(UINoDataDownloadedException('team_home _createBioTab'));
    else
      return TeamBioTab(
        team: team,
      );
  }

  Widget _createPlayerTab(TeamPage team) {
    if (team != null && team.containsRosterStats()) {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          if (index == 0)
            return ListTile(title: Text('Players'));
          else if (index == 1)
            return CustomDataTable(
              dataTableSource: team.playerTableSource,
            );
          else if (index == 2)
            return ListTile(
              title: Text('Goalies'),
            );
          else if (index == 3)
            return CustomDataTable(dataTableSource: team.goalieTableSource);
          else
            return ErrorView(UIUnknownStateException('team_home _createPlayerTab Unknown index: $index'));
        },
        itemCount: 4,
      );
    } else {
      return ErrorView(UINoDataDownloadedException('team_home _createPlayerTab'));
    }
  }

  Widget _createStatTab(TeamViewModel viewModel) {
    Widget widget;
    if (viewModel.team != null &&
        viewModel.team.containsStat(viewModel.selectedStat)) {
      PlayerSeasonTableSource stats =
          viewModel.team.getStat(viewModel.selectedStat);
      widget = Expanded(
        child: SingleChildScrollView(scrollDirection: Axis.vertical, child: CustomDataTable(dataTableSource: stats)),
      );
    }
    return Column(
      children: <Widget>[
        CustomDropdownButton(
          selectedValue: viewModel.selectedStat,
          values: viewModel.displayItems,
          onValueChanged: viewModel.getStats,
        ),
        widget ?? ErrorView(UINoDataDownloadedException('team_home _createStatTab')),
      ],
    );
  }

  static const List<String> years = [
    '20192020',
    '20182019',
    '20172018',
    '20162017',
    '20152016'
  ];

  Widget _createGameLogTab(TeamViewModel viewModel) {
    Widget widget;
    if (viewModel.team != null &&
        viewModel.team.containsGameLog(viewModel.selectedParams)) {
      List<Game> logs = viewModel.team.getGames(viewModel.selectedParams);
      widget = Expanded(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return GameLogRow(date: logs[index].dateTime, opponent: logs[index].getOpponent(viewModel.team), result: logs[index].getResult(viewModel.team));
          }, itemCount: logs.length),
      );
    }

    return Column(children: <Widget>[
      /*CustomDropdownButton(
        selectedValue: years.first,
        values: years,
        onValueChanged: (String year) => viewModel.getGameLogs(viewModel.selectedParams.copyWith(year: year)),
      ),*/
      CustomYearPicker(
          selected: int.parse(viewModel.selectedParams.year),
          onSelected: (int year) => viewModel.getGameLogs(viewModel.selectedParams.copyWith(year: year.toString())),
          maxValue: int.parse(StatParameters.getCurrentSeason()),
          minValue: int.parse(viewModel.team.firstYear),
          reducer: 10001,
        ),
      widget ?? ErrorView(UINoDataDownloadedException('team_home _createGameLogTab')),
    ],);
  }
}

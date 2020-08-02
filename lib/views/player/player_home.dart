import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/player/player_enums.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/redux/states/stats/stats_table_source.dart';
import 'package:FlutterNhl/redux/viewmodel/player_view_model.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/views/player/widgets/player_bio.dart';
import 'package:FlutterNhl/views/player/widgets/player_game_log_view.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:FlutterNhl/widgets/custom_dropdown_button.dart';
import 'package:FlutterNhl/widgets/custom_list_tile.dart';
import 'package:FlutterNhl/widgets/custom_year_select.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view2.dart';
import 'package:FlutterNhl/widgets/scaffold_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class PlayerHome extends StatelessWidget {
  static const String routeName = '/player';
  static const List<String> _tabs = ['Bio', 'Stats', 'Game Logs'];
  final PlayerArguments playerArgs;

  const PlayerHome({
    this.playerArgs,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PlayerViewModel>(
      distinct: true,
      onInit: (store) =>
          store.dispatch(PlayerEntered(playerArgs.playerId, playerArgs.type)),
      converter: (store) => PlayerViewModel.fromStore(store),
      builder: (_, viewModel) => ScaffoldTemplate(
        loadingStatus: viewModel.loadingStatus,
        errorMsg: viewModel.error,
        onTabChanged: (String tab) => _createTab(tab, viewModel),
        appBarTitle: Row(
          children: <Widget>[
            Styles.buildPlayerCircleIcon(playerArgs.player),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(playerArgs.player.fullname),
            ),
          ],
        ),
        tabs: createTabs.toList(),
        loadingText: 'Loading player data',
        onTabPressed: (int index) {
          if (_tabs.length > index) {
            switch (_tabs[index]) {
              case 'Stats':
                viewModel.getStats(viewModel.selectedStat);
                break;
              case 'Game Logs':
                viewModel.getGameLogs(viewModel.selectedYear);
                break;
            }
          }
        },
      ),
      /*NestedTemplateView(
          tabs: _createTabs(context, viewModel),
          loadingStatus: viewModel.loadingStatus,
          errorMsg: viewModel.error,
          onTabPressed: (int index) {
            if (_tabs.length > index) {
              switch (_tabs[index]) {
                case 'Stats':
                  viewModel.getStats(viewModel.selectedStat);
                  break;
                case 'Game Logs':
                  viewModel.getGameLogs(viewModel.selectedYear);
                  break;
              }
            }
          },
          content: PlayerPageAppBarContent(viewModel.player),
        ),*/
    );
  }

  Iterable<NestedTemplateTab> get createTabs sync* {
    for (String tab in _tabs) {
      yield NestedTemplateTab(child: Text(tab), text: tab);
    }
  }

  Widget _createTab(String tab, PlayerViewModel viewModel) {
    switch (tab) {
      case 'Bio':
        return _createBioTab(viewModel.player);
      case 'Stats':
        return _createStatTab(viewModel);
      case 'Game Logs':
        return _createGameLogTab(viewModel);
      default:
        return ErrorView('Unknown tab');
    }
  }

  /*Map<String, List<Widget>> _createTabs(
      BuildContext context, PlayerViewModel viewModel) {
    return Map.fromIterable(_tabs,
        key: (name) => name.toString(),
        value: (name) {
          switch (name) {
            case 'Bio':
              return _createBioTab(viewModel.player);
            case 'Stats':
              return _createStatTab(viewModel);
            case 'Game Logs':
              return _createGameLogTab(viewModel);
            default:
              return <Widget>[
                SliverFillRemaining(child: ErrorView('Unknown tab'))
              ];
          }
        });
  }*/

  Widget _createBioTab(PlayerPage player) {
    if (player == null)
      return ErrorView('No data downloaded');
    else
      return PlayerBioTab(player: player);
  }

  Widget _createStatTab(PlayerViewModel viewModel) {
    Widget widget;
    if (viewModel.player != null &&
        viewModel.player.containsStat(viewModel.selectedStat)) {
      PlayerSeasonTableSource stats =
          viewModel.player.getStat(viewModel.selectedStat);
      widget = CustomDataTable(
        dataTableSource: stats,
      );
    }
    return Column(
      children: <Widget>[
        CustomDropdownButton(
          selectedValue: viewModel.selectedStat,
          values: viewModel.displayItems,
          onValueChanged: viewModel.getStats,
        ),
        widget ?? ErrorView('No data downloaded'),
      ],
    );
  }

  static const List<String> years = [
    '20192020',
    '20182019',
    '20172018',
    '20162017',
    '20152016',
    '20142015'
  ];

  Widget _createGameLogTab(PlayerViewModel viewModel) {
    Widget widget;
    if (viewModel.player != null &&
        viewModel.player.containsGameLogs(viewModel.selectedYear)) {
      List<GameLogsPlayer> logs =
          viewModel.player.getGameLog(viewModel.selectedYear);

      widget = Expanded(child: PlayerGameLogView(logs, viewModel.player.position != Position.G));
      /*.add(
        SliverFixedExtentList(
          itemExtent: 100,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) => PlayerGameLogCard(logs[index]),
            childCount: logs.length,
          ),
        ),
      );*/
    }
    return Column(
      children: <Widget>[
        CustomYearPicker(
          selected: int.parse(viewModel.selectedYear),
          onSelected: (int year) => viewModel.getGameLogs(year.toString()),
          maxValue: int.parse(StatParameters.getCurrentSeason()),
          minValue: viewModel.player.firstSeason,
          reducer: 10001,
        ),
        widget ?? ErrorView('No data downloaded'),
      ],
    );
  }
}

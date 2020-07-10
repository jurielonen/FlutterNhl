import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/redux/states/stats/stats_table_source.dart';
import 'package:FlutterNhl/redux/viewmodel/player_view_model.dart';
import 'package:FlutterNhl/views/player/player_game_log.dart';
import 'package:FlutterNhl/views/player/widgets/player_bio_tab.dart';
import 'package:FlutterNhl/widgets/custom_dropdown_button.dart';
import 'package:FlutterNhl/widgets/custom_list_tile.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class PlayerPageAppBarContent implements NestedTemplateViewAppBarContent {
  final PlayerPage player;

  PlayerPageAppBarContent(this.player);

  @override
  Widget getExpanded() {
    return FlexibleSpaceBar(
      collapseMode: CollapseMode.parallax,
      background: CustomListTile(
        thumbnail: Styles.buildPlayerBoxIcon(player),
        title: player.fullname,
        listItems: player.playerInfoMap,
      ),
    );
  }

  @override
  Widget getTitle(bool isScrolled) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 300),
      opacity: isScrolled ? 1.0 : 0.0,
      curve: Curves.ease,
      child: _getPlayerTitle(),
    );
  }

  Widget _getPlayerTitle() {
    if (player != null && player.id != -1) {
      //return CustomListTile(thumbnail: Styles.buildPlayerBoxIcon(player), title: player.fullname, listItems: player.playerInfoMap,);
      return ListTile(
          leading: Styles.buildPlayerCircleIcon(player),
          title: Text(player.fullname));
    } else {
      return Text('Player');
    }
  }
}

class PlayerHome extends StatelessWidget {
  static const String routeName = '/player';
  static const List<String> _tabs = ['Bio', 'Stats', 'Game Logs'];
  final PlayerPageArguments playerArgs;

  const PlayerHome({
    this.playerArgs,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(playerArgs.playerFullName)),
      body: StoreConnector<AppState, PlayerViewModel>(
        distinct: true,
        onInit: (store) =>
            store.dispatch(PlayerEntered(playerArgs.playerId, playerArgs.type)),
        converter: (store) => PlayerViewModel.fromStore(store),
        builder: (_, viewModel) => NestedTemplateView(
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
        ),
      ),
    );
  }

  Map<String, List<Widget>> _createTabs(
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
              return _createGameLogTab(
                  viewModel.player.getGameLog(viewModel.selectedYear),
                  viewModel.getGameLogs);
            default:
              return <Widget>[
                SliverFillRemaining(child: ErrorView('Unknown tab'))
              ];
          }
        });
  }

  List<Widget> _createBioTab(PlayerPage player) {
    return <Widget>[PlayerBioTab(player: player)];
  }

  List<Widget> _createStatTab(PlayerViewModel viewModel) {
    PlayerTableSource stats = viewModel.player.getStat(viewModel.selectedStat);
    List<Widget> widgets = [
      SliverToBoxAdapter(
          child: CustomDropdownButton(
        selectedValue: viewModel.selectedStat,
        values: viewModel.displayItems,
        onValueChanged: viewModel.getStats,
      )),
    ];
    if (stats.columns.length == 0) {
      widgets.add(SliverFillRemaining(child: ErrorView('No data downloaded')));
    } else {
      widgets.add(SliverFillRemaining(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(columns: stats.columns, rows: stats.rows),
          ),
        ),
      ));
    }
    return widgets;
  }

  static const List<String> years = [
    '20192020',
    '20182019',
    '20172018',
    '20162017',
    '20152016'
  ];

  List<Widget> _createGameLogTab(
      List<GameLogsPlayer> logs, Function(String) onValueChanged) {
    List<Widget> widgets = [
      SliverToBoxAdapter(
          child: CustomDropdownButton(
        selectedValue: years.first,
        values: years,
        onValueChanged: onValueChanged,
      )),
    ];

    widgets.add(SliverFixedExtentList(
      itemExtent: 100,
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) => PlayerGameLogCard(logs[index]),
        childCount: logs.length,
      ),
    ));

    return widgets;
  }
}

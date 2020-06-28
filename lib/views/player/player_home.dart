import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/redux/states/stats/stats_table_source.dart';
import 'package:FlutterNhl/redux/viewmodel/player_view_model.dart';
import 'package:FlutterNhl/views/player/player_game_log.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

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
      body: StoreConnector<AppState, PlayerViewModel>(
        distinct: true,
        onInit: (store) =>
            store.dispatch(PlayerEntered(playerArgs.playerId, playerArgs.type)),
        converter: (store) => PlayerViewModel.fromStore(store),
        builder: (_, viewModel) => NestedTemplateView(
          tabs: _createTabs(context, viewModel),
          loadingStatus: viewModel.loadingStatus,
          appBar: _createAppBar,
          errorMsg: viewModel.error,
          onTabPressed: (int index) {
            if (_tabs.length > index) {
              switch (_tabs[index]) {
                case 'Stats':
                  viewModel.getStats('summary');
                  break;
                case 'Game Logs':
                  viewModel.getGameLogs();
                  break;
              }
            }
          },
        ),
      ),
    );
  }

  Widget _createAppBar(TabController controller) {
    return SliverAppBar(
      title: Text('Player'),
      pinned: true,
      forceElevated: true,
      bottom: TabBar(
        controller: controller,
        tabs: _tabs
            .map((String name) => Tab(
                  text: name,
                ))
            .toList(),
      ),
    );
  }

  Map<String, Widget> _createTabs(
      BuildContext context, PlayerViewModel viewModel) {
    return Map.fromIterable(_tabs,
        key: (name) => name.toString(),
        value: (name) {
          switch (name) {
            case 'Bio':
              return _createBioTab(context, viewModel.player);
            case 'Stats':
              return _createStatTab(
                  viewModel.player.getStat(viewModel.selectedStat));
            case 'Game Logs':
              return _createGameLogTab(viewModel.player.gameLog);
            default:
              return ErrorView('Unknown tab');
          }
        });
  }

  Widget _createBioTab(BuildContext context, PlayerPage player) {
    return SliverToBoxAdapter(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(player.fullname),
                Text(player.position.toString()),
                Text(player.handness),
                Text(player.currentTeam)
              ],
            ),
            Row(
              children: <Widget>[
                Text(player.birthDate.toString()),
                Text(player.draftNum.toString()),
                Text(player.draftRound.toString()),
                Text(player.draftYear.toString()),
              ],
            ),
            Row(
              children: <Widget>[
                Text('${player.birthCity}, ${player.birthCountry}'),
                Text(player.nationality)
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                    '${player.allTimeStats.regular.gamesPlayed},${player.allTimeStats.regular.goals},${player.allTimeStats.regular.assists},${player.allTimeStats.regular.points}'),
                Text(
                    '${player.allTimeStats.playoff.gamesPlayed},${player.allTimeStats.playoff.goals},${player.allTimeStats.playoff.assists},${player.allTimeStats.playoff.points}'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _createStatTab(PlayerTableSource stats) {
    if (stats.columns.length == 0)
      return SliverFillRemaining(child: ErrorView('No data downloaded'));
    return SliverFillRemaining(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(columns: stats.columns, rows: stats.rows),
        ),
      ),
    );
  }

  Widget _createGameLogTab(List<GameLogsPlayer> logs) {
    return SliverFixedExtentList(
      itemExtent: 100,
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) => PlayerGameLogCard(logs[index]),
        childCount: logs.length,
      ),
    );
  }
}

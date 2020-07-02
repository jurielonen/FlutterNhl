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
      background: CustomListTile(thumbnail: Styles.buildPlayerBoxIcon(player), title: player.fullname, listItems: player.playerInfoMap,),
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

  Widget _getPlayerTitle(){
    if(player != null && player.id != -1){
      //return CustomListTile(thumbnail: Styles.buildPlayerBoxIcon(player), title: player.fullname, listItems: player.playerInfoMap,);
      return ListTile(leading: Styles.buildPlayerCircleIcon(player), title: Text(player.fullname));
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
                  viewModel.getStats('summary');
                  break;
                case 'Game Logs':
                  viewModel.getGameLogs();
                  break;
              }
            }
          },
          content: PlayerPageAppBarContent(viewModel.player),
        ),
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
              return _createBioTab(viewModel.player);
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

  Widget _createBioTab(PlayerPage player) {
    return PlayerBioTab(player: player);
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

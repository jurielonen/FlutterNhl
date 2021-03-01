import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/game_logs_player/game_logs_player.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/player/player_action.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/viewmodel/player_view_model.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:FlutterNhl/widgets/custom_dropdown_button.dart';
import 'package:FlutterNhl/widgets/custom_year_select.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class PlayerGameLogView extends StatelessWidget {
  final bool isSkater = true;

  PlayerGameLogView();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PlayerGameLogViewModel>(
      onInit: (store) => store.dispatch(PlayerGameLogTabChangedAction()),
      converter: (store) => PlayerGameLogViewModel.fromStore(store),
      builder: (ctx, viewModel) {
        print('PlayerGameLogView: BUILD: ${viewModel.loadingStatus} ${viewModel.selectedGameLogs}');
        if (viewModel.loadingStatus == LoadingStatus.IDLE) {
          return SliverProgressView(msg: 'Loading player game logs');
        } else if (viewModel.loadingStatus == LoadingStatus.LOADING) {
          return SliverProgressView(msg: 'Loading player game logs');
        } else if (viewModel.loadingStatus == LoadingStatus.ERROR) {
          return SliverErrorView(error: viewModel.error);
        } else {
          return CustomScrollView(slivers: [
            SliverOverlapInjector(handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
            SliverToBoxAdapter(
              child: Container(
                height: 50.0,
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomYearPicker(
                      selected: int.parse(viewModel.params.year),
                      onSelected: (int year) =>
                          viewModel.getGameLogs(viewModel.params.copyWith(year: year.toString())),
                      maxValue: int.parse(StatParameters.getCurrentSeason()),
                      minValue:
                          20182019 /*viewModel.player != null
                              ? int.parse(viewModel.player.firstSeason)
                              : int.parse(Config.getCurrentSeason)*/
                      ,
                      reducer: 10001,
                    ),
                    CustomDropdownButton(
                      selectedValue: viewModel.params.gameTypeString,
                      values: PageParam.gameTypes,
                      onValueChanged: (String type) => viewModel.getGameLogs(
                          viewModel.params.copyWith(gameType: PageParam.getGameTypeBoolean(type))),
                    ),
                  ],
                ),
              ),
            ),
            _buildGameLogList(viewModel.selectedGameLogs)
          ]);
        }
      },
    );
  }

  Widget _buildGameLogList(List<GameLogsPlayer> logs) {
    if (logs == null) {
      return SliverErrorView(
          error: UINoDataDownloadedException('player_game_log_view _buildGameLogList'));
    } else if (logs.length < 1) {
      return SliverErrorView(error: NoDataException(''));
    } else {
      return SliverFixedExtentList(
        itemExtent: 48.0,
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return getGameRow(logs[index]);
          },
          childCount: logs.length,
        ),
      );
    }
  }

  /*Iterable<Widget> get listTiles sync* {
    for (GameLogsPlayer log in logs) yield getGameRow(log);
  }*/

  Iterable<Widget> get statColumn sync* {
    yield Expanded(
        flex: 2,
        child: Text(
          'Team',
          style: CustomDataTableSource.headerRowStyle,
        ));
    yield Expanded(
        child: Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Text(
        'Date',
        style: CustomDataTableSource.headerRowStyle,
      ),
    ));
    if (isSkater) {
      for (String column in skaterColumns) {
        yield Expanded(
            child: Text(getColumnAbb(column), style: CustomDataTableSource.headerRowStyle));
      }
    } else {
      for (String column in goalieColumns) {
        yield Expanded(
            child: Text(getColumnAbb(column), style: CustomDataTableSource.headerRowStyle));
      }
    }
  }

  Widget getGameRow(GameLogsPlayer log) {
    List<String> stats = isSkater ? skaterColumns : goalieColumns;
    return Container(
      height: 48.0,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white))),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              height: 48.0,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Styles.buildTeamSvgImage(log.opponent, size: 20),
                    Text('${log.isHome} ${log.opponent.abb}',
                        style: CustomDataTableSource.firstColumnStyle),
                    Text(
                      log.result,
                      style: CustomDataTableSource.firstColumnStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(Styles.gameLogFormat.format(log.date),
                  style: CustomDataTableSource.firstColumnStyle),
            ),
          ),
          ...stats.map((item) => Expanded(
                child: Text(getStatFromMap(item, log.stats),
                    style: CustomDataTableSource.cellRowStyle),
              )),
        ],
      ),
    );
  }

  static const List<String> skaterColumns = ['timeOnIce', 'goals', 'assists', 'plusMinus', 'pim'];
  static const List<String> goalieColumns = [
    'timeOnIce',
    'shotsAgainst',
    'goalsAgainst',
    'saves',
    'savePercentage'
  ];
}

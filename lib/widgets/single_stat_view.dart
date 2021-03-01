import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/player/player_action.dart';
import 'package:FlutterNhl/redux/states/player/player_state.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/redux/viewmodel/player_view_model.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:FlutterNhl/widgets/custom_dropdown_button.dart';
import 'package:FlutterNhl/widgets/loading_status_widget.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'error_view.dart';

class SingleStatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PlayerStatsViewModel>(
        onInit: (store) => store.dispatch(PlayerStatsTabChangedAction()),
        converter: (store) => PlayerStatsViewModel.fromStore(store),
        builder: (ctx, viewModel) {
          if (viewModel.loadingStatus == LoadingStatus.IDLE) {
            return SliverProgressView(msg: 'Loading player bio');
          } else if (viewModel.loadingStatus == LoadingStatus.LOADING) {
            return SliverProgressView(msg: 'Loading player bio');
          } else if (viewModel.loadingStatus == LoadingStatus.ERROR) {
            return SliverErrorView(error: viewModel.error);
          } else {
            return SliverFillRemaining(
              hasScrollBody: true,
              child: Column(
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
                          onValueChanged: (String stat) =>
                              viewModel.getStats(viewModel.selectedStat.copyWith(stat: stat)),
                        ),
                        CustomDropdownButton(
                          selectedValue: viewModel.selectedStat.gameTypeString,
                          values: PageParam.gameTypes,
                          onValueChanged: (String type) => viewModel.getStats(viewModel.selectedStat
                              .copyWith(gameType: PageParam.getGameTypeBoolean(type))),
                        ),
                      ],
                    ),
                  ),
                  _buildBody(viewModel.selectedStats),
                ],
              ),
            );
          }
        });
  }

  Widget _buildBody(PlayerSeasonTableSource data) {
    if (data == null)
      return SliverErrorView(error: UINoDataDownloadedException('SingleStatView _createStatTab'));
    else {
      return Expanded(
        child: SingleChildScrollView(
          child: CustomDataTable(
            dataTableSource: data,
          ),
        ),
      );
    }
  }
}

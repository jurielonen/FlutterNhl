import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/stats_view_model.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/widgets/custom_dropdown_button.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class StatsAppBarContent implements NestedTemplateViewAppBarContent {
  @override
  double expandedHeight() {
    return 0.0;
  }

  @override
  Widget getExpanded() {
    return null;
  }

  @override
  Widget getTitle(bool isScrolled) {
    return const Text('Stats');
  }

  @override
  bool getLeading() {
    return true;
  }

}

class StatsHome extends StatelessWidget {
  static const String routeName = '/stats';
  static const List<String> _tabs = ['Player', 'Goalie', 'Team'];

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, StatsViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(StatsEntered()),
      converter: (store) => StatsViewModel.fromStore(store),
      builder: (ctx, viewModel) => NestedTemplateView(
        tabs: Map.fromIterable(_tabs,
        key: (name) => name.toString(),
        value: (name) => _getStatsView(ctx, viewModel)),
          loadingStatus: viewModel.loadingStatus,
          errorMsg: viewModel.errorMsg,
          onTabPressed: (int index){
            viewModel.typeChanged(index == 0
                ? StatType.PLAYER
                : index == 1 ? StatType.GOALIE : StatType.TEAM);
          },
        content: StatsAppBarContent(),
      ),
    );
  }

  List<Widget> _getStatsView(BuildContext context, StatsViewModel viewModel) {
    if(viewModel.downloadedStats == null){
      return [SliverFillRemaining(child: ErrorView('No data downloaded'))];
    } else {
      return [
        SliverToBoxAdapter(
          child: Row(
            children: <Widget>[
              CustomDropdownButton(
                selectedValue: viewModel.selectedParams.paramType.stat,
                values: viewModel.statTypes,
                onValueChanged: viewModel.statChanged,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: new DataTable(
                columns: viewModel.downloadedStats.columns,
                rows: viewModel.downloadedStats.setTapListenerToRow(
                    context, viewModel.selectedParams.paramType.type),

                //sortAscending: true,
                //sortColumnIndex: 2,
              ),
            ),
          ),
        ),
      ];
    }
  }
}

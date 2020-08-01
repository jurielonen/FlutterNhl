import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/stats_view_model.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/views/stats/stat_widgets/stat_filter_popup.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:FlutterNhl/widgets/custom_dropdown_button.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view2.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:FlutterNhl/widgets/scaffold_template.dart';
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
      builder: (ctx, viewModel) => ScaffoldTemplate(
          loadingStatus: viewModel.loadingStatus,
          errorMsg: viewModel.errorMsg,
          onTabChanged: (String tab) => _buildStatsView(context, tab, viewModel),
          appBarTitle: Text('Stats'),
          tabs: _createTabs.toList(),
          loadingText: 'Loading stats',
          onTabPressed: (int index){
            viewModel.typeChanged(index == 0
                ? StatType.PLAYER
                : index == 1 ? StatType.GOALIE : StatType.TEAM);
          },
      ),
      /*NestedTemplateView(
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
      ),*/
    );
  }

  Iterable<NestedTemplateTab> get _createTabs sync* {
    for(String tab in _tabs){
      yield NestedTemplateTab(child: Center(child: Text(tab)), text: tab);
    }
  }

  Widget _buildStatsView(BuildContext context, String tab, StatsViewModel viewModel) {
    if(viewModel.downloadedStats == null){
      return ErrorView('Error while downloading stats');
    } else {
      return CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: _buildStatBar(viewModel),
            pinned: true,
            floating: false,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.sort),
                tooltip: 'Set filters',
                onPressed: () => setFilters(context, viewModel.selectedParams, viewModel.paramsChanged),
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              CustomDataTable(dataTableSource: viewModel.downloadedStats),
            ]),
          ),
        ],
      );
    }
  }

  void setFilters(BuildContext context, StatParameters parameters, Function(StatParameters) paramsChanged) async {
    StatParameters returnVal = await Navigator.push(context, MaterialPageRoute(builder: (context) => StatFilterPage(arguments: FilterArguments(parameters))));
    if(returnVal !=  null){
      paramsChanged(returnVal);
    }
  }

  Widget _buildStatBar(StatsViewModel viewModel){
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.navigate_before),
            tooltip: 'Previous page',
            onPressed: viewModel.selectedParams.start == null ? null : () => viewModel.previousPage(),
          ),
          CustomDropdownButton(
            selectedValue: viewModel.selectedParams.paramType.stat,
            values: viewModel.statTypes,
            onValueChanged: viewModel.statChanged,
          ),
          IconButton(
            icon: Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () => viewModel.nextPage(),
          ),
        ],
    );
  }
}

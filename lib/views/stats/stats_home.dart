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
import 'package:FlutterNhl/widgets/custom_scroll_template_view.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view2.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:FlutterNhl/widgets/scaffold_template.dart';
import 'package:FlutterNhl/widgets/template_view.dart';
import 'package:FlutterNhl/widgets/template_view2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class StatsHome extends StatelessWidget {
  static const String routeName = '/stats';
  static const List<String> _tabs = ['Player', 'Goalie', 'Team'];

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, StatsViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(StatsEntered()),
      converter: (store) => StatsViewModel.fromStore(store),
      builder: (ctx, viewModel) => TemplateView2(
        loadingStatus: viewModel.loadingStatus,
        errorMsg: viewModel.errorMsg,
        tabs: _tabs,
        onTabPressed: (int index) {
          viewModel.typeChanged(index == 0
              ? StatType.PLAYER
              : index == 1 ? StatType.GOALIE : StatType.TEAM);
        },
        pageContent: (int index) => _buildStatsView(context, viewModel),
      ),
      /*ScaffoldTemplate(
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
      ),*/
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

  /*Iterable<NestedTemplateTab> get _createTabs sync* {
    for(String tab in _tabs){
      yield NestedTemplateTab(child: Center(child: Text(tab)), text: tab);
    }
  }*/

  List<Widget> _buildStatsView(BuildContext context, StatsViewModel viewModel) {
    if (viewModel.downloadedStats == null) {
      return [SliverErrorView(msg: 'Error while downloading stats')];
    } else {
      return
          [/*SliverAppBar(
            automaticallyImplyLeading: false,
            title: _buildStatBar(viewModel),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.sort),
                tooltip: 'Set filters',
                onPressed: () => setFilters(
                    context, viewModel.selectedParams, viewModel.paramsChanged),
              )
            ],
          ),*/
            SliverToBoxAdapter(
              child: _buildStatBar(context, viewModel),
            ),
            SliverFillRemaining(
              hasScrollBody: true,
              fillOverscroll: true,
              child:
                SingleChildScrollView(scrollDirection: Axis.vertical, child: CustomDataTable(dataTableSource: viewModel.downloadedStats)),
            ),
        ];
    }
  }

  void setFilters(BuildContext context, StatParameters parameters,
      Function(StatParameters) paramsChanged) async {
    StatParameters returnVal = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                StatFilterPage(arguments: FilterArguments(parameters))));
    if (returnVal != null) {
      paramsChanged(returnVal);
    }
  }

  Widget _buildStatBar(BuildContext context, StatsViewModel viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.navigate_before),
          tooltip: 'Previous page',
          onPressed: viewModel.selectedParams.start == null
              ? null
              : () => viewModel.previousPage(),
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
        IconButton(
          icon: const Icon(Icons.sort),
          tooltip: 'Set filters',
          onPressed: () => setFilters(
              context, viewModel.selectedParams, viewModel.paramsChanged),
        )
      ],
    );
  }
}

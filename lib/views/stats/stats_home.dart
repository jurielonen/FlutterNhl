import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/stats/stats_middleware.dart';
import 'package:FlutterNhl/redux/states/stats/stats_table_source.dart';
import 'package:FlutterNhl/redux/viewmodel/stats_view_model.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/views/stats/stats_app_bar.dart';
import 'file:///C:/Users/juri/Documents/GitHub/FlutterNhl/lib/widgets/template_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class StatsHome extends StatelessWidget {
  static const String routeName = '/stats';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, StatsViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(StatsEntered()),
      converter: (store) => StatsViewModel.fromStore(store),
      builder: (_, viewModel) => TemplateView(
          viewModel.loadingStatus,
          StatsView(
              stats: viewModel.downloadedStats,
              type: viewModel.selectedParams.paramType.type),
          StatAppBar(
            viewModel: viewModel,
          ),
          viewModel.errorMsg),
    );
  }
}

class StatsView extends StatelessWidget {
  final StatsTableSource stats;
  final StatType type;
  const StatsView({this.stats, this.type});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: stats.columns,
            rows: stats.setTapListenerToRow(context, type),
          ),
        ),
      ),
    );
  }
}

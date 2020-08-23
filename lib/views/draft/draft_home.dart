import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/draft/draft.dart';
import 'package:FlutterNhl/redux/models/draft/draft_table_source.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/draft_view_model.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:FlutterNhl/widgets/custom_year_select.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/template_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class DraftHome extends StatefulWidget {
  static const String routeName = '/draft';

  @override
  _DraftHomeState createState() => _DraftHomeState();
}

class _DraftHomeState extends State<DraftHome> {
  //int _round = 1;
  //int _firstIndex = 0;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DraftViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(DraftEntered()),
      converter: (store) => DraftViewModel.fromStore(store),
      builder: (ctx, viewModel) => TemplateView(
          viewModel.loadingStatus,
          () => _getTable(viewModel.selectedDraft),
          _getAppBar(viewModel.selectedYear, viewModel.getYear),
          viewModel.error),
    );
  }

  Widget _getTable(DraftTableSource draft) {
    if(draft == null){
      return SliverFillRemaining(
        child: ErrorView(UINoDataDownloadedException('draft_home _getTable')),
      );
    }
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Center(
            child: Container(
              height: 50,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.navigate_before),
                    tooltip: 'Previous round',
                    onPressed: draft.roundsPreviousLeft ? () {
                      setState(() {
                        draft.previousPage();
                      });
                    } : null,
                  ),
                  Text('Draft round: ${draft.round}'),
                  IconButton(
                    icon: Icon(Icons.navigate_next),
                    tooltip: 'Next round',
                    onPressed: draft.roundsNextLeft ? () {
                      print('next round');
                      draft.nextPage();
                      setState(() {});
                    } : null,
                  ),
                ],
              ),
            ),
          ),
          CustomDataTable(dataTableSource: draft),
        ],
      ),
    );
  }

  Widget _getAppBar(int selectedYear, Function onChangeYear) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      title: const Text('Draft'),
      bottom: PreferredSize(preferredSize: Size.fromHeight(50.0), child: Center(
        child: Container(
          height: 50,
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.navigate_before),
                tooltip: 'Previous draft',
                onPressed: 1969 < selectedYear ? () => onChangeYear(selectedYear - 1) : null,
              ),
              CustomYearPicker(
                  selected: selectedYear,
                  onSelected: onChangeYear,
                  maxValue: Config.getCurrentDraft(),
                  minValue: 1969),
              IconButton(
                icon: Icon(Icons.navigate_next),
                tooltip: 'Next draft',
                onPressed: Config.getCurrentDraft() > selectedYear ? () => onChangeYear(selectedYear + 1) : null,
              ),
            ],
          ),
        ),
      ),),
    );
  }
}
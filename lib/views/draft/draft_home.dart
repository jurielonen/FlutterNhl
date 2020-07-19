import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/draft/draft.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/draft_view_model.dart';
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
  int _round = 1;
  int _firstIndex = 0;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DraftViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(DraftEntered()),
      converter: (store) => DraftViewModel.fromStore(store),
      builder: (ctx, viewModel) => TemplateView(
          viewModel.loadingStatus,
          _getTable(viewModel.selectedDraft),
          _getAppBar(viewModel.selectedYear, viewModel.getYear),
          viewModel.errorMsg),
    );
  }

  Widget _getTable(Draft draft) {
    if(draft == null){
      return SliverFillRemaining(
        child: ErrorView('No data downloaded yet'),
      );
    }
    DraftDataTableSource source = DraftDataTableSource(
        draft: draft,
        onRowPressed: (int playerId) {
          print('pressed: $playerId');
        });
    return SliverToBoxAdapter(
      child: PaginatedDataTable(
        header: Text('Draft ${source.year}, round: $_round'),
        columns: <DataColumn>[
          //DataColumn(label: Text('Round')),
          DataColumn(label: Text('Pick')),
          DataColumn(label: Text('Overall pick')),
          DataColumn(label: Text('Prospect')),
          DataColumn(label: Text('Team')),
          DataColumn(label: Text('Position')),
          DataColumn(label: Text('Country')),
          DataColumn(label: Text('Amateur league')),
          DataColumn(label: Text('Amateur team')),
        ],
        rowsPerPage: source.rowsPerPage,
        source: source,
        onPageChanged: (int index) {
          setState(() {
            if(index > _firstIndex)
              _round++;
            else if(index < _firstIndex)
              _round--;
            _firstIndex = index;
          });
        },
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.navigate_before),
              tooltip: 'Previous draft',
              onPressed: () => onChangeYear(selectedYear - 1),
            ),
            CustomYearPicker(
                selected: selectedYear,
                onSelected: onChangeYear,
                maxValue: Config.getCurrentDraft(),
                minValue: 1970),
            /*CustomDropdownButton(selectedValue: selectedYear.toString(), values: years, onValueChanged: (String newValue){
                  int temp = int.tryParse(newValue);
                  if(temp != null)
                    onChangeYear(temp);
                },),*/
            IconButton(
              icon: Icon(Icons.navigate_next),
              tooltip: 'Next draft',
              onPressed: () => onChangeYear(selectedYear + 1),
            ),
          ],
        ),
      ),),
    );
  }
}

/*class DraftHome extends StatelessWidget {
  static const String routeName = '/draft';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DraftViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(DraftEntered()),
      converter: (store) => DraftViewModel.fromStore(store),
      builder: (ctx, viewModel) => TemplateView(
          viewModel.loadingStatus,
          _getTable(viewModel.selectedDraft),
          _getAppBar(viewModel.selectedYear, viewModel.getYear),
          viewModel.errorMsg),
    );
  }

  Widget _getTable(Draft draft) {
    DraftDataTableSource source = DraftDataTableSource(
        draft: draft,
        onRowPressed: (int playerId) {
          print('pressed: $playerId');
        });
    return SliverToBoxAdapter(
      child: PaginatedDataTable(
        header: source.title,
        columns: <DataColumn>[
          //DataColumn(label: Text('Round')),
          DataColumn(label: Text('Pick')),
          DataColumn(label: Text('Overall pick')),
          DataColumn(label: Text('Prospect')),
          DataColumn(label: Text('Team')),
        ],
        rowsPerPage: source.rowsPerPage,
        source: source,
        onPageChanged: (int index) => source.pageChanged(index),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.navigate_before),
              tooltip: 'Previous draft',
              onPressed: () => onChangeYear(selectedYear - 1),
            ),
            CustomYearPicker(
                selected: selectedYear,
                onSelected: onChangeYear,
                maxValue: Config.getCurrentDraft(),
                minValue: 1970),
            /*CustomDropdownButton(selectedValue: selectedYear.toString(), values: years, onValueChanged: (String newValue){
                  int temp = int.tryParse(newValue);
                  if(temp != null)
                    onChangeYear(temp);
                },),*/
            IconButton(
              icon: Icon(Icons.navigate_next),
              tooltip: 'Next draft',
              onPressed: () => onChangeYear(selectedYear + 1),
            ),
          ],
        ),
      ),),
    );
  }

  static const List<String> years = [
    '2019',
    '2018',
    '2017',
    '2016',
    '2015',
    '2014',
    '2013',
    '2012',
    '2011',
    '2010',
    '2009',
    '2008'
  ];
}*/

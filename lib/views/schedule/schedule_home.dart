import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_action.dart';
import 'package:FlutterNhl/redux/viewmodel/schedule_view_model.dart';
import 'package:FlutterNhl/views/schedule/schedule_game.dart';
import 'package:FlutterNhl/views/template_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ScheduleHome extends StatelessWidget {
  static const String routeName = '/schedule';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ScheduleViewModel>(
      distinct: true,
      onInit: (store) =>
          store.dispatch(GetCurrentDateScheduleIfNotLoadedAction()),
      converter: (store) => ScheduleViewModel.fromStore(store),
      builder: (_, viewModel) => TemplateView(
          viewModel.loadingStatus,
          viewModel.selectedSchedule is ScheduleGames ? ScheduleGamesView(viewModel.selectedSchedule) : ScheduleEmptyView(viewModel.selectedSchedule),
          _buildSliverAppBar(
              viewModel.selectedDate, viewModel.changeSelectedDate),
          viewModel.errorMsg),
    );
  }

  Widget _buildSliverAppBar(DateTime date, Function onChangeDate) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      title: Text('NHL'),
      expandedHeight: 150.0,
      flexibleSpace: FlexibleSpaceBar(
        background: _buildDatePicker(date, onChangeDate),
      ),
    );
  }

  Widget _buildDatePicker(DateTime date, Function onChangeDate) {
    return Container(
      color: Color(0x95000000),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.navigate_before),
              tooltip: 'Previous days games',
              onPressed: () => onChangeDate(date.subtract(Duration(days: 1))),
            ),
            Text(Styles.dateFormat.format(date)),
            IconButton(
              icon: Icon(Icons.navigate_next),
              tooltip: 'Next days games',
              onPressed: () => onChangeDate(date.add(Duration(days: 1))),
            ),
          ],
        ),
      ),
    );
  }
}

class ScheduleGamesView extends StatelessWidget {
  final ScheduleGames selectedSchedule;
  ScheduleGamesView(this.selectedSchedule);

  @override
  Widget build(BuildContext context) {
    return SliverFixedExtentList(
      itemExtent: 100.0,
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return ScheduleGameCard(selectedSchedule.games[index]);

            /*Container(
            alignment: Alignment.center,
            color: Colors.lightBlue[100 * (index % 9)],
            child: Text(selectedSchedule.games[index].toString()),
          );*/
        },
        childCount: selectedSchedule.games.length,
      ),
    );
  }
}

class ScheduleEmptyView extends StatelessWidget {
  final Schedule selectedSchedule;
  ScheduleEmptyView(this.selectedSchedule);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.error_outline,
              color: Colors.grey,
              size: 60,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('No games found', style: Styles.errorText),
            ),
          ],
        ),
      ),
    );
  }
}

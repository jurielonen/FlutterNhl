import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:FlutterNhl/redux/models/schedule.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/schedule/schedule_action.dart';
import 'package:FlutterNhl/redux/viewmodel/schedule_view_model.dart';
import 'package:FlutterNhl/views/schedule/schedule_game.dart';
import 'package:FlutterNhl/widgets/custom_date_picker.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/template_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ScheduleHome extends StatelessWidget {
  static const String routeName = '/schedule';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ScheduleViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(ScheduleEntered()),
      onDispose: (store) {
        print('Schedule exited');
        store.dispatch(ScheduleExited());
      },
      converter: (store) => ScheduleViewModel.fromStore(store),
      builder: (_, viewModel) => RefreshTemplateView(
          loadingStatus: viewModel.loadingStatus,
          successContent: viewModel.selectedSchedule is ScheduleGames
              ? _getGamesView(viewModel.selectedSchedule)
              : _getEmptyView(viewModel.selectedSchedule),
          appBar: _buildSliverAppBar(
              viewModel.selectedDate, viewModel.changeSelectedDate),
          errorMsg: viewModel.errorMsg,
          callback: () => _callBack(viewModel)),
    );
  }

  Future<Null> _callBack(ScheduleViewModel viewModel) {
    print('CallBack');
    viewModel.refreshSchedule();
    return null;
  }

  Widget _buildSliverAppBar(DateTime date, Function onChangeDate) {
    return SliverAppBar(
      title: Text('NHL'),
      pinned: true,
      bottom: PreferredSize(
        child: _buildDatePicker(date, onChangeDate),
        preferredSize: Size.fromHeight(50),
      ),
    );
  }

  Widget _buildDatePicker(DateTime date, Function onChangeDate) {
    return Container(
      height: 50,
      color: Color(0x95000000),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.navigate_before),
              tooltip: 'Previous days games',
              onPressed:
                  Config.selectedMinDate().isAfter(date.subtract(Duration(days: 1)))
                      ? null
                      : () => onChangeDate(date.subtract(Duration(days: 1))),
            ),
            CustomDateTimePicker(
                config: CustomDatePickerConfig(Config.minDate, Config.maxDate(),
                    (DateTime date) => onChangeDate(date), DatePickerMode.day),
                selectedDate: date),
            IconButton(
              icon: Icon(Icons.navigate_next),
              tooltip: 'Next days games',
              onPressed: Config.selectedMaxDate().isBefore(date.add(Duration(days: 1)))
                  ? null
                  : () => onChangeDate(date.add(Duration(days: 1))),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getGamesView(ScheduleGames selectedSchedule) {
    if (selectedSchedule == null) {
      return SliverFillRemaining(
        child: ErrorView('No data downloaded yet'),
      );
    }
    bool isPlayoffs = Config.isPlayoffsDate(selectedSchedule.date);
    return SliverFixedExtentList(
      itemExtent: isPlayoffs ? 140.0 : 130.0,
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ScheduleGameCard(selectedSchedule.games[index], isPlayoffs);
        },
        childCount: selectedSchedule.games.length,
      ),
    );
  }

  Widget _getEmptyView(Schedule selectedSchedule) {
    if (selectedSchedule == null) {
      return SliverFillRemaining(
        child: ErrorView('No data downloaded yet'),
      );
    }
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

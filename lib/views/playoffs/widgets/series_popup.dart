import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/playoffs/playoffs.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/playoffs/series/series_action.dart';
import 'package:FlutterNhl/redux/viewmodel/series_view_model.dart';
import 'package:FlutterNhl/views/schedule/schedule_game.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class SeriesPopup extends StatelessWidget {
  final Series series;

  const SeriesPopup({Key key, this.series}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      titleTextStyle: Styles.cardTeamWinnerText,
      title: Text(
        '${series.seriesCurrentGame.seriesStatus}',
        textAlign: TextAlign.center,
      ),
      contentPadding: const EdgeInsets.only(),
      titlePadding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      actionsPadding: const EdgeInsets.only(),
      actions: <Widget>[
        FlatButton(
          child: Text('Close'),
          onPressed: () => Navigator.of(context).pop(),
        )
      ],
      content: Builder(
        builder: (context) {
          var height = MediaQuery.of(context).size.height;
          var width = MediaQuery.of(context).size.width;

          return Container(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? height - 400
                  : height - 100,
              width: width - 1,
              decoration: BoxDecoration(color: Colors.grey),
              child: StoreConnector<AppState, SeriesViewModel>(
                distinct: true,
                onInit: (store) => store.dispatch(SeriesEntered(series)),
                onDispose: (store) => store.dispatch(SeriesExited()),
                converter: (store) => SeriesViewModel.fromStore(store),
                builder: (context, viewModel) => _buildBody(context, viewModel),
              ));
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, SeriesViewModel viewModel) {
    switch (viewModel.loadingStatus) {
      case LoadingStatus.IDLE:
      case LoadingStatus.LOADING:
        return ProgressView('Loading series games');
      case LoadingStatus.SUCCESS:
        return _successContent(viewModel.series);
      case LoadingStatus.ERROR:
        return ErrorView(viewModel.error);
      default:
        return ErrorView(UIUnknownStateException('series_popup: _buildBody'));
    }
  }

  Widget _successContent(Series series) {
    if (series == null || series.games == null) {
      return ErrorView(
        NoDataException('couldn\'t find series games'),
      );
    } else if (series.games.isEmpty) {
      return ErrorView(
        NoDataException('No games played yet'),
        color: Colors.grey,
      );
    }
    return /*SingleChildScrollView(
      child: */
        ListView.builder(
            itemExtent: 140.0,
            itemCount: series.games.length,
            itemBuilder: (BuildContext context, int index) {
              return ScheduleGameCard(series.games[index], true);
            }
            //),
            );
  }
}

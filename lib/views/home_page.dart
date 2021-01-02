import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/app_view_model.dart';
import 'package:FlutterNhl/views/award/award_home.dart';
import 'package:FlutterNhl/views/draft/draft_home.dart';
import 'package:FlutterNhl/views/playoffs/playoffs_home.dart';
import 'package:FlutterNhl/views/schedule/schedule_home.dart';
import 'package:FlutterNhl/views/standing/standing_home.dart';
import 'package:FlutterNhl/views/starred/starred_home.dart';
import 'package:FlutterNhl/views/stats/stats_home.dart';
import 'package:FlutterNhl/widgets/drawer.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const String routeName = '/homepage';
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(InitAction()),
      converter: (store) => AppViewModel.fromStore(store),
      onDidChange: (viewModel) {
        if (viewModel.showSnackBar != null && viewModel.showSnackBar.show) {
          _scaffoldKey.currentState.showSnackBar(SnackBar(
            content: Text(viewModel.showSnackBar.msg),
            duration: viewModel.showSnackBar.duration,
          ));
          viewModel.onSnackBarShowed();
        }
      },
      builder: (ctx, viewModel) => Scaffold(
        key: _scaffoldKey,
        drawer: AppDrawer(
          onTilePressed: (DrawerPages page) => viewModel.pageChanged(page),
        ),
        body: _getBody(
            viewModel.loadingStatus, viewModel.currentPage, viewModel.error),
      ),
    );
  }

  Widget _getBody(
      LoadingStatus loadingStatus, DrawerPages page, Exception error) {
    switch (loadingStatus) {
      case LoadingStatus.IDLE:
      case LoadingStatus.LOADING:
        return Center(child: ProgressView('Loading initial data'));
      case LoadingStatus.ERROR:
        return Center(
          child: ErrorView(error),
        );
      case LoadingStatus.SUCCESS:
        return _getPage(page);
      default:
        return ErrorView(UIUnknownStateException('Unknown state'));
    }
  }

  Widget _getPage(DrawerPages page) {
    switch (page) {
      case DrawerPages.SCHEDULE:
        {
          return ScheduleHome();
        }
      case DrawerPages.STATS:
        {
          return StatsHome();
        }
      case DrawerPages.STANDINGS:
        {
          return StandingHome();
        }
      case DrawerPages.DRAFT:
        {
          return DraftHome();
        }
      case DrawerPages.AWARDS:
        {
          return AwardsHome();
        }
      case DrawerPages.PLAYOFFS:
        {
          return PlayoffsHome();
        }
      case DrawerPages.STARRED:
        {
          return StarredHome();
        }
      default:
        {
          return ErrorView(UIUnknownStateException('Error msg 1: $page'));
        }
    }
  }
}

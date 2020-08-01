import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/viewmodel/app_view_model.dart';
import 'package:FlutterNhl/views/schedule/schedule_home.dart';
import 'package:FlutterNhl/views/standing/standing_home.dart';
import 'package:FlutterNhl/views/stats/stats_home.dart';
import 'package:FlutterNhl/widgets/drawer.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'award/award_home.dart';
import 'draft/draft_home.dart';

class HomePage extends StatelessWidget {
  static final GlobalKey  scaffoldKey = GlobalKey();
  static const String routeName = '/homepage';
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppViewModel>(
      distinct: true,
      converter: (store) => AppViewModel.fromStore(store),
      builder: (ctx, viewModel) => Scaffold(
        key: scaffoldKey,
        drawer: AppDrawer(
          onTilePressed: (DrawerPages page) => viewModel.pageChanged(page),
        ),
        body: _getBody(viewModel.loadingStatus, viewModel.currentPage, viewModel.errorMsg),
      ),
    );
  }

  Widget _getBody(LoadingStatus loadingStatus, DrawerPages page, String errorMsg){
    switch (loadingStatus) {
      case LoadingStatus.IDLE:
      case LoadingStatus.LOADING:
        return Center(child: ProgressView('Loading initial data'));
      case LoadingStatus.ERROR:
        return Center(
          child: ErrorView(errorMsg),
        );
      case LoadingStatus.SUCCESS:
        return _getPage(page);
      default:
        return Center(
          child: ErrorView('Unknown state'),
        );
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
      default:
        {
          return ErrorView('Error msg 1: $page');
        }
    }
  }
}


/*class HomePage extends StatefulWidget {
  static const String routeName = '/homepage';

  @override
  _HomePageState createState() => _HomePageState();
}
///TODO: add initial download
class _HomePageState extends State<HomePage> {
  DrawerPages _page = DrawerPages.DRAFT;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(
        onTilePressed: (DrawerPages page) => setState(() => _page = page),
      ),
      //appBar: AppBar(title: Text('NHL'),),
      body: _getPage(),
    );
  }

  Widget _getPage() {
    switch (_page) {
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
      default:
        {
          return ErrorView('Error msg 1: $_page');
        }
    }
  }
}*/

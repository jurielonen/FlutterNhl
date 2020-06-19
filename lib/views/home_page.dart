import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/views/schedule/schedule_home.dart';
import 'package:FlutterNhl/views/standing/standing_home.dart';
import 'package:FlutterNhl/views/stats/stats_home.dart';
import 'package:FlutterNhl/widgets/drawer.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:flutter/material.dart';

import 'award/award_home.dart';
import 'draft/draft_home.dart';

class HomePage extends StatefulWidget {

  static const String routeName = '/homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DrawerPages _page = DrawerPages.SCHEDULE;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(onTilePressed: (DrawerPages page) =>
          setState(() => _page = page),
      ),
      //appBar: AppBar(title: Text('NHL'),),
      body: _getPage(),
    );
  }

  Widget _getPage(){
    switch(_page){
      case DrawerPages.SCHEDULE: {
        return ScheduleHome();
      }
      case DrawerPages.STATS: {
        return StatsHome();
      }
      case DrawerPages.STANDINGS: {
        return StandingHome();
      }
      case DrawerPages.DRAFT: {
        return DraftHome();
      }
      case DrawerPages.AWARDS: {
        return AwardsHome();
      }
      default: {
        return ErrorView('Error msg 1: $_page');
      }
    }
  }
}
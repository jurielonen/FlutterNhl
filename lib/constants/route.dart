import 'package:FlutterNhl/views/award/recipient/recipient_home.dart';
import 'package:FlutterNhl/views/game/game_home.dart';
import 'package:FlutterNhl/views/home_page.dart';
import 'package:FlutterNhl/views/player/player_home.dart';
import 'package:FlutterNhl/views/search/search_home.dart';
import 'package:FlutterNhl/views/stats/stat_widgets/stat_filter_popup.dart';
import 'package:FlutterNhl/views/team/team_home.dart';
import 'package:FlutterNhl/views/video/video_view.dart';


class Routes {
  //TODO: Add route string from class
  static const String homepage = HomePage.routeName;
  static const String player = PlayerHome.routeName;
  static const String team = TeamHome.routeName;
  static const String game = GameHome.routeName;
  static const String recipient = RecipientHome.routeName;
  static const String statFilter = StatFilterPage.routeName;
  static const String video = VideoView.routeName;
  static const String search = SearchHome.routeName;
}

enum DrawerPages {
  SCHEDULE,
  STANDINGS,
  AWARDS,
  DRAFT,
  STATS,
  PLAYOFFS,
  STARRED,
}
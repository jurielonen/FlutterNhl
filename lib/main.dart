import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/store.dart';
import 'package:FlutterNhl/views/award/recipient/recipient_home.dart';
import 'package:FlutterNhl/views/game/game_home.dart';
import 'package:FlutterNhl/views/home_page.dart';
import 'package:FlutterNhl/views/player/player_home.dart';
import 'package:FlutterNhl/views/stats/stat_widgets/stat_filter_popup.dart';
import 'package:FlutterNhl/views/team/team_home.dart';
import 'package:flutter/material.dart';
import 'package:FlutterNhl/constants/theme.dart';
import 'package:FlutterNhl/constants/route.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';

void main() {
  final Store store = createStore(Client());
  runApp(NHLApp(store));
}

class NHLApp extends StatefulWidget {
  final Store<AppState> store;
  NHLApp(this.store);

  @override
  _NHLAppState createState() => _NHLAppState();
}

class _NHLAppState extends State<NHLApp> {
  @override
  void initState() {
    super.initState();
    widget.store.dispatch(InitAction());
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: MaterialApp(
        title: 'NHL',
        theme: _kNHLTheme,
        routes: {
          //TODO: Add routes string from class
          Routes.homepage: (context) => HomePage(),
          Routes.game: (context) => GameHome(
                argument: ModalRoute.of(context).settings.arguments,
              ),
          Routes.team: (context) => TeamHome(
                teamArguments: ModalRoute.of(context).settings.arguments,
              ),
          Routes.player: (context) =>
              PlayerHome(playerArgs: ModalRoute.of(context).settings.arguments),
          Routes.recipient: (context) => RecipientHome(
                selectedAward: ModalRoute.of(context).settings.arguments,
              ),
          Routes.statFilter: (context) => StatFilterPage(
              arguments: ModalRoute.of(context).settings.arguments)
        },
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

final ThemeData _kNHLTheme = buildNHLTheme();

import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/search/search.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/search/search_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/search_view_model.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/views/player/player_home.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class SearchHome extends StatefulWidget {
  static const String routeName = '/search';
  final SearchArguments arguments;
  const SearchHome({Key key, this.arguments}) : super(key: key);

  @override
  _SearchHomeState createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
  TextEditingController _controller;
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(() {

    });
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SearchViewModel>(
      distinct: true,
      onInit: (store) {
        print('store text ${store.state.searchState.searchQuery}');
        if (store.state.searchState.searchQuery != null &&
            store.state.searchState.searchQuery.isNotEmpty) {
          print('store text ${store.state.searchState.searchQuery}');
          //_text = store.state.searchState.searchQuery;
          _controller.text = store.state.searchState.searchQuery;
        }
      },
      converter: (store) => SearchViewModel.fromStore(store),
      onDispose: (store) {
        store.dispatch(SearchFilterAction(_controller.text));
      },
      builder: (context, viewModel) {
        print('search rebuild');
        return Scaffold(
          appBar: AppBar(
            title: TextField(
              controller: _controller,
              onChanged: (String text) =>
                onTextChanged(text, viewModel),
            ),
          ),
          body: getBody(viewModel),
        );
      },
    );
  }

  void onTextChanged(String text, SearchViewModel viewModel) {

    if (text.length > 0) {
      if(viewModel.searchQuery == null || viewModel.searchQuery == ''){
        viewModel.searchInitialized(text, false);
      }
      else if (text.length < viewModel.searchQuery.length) {
        viewModel.searchInitialized(text, false);
      } else if (viewModel.search == null || viewModel.search.needApi) {
        viewModel.searchInitialized(text, false);
      } else {
        setState(() {
          viewModel.search.filter = text;
        });
      }
    } else {
      setState(() {});
    }
  }

  Widget getBody(SearchViewModel viewModel) {
    switch (viewModel.loadingStatus) {
      case LoadingStatus.IDLE:
        return ErrorView(
          'Search for players',
          color: Colors.grey,
        );
      case LoadingStatus.LOADING:
        return ProgressView('Searching for players');
      case LoadingStatus.SUCCESS:
        return getList(viewModel.search);
      case LoadingStatus.ERROR:
        return ErrorView(
            viewModel.errorMsg == '' ? 'Error' : viewModel.errorMsg);
      default:
        return ErrorView('Unknown state in search view');
    }
  }

  Widget getList(Search search) {
    if (search == null || search.searchValues == null || _controller.text.length == 0) {
      return ErrorView(
        'Search for players',
        color: Colors.grey,
      );
    } else if (search.searchValues.isEmpty) {
      return ErrorView('No players found');
    } else {
      List<PlayerSearch> players = search.getPlayersFiltered;
      return ListView.builder(
        itemCount: players.length,
        padding: EdgeInsets.all(0.0),
        itemBuilder: (BuildContext context, int index) {
          PlayerSearch player = players[index];
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, PlayerHome.routeName,
                arguments: PlayerArguments(
                    player,
                    player.position.isPlayer()
                        ? StatType.PLAYER
                        : StatType.GOALIE)),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Theme.of(context).hintColor))),
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Styles.buildPlayerCircleIcon(player, size: 30.0),
                    ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(player.fullname),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(child: Styles.buildTeamSvgImageAbb(Team.getTeamLogoUrl(player.teamAbb), )),
                            Expanded(child: Text(player.statusText)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }
}

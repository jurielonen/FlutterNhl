import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/player/player_table_source.dart';
import 'package:FlutterNhl/redux/viewmodel/team_view_model.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/views/team/widgets/team_bio.dart';
import 'package:FlutterNhl/views/team/widgets/team_game_log.dart';
import 'package:FlutterNhl/views/team/widgets/team_player.dart';
import 'package:FlutterNhl/widgets/custom_dropdown_button.dart';
import 'package:FlutterNhl/widgets/custom_list_tile.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class TeamPageAppBarContent implements NestedTemplateViewAppBarContent {
  final TeamPage team;

  TeamPageAppBarContent(this.team);

  @override
  Widget getExpanded() {
    if(team == null)
      return null;
    return FlexibleSpaceBar(
      collapseMode: CollapseMode.parallax,
      background: CustomListTile(
        thumbnail: Styles.buildTeamBoxIcon(team),
        title: team.name,
        listItems: team.teamInfoMap,
      ),
    );
  }

  @override
  Widget getTitle(bool isScrolled) {
    return null;
  }

  @override
  double expandedHeight() {
    return 200.0;
  }

  @override
  Widget getLeading() {
    return Text('');
  }
}

class TeamHome extends StatelessWidget {
  static const String routeName = '/team';
  static const List<String> _tabs = ['Bio', 'Players', 'Stats', 'Game Logs'];
  final TeamArguments teamArguments;

  const TeamHome({Key key, this.teamArguments}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(teamArguments.teamName),
      ),
      body: StoreConnector<AppState, TeamViewModel>(
        distinct: true,
        onInit: (store) => store.dispatch(TeamEntered(teamArguments.teamId)),
        converter: (store) => TeamViewModel.fromStore(store),
        builder: (ctx, viewModel) => NestedTemplateView(
          tabs: _createTabs(ctx, viewModel),
          loadingStatus: viewModel.loadingStatus,
          errorMsg: viewModel.error,
          onTabPressed: (int index) {
            if (_tabs.length > index) {
              switch (_tabs[index]) {
                case 'Stats':
                  viewModel.getStats(viewModel.selectedStat);
                  break;
                case 'Game Logs':
                  viewModel.getGameLogs(viewModel.selectedDate);
                  break;
                case 'Players':
                  viewModel.getPlayers();
                  break;
              }
            }
          },
          content: TeamPageAppBarContent(viewModel.team),
        ),
      ),
    );
  }

  Map<String, List<Widget>> _createTabs(
      BuildContext context, TeamViewModel viewModel) {
    return Map.fromIterable(
      _tabs,
      key: (name) => name.toString(),
      value: (name) {
        switch (name) {
          case 'Bio':
            return _createBioTab(viewModel.team);
          case 'Players':
            return _createPlayerTab(viewModel.team);
          case 'Stats':
            return _createStatTab(viewModel);
          case 'Game Logs':
            return _createGameLogTab(viewModel);
          default:
            return <Widget>[
              SliverFillRemaining(child: ErrorView('Unknown tab'))
            ];
        }
      },
    );
  }

  List<Widget> _createBioTab(TeamPage team){
    if(team == null)
      return [SliverFillRemaining(child: ErrorView('No data downloaded'))];
    else
      return <Widget>[TeamBioTab(team: team,)];
  }

  List<Widget> _createPlayerTab(TeamPage team){
    ///TODO: add year change
    List<Widget> widgets = [];
    if(team != null && team.containsRosterStats()){
      widgets.add(SliverFixedExtentList(
        itemExtent: 100,
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) =>
              TeamPlayerCard(player: team.rosterStats[index],),
          childCount: team.rosterStats.length,
        ),
      ));
    } else {
      widgets.add(SliverFillRemaining(child: ErrorView('Roster not downloaded')));
    }
    return widgets;
  }

  List<Widget> _createStatTab(TeamViewModel viewModel) {
    List<Widget> widgets = [
      SliverToBoxAdapter(
          child: CustomDropdownButton(
            selectedValue: viewModel.selectedStat,
            values: viewModel.displayItems,
            onValueChanged: viewModel.getStats,
          )),
    ];
    if (viewModel.team != null && viewModel.team.containsStat(viewModel.selectedStat)) {
      PlayerTableSource stats = viewModel.team.getStat(viewModel.selectedStat);
      widgets.add(SliverFillRemaining(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(columns: stats.columns, rows: stats.rows),
          ),
        ),
      ),);
    } else {
      widgets.add(SliverFillRemaining(child: ErrorView('No data downloaded')));
    }
    return widgets;
  }

  static const List<String> years = [
    '20192020',
    '20182019',
    '20172018',
    '20162017',
    '20152016'
  ];

  List<Widget> _createGameLogTab(TeamViewModel viewModel) {
    List<Widget> widgets = [
      SliverToBoxAdapter(
          child: CustomDropdownButton(
            selectedValue: years.first,
            values: years,
            onValueChanged: viewModel.getGameLogs,
          )),
    ];
    if(viewModel.team != null && viewModel.team.containsGameLog(viewModel.selectedDate)){
      List<Game> logs = viewModel.team.getGames(viewModel.selectedDate);
      widgets.add(SliverFixedExtentList(
        itemExtent: 100,
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) =>
              TeamGameLogCard(team: viewModel.team, game: logs[index],),
          childCount: logs.length,
        ),
      ),);
    } else {
      widgets.add(SliverFillRemaining(child: ErrorView('No data downloaded')));
    }
    return widgets;
  }
}

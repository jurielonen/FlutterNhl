import 'package:FlutterNhl/redux/models/constants.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/states/stats/stats_middleware.dart';
import 'package:FlutterNhl/redux/viewmodel/stats_view_model.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/views/template_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:kt_dart/collection.dart';

class StatsHome extends StatelessWidget {
  static const String routeName = '/stats';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, StatsViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(StatsEntered()),
      converter: (store) => StatsViewModel.fromStore(store),
      builder: (_, viewModel) => TemplateView(
          viewModel.loadingStatus,
          StatsView(stats: viewModel.downloadedStats),
          _buildSliverAppBar(),
          viewModel.errorMsg),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      title: StatTabBar(
        onTabSelected: (String value){
          print('$value selected');
        },
      ),
      expandedHeight: 150.0,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: <StretchMode>[
          StretchMode.zoomBackground,
          StretchMode.blurBackground,
          StretchMode.fadeTitle,
        ],
        background: const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.0, 0.5),
              end: Alignment(0.0, 0.0),
              colors: <Color>[
                Color(0x60000000),
                Color(0x00000000),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StatTabBar extends StatefulWidget {
  final Function(String) onTabSelected;

  const StatTabBar({this.onTabSelected});

  @override
  _StatTabBarState createState() => _StatTabBarState();
}

class _StatTabBarState extends State<StatTabBar> {
  final List<String> _tabs = ['Player', 'Goalie', 'Team'];
  final List<bool> _isSelected = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ToggleButtons(
          borderColor: Colors.transparent,
          fillColor: Colors.transparent,
          renderBorder: false,
          borderWidth: 0,
          children: _tabs.asMap()
              .map((index, value) =>
              MapEntry(index, Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 90,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: _isSelected[index] ? Colors.blue : Colors.transparent, width: 2))
                  ),
                  child: Text(value, textAlign: TextAlign.center,),
                ),
              )))
              .values
              .toList(),
          /*_tabs.map((key) => Column(
            children: <Widget>[
              Text(key),

            ],
          )).toList(),*/
          onPressed: (int index){
            setState(() {
              for (int buttonIndex = 0; buttonIndex < _isSelected.length; buttonIndex++) {
                if (buttonIndex == index) {
                  _isSelected[buttonIndex] = true;
                } else {
                  _isSelected[buttonIndex] = false;
                }
              }
              widget.onTabSelected(_tabs[index]);
            });
          },
          isSelected: _isSelected,
        ),
      ],
    );
  }
}

class StatsView extends StatelessWidget {
  final StatsTableSource stats;
  const StatsView({this.stats});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: stats.columns,
            rows: stats.rows,
          ),
        ),
      ),
    );
  }
}

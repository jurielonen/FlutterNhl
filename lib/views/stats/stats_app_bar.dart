import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/viewmodel/stats_view_model.dart';
import 'package:FlutterNhl/widgets/custom_dropdown_button.dart';
import 'package:flutter/material.dart';

class StatAppBar extends StatelessWidget {

  static const List<String> _tabs = ['Player', 'Goalie', 'Team'];
  final Function(StatType) onTabSelected;

  const StatAppBar({Key key, @required this.onTabSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      title: Text('Stats'),
      bottom: PreferredSize(
      preferredSize: const Size.fromHeight(50.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _tabs.map((e) => Tab(text: e, )).toList(),
        ),
      )
    );
  }
}
/*
class StatAppBar extends StatefulWidget {
  final StatsViewModel viewModel;

  const StatAppBar({@required this.viewModel});

  @override
  _StatAppBarState createState() => _StatAppBarState();
}

class _StatAppBarState extends State<StatAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      title: Text('Stats'),
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: StatTabBar(
            onTabSelected: widget.viewModel.typeChanged,
            onTypeSelected: widget.viewModel.statChanged,
            statTypes: widget.viewModel.statTypes,
            selectedStat: widget.viewModel.selectedParams.paramType,
            nextPage: widget.viewModel.nextPage,
            previousPage: widget.viewModel.previousPage,
          )),
    );
  }
}

class StatTypeBar extends StatelessWidget {
  final List<String> statTypes;
  final String selectedStat;

  const StatTypeBar({Key key, this.statTypes, this.selectedStat})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedStat,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        print('value picked: $newValue');
      },
      items: statTypes.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class StatTabBar extends StatefulWidget {
  final Function(StatType) onTabSelected;
  final Function(String) onTypeSelected;
  final Function() nextPage;
  final Function() previousPage;
  final List<String> statTypes;
  final ParamType selectedStat;

  const StatTabBar(
      {this.onTabSelected,
      this.onTypeSelected,
      this.statTypes,
      this.selectedStat,
      this.nextPage,
      this.previousPage});

  @override
  _StatTabBarState createState() => _StatTabBarState();
}

class _StatTabBarState extends State<StatTabBar> {
  final List<String> _tabs = ['Player', 'Goalie', 'Team'];
  final List<bool> _isSelected = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ToggleButtons(
              borderColor: Colors.transparent,
              fillColor: Colors.transparent,
              renderBorder: false,
              borderWidth: 0,
              children: _tabs
                  .asMap()
                  .map((index, value) => MapEntry(
                      index,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: _isSelected[index]
                                          ? Colors.blue
                                          : Colors.transparent,
                                      width: 2))),
                          child: Text(
                            value,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )))
                  .values
                  .toList(),
              onPressed: (int index) {
                for (int buttonIndex = 0;
                    buttonIndex < _isSelected.length;
                    buttonIndex++) {
                  if (buttonIndex == index) {
                    _isSelected[buttonIndex] = true;
                  } else {
                    _isSelected[buttonIndex] = false;
                  }
                }
                StatType temp = index == 0
                    ? StatType.PLAYER
                    : index == 1 ? StatType.GOALIE : StatType.TEAM;
                widget.onTabSelected(temp);
              },
              isSelected: _isSelected,
            ),
          ],
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.navigate_before),
                tooltip: 'Previous page',
                onPressed: () => widget.previousPage(),
              ),
              CustomDropdownButton(
                selectedValue: widget.selectedStat.stat,
                values: widget.statTypes,
                onValueChanged: widget.onTypeSelected,
              ),
              /*DropdownButton<String>(
                value: widget.selectedStat.stat,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String newValue) {
                  widget.onTypeSelected(newValue);
                },
                items: widget.statTypes
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),*/
              IconButton(
                icon: Icon(Icons.navigate_next),
                tooltip: 'Next page',
                onPressed: () => widget.nextPage(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
*/
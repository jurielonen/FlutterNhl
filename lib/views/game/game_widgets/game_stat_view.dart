import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/widgets/custom_scroll_template_view.dart';
import 'package:flutter/material.dart';

class GameStats extends StatelessWidget {
  final Map<String, dynamic> homeStats;
  final Map<String, dynamic> awayStats;
  final Color homeColor;
  final Color awayColor;

  const GameStats({Key key, @required this.homeStats, @required this.awayStats, @required this.homeColor, @required this.awayColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.fromLTRB(0, 15.0, 0, 0),
      sliver: SliverFixedExtentList(
        itemExtent: 60.0,
        delegate:
        SliverChildBuilderDelegate((BuildContext context, int index) {
          return statListTiles.elementAt(index);
        }, childCount: statListTiles.length),
      ),
    );
  }

  Iterable<Widget> get statListTiles sync* {
    for(String key in homeStats.keys){
      if(homeStats.containsKey(key) && awayStats.containsKey(key)) {
        yield StatListTile(key, getStatFromMap(key, homeStats), getStatFromMap(key, awayStats), homeColor, awayColor);
      }
    }
  }
}


class StatListTile extends StatelessWidget{
  final String _name;
  final String _home;
  final String _away;
  final Color _homeColor;
  final Color _awayColor;

  StatListTile(this._name, this._home, this._away, this._homeColor, this._awayColor);

  @override
  Widget build(BuildContext context) {
    String homeText = _home;
    String awayText = _away;
    if(Styles.containsPercentage(_name)){
      homeText += '%';
      awayText += '%';
    }

    return Column(
      children: [Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(homeText, style: Styles.statTileNumber,),
          ),
          Expanded(
            //alignment: Alignment.centerLeft,
            child: Center(child: Text(getColumnTooltip(_name).toUpperCase(), style: Styles.statTileText,)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(awayText, style: Styles.statTileNumber,),
          ),

        ],
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: LinearProgressIndicator(
          backgroundColor: _awayColor,
          valueColor: AlwaysStoppedAnimation<Color>(_homeColor,),
          value: checkValues(),
        ),
      ),
    ]
    );
  }

  double checkValues(){
    if((_away == null && _home == null) ||
        (_away == '0' && _home == '0') ||
        (_away == '0.0' && _home == '0.0'))
      return 0.5;

    return (double.parse(_home) / (double.parse(_home) + double.parse(_away)));
  }
}
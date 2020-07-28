import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/widgets/custom_scroll_template_view.dart';
import 'package:flutter/material.dart';

class GameStats extends StatelessWidget {
  final Map<String, dynamic> homeStats;
  final Map<String, dynamic> awayStats;
  final Color homeColor;

  const GameStats({Key key, @required this.homeStats, @required this.awayStats, @required this.homeColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(statListTiles.toList()),
      );
  }

  Iterable<Widget> get statListTiles sync* {
    for(String key in homeStats.keys){
      if(homeStats.containsKey(key) && awayStats.containsKey(key)) {
        yield StatListTile(key, getStatFromMap(key, homeStats), getStatFromMap(key, awayStats), homeColor);
      }
    }
  }
}


class StatListTile extends StatelessWidget{
  final String _name;
  final String _home;
  final String _away;
  final Color _homeColor;

  StatListTile(this._name, this._home, this._away, this._homeColor);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(_home),
          ),
          Expanded(
            //alignment: Alignment.centerLeft,
            child: Center(child: Text(_name.toUpperCase())),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(_away),
          ),

        ],
      ),
      subtitle: LinearProgressIndicator(
        backgroundColor: Colors.grey,
        valueColor: AlwaysStoppedAnimation<Color>(_homeColor,),
        value: checkValues(),
      ),
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
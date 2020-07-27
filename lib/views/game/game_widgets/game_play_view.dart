import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:FlutterNhl/redux/models/game/play/play_enum.dart';
import 'package:FlutterNhl/views/game/game_widgets/play_card.dart';
import 'package:FlutterNhl/widgets/custom_scroll_template_view.dart';
import 'package:flutter/material.dart';

class PlayFilterEntry {
  const PlayFilterEntry(this.name, this.enumValue);
  final String name;
  final PlayEnum enumValue;
}

class GamePlayView extends StatefulWidget {
  final List<Play> plays;
  final int homeId;

  const GamePlayView({Key key, @required this.plays, @required this.homeId}) : super(key: key);
  @override
  _GamePlayViewState createState() => _GamePlayViewState();
}

class _GamePlayViewState extends State<GamePlayView> {
  static const List<PlayFilterEntry> _plays = [
     PlayFilterEntry("GOAL", PlayEnum.GOAL),
     PlayFilterEntry("SHOT", PlayEnum.SHOT),
     PlayFilterEntry("MISSED_SHOT", PlayEnum.MISSED_SHOT),
     PlayFilterEntry("PENALTY", PlayEnum.PENALTY),
     PlayFilterEntry("FACEOFF", PlayEnum.FACEOFF),
     PlayFilterEntry("HIT", PlayEnum.HIT),
     PlayFilterEntry("BLOCKED_SHOT", PlayEnum.BLOCKED_SHOT),
     PlayFilterEntry("TAKEAWAY", PlayEnum.TAKEAWAY),
     PlayFilterEntry("GIVEAWAY", PlayEnum.GIVEAWAY),
     PlayFilterEntry("FIGHT", PlayEnum.FIGHT),
     PlayFilterEntry("CHALLENGE", PlayEnum.CHALLENGE),
  ];

  List<PlayEnum> _selectedPlays = [PlayEnum.GOAL, PlayEnum.PERIOD_START];



  @override
  Widget build(BuildContext context) {
    return CustomScrollTemplateView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 150.0,
          leading: null,
          automaticallyImplyLeading: false,
          flexibleSpace: FlexibleSpaceBar(
            //centerTitle: true,
            /*background: Wrap(
                spacing: 1,
                runSpacing: 1,
                //scrollDirection: Axis.horizontal,
                children: playWidgets.toList(),
            ),*/
            background: Container(
              color: Colors.black,
              alignment: Alignment.center,
              child: Wrap(
                spacing: 5,
                runSpacing: 5,
                //scrollDirection: Axis.horizontal,
                children: playWidgets.toList(),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(filteredPlayList.toList()),
        ),
      ],
    );
  }

  Iterable<Widget> get playWidgets sync* {
    for(PlayEnum selectedPlay in _selectedPlays){
      PlayFilterEntry entry = _plays.firstWhere((element) =>
      element.enumValue == selectedPlay, orElse: () => null);
      if(entry != null)
        yield _makeChip(entry);
    }
    for (PlayFilterEntry entry in _plays) {
      if(!_selectedPlays.contains(entry.enumValue))
        yield _makeChip(entry);
    }
  }

  Widget _makeChip(PlayFilterEntry entry){
    return FilterChip(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      labelStyle: Styles.playTitleText,
      label: Text(entry.name),
      selected: _selectedPlays.contains(entry.enumValue),
      onSelected: (bool value) {
        setState(() {
          if (value) {
            _selectedPlays.add(entry.enumValue);
          } else {
            _selectedPlays.removeWhere((PlayEnum value) {
              return value == entry.enumValue;
            });
          }
        });
      },
    );
  }

  Iterable<Widget> get filteredPlayList sync*{
    for(Play play in widget.plays){
      for(PlayEnum value in _selectedPlays){
        if(play.type == value){
          yield getPlayCard(play, widget.homeId);
        }
      }
    }
  }
}


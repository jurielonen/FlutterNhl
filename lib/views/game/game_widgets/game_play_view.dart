import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:FlutterNhl/redux/models/game/play/play_enum.dart';
import 'package:FlutterNhl/views/game/game_widgets/play_card.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayFilterEntry {
  PlayFilterEntry( this.enumValue){
    name = playEnumToString(enumValue);
  }
  String name;
  final PlayEnum enumValue;
}

class GamePlayView extends StatefulWidget {
  final List<Play> plays;
  final int homeId;

  const GamePlayView({Key key, @required this.plays, @required this.homeId})
      : super(key: key);
  @override
  _GamePlayViewState createState() => _GamePlayViewState();
}

class _GamePlayViewState extends State<GamePlayView> {
  List<PlayFilterEntry> _plays = [
    PlayFilterEntry(PlayEnum.GOAL),
    PlayFilterEntry(PlayEnum.SHOT),
    PlayFilterEntry(PlayEnum.MISSED_SHOT),
    PlayFilterEntry(PlayEnum.PENALTY),
    PlayFilterEntry(PlayEnum.FACEOFF),
    PlayFilterEntry(PlayEnum.HIT),
    PlayFilterEntry(PlayEnum.BLOCKED_SHOT),
    PlayFilterEntry(PlayEnum.TAKEAWAY),
    PlayFilterEntry(PlayEnum.GIVEAWAY),
    PlayFilterEntry(PlayEnum.FIGHT),
    PlayFilterEntry(PlayEnum.CHALLENGE),
  ];

  List<PlayEnum> _selectedPlays = [PlayEnum.GOAL, PlayEnum.PERIOD_START];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: playWidgets.toList(),
                ),
              ),
            ),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            if (filteredPlayList.length > index)
              return filteredPlayList.elementAt(index);
            else
              return ErrorView(UIUnknownStateException('game_play_view'));
          }, childCount: filteredPlayList.length),
        ),
      ],
    );
  }

  Iterable<Widget> get playWidgets sync* {
    for (PlayEnum selectedPlay in _selectedPlays) {
      PlayFilterEntry entry = _plays.firstWhere(
          (element) => element.enumValue == selectedPlay,
          orElse: () => null);
      if (entry != null) yield _makeChip(entry);
    }
    for (PlayFilterEntry entry in _plays) {
      if (!_selectedPlays.contains(entry.enumValue)) yield _makeChip(entry);
    }
  }

  Widget _makeChip(PlayFilterEntry entry) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FilterChip(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        labelStyle: Styles.playTitleText,
        label: Text(playEnumToString(entry.enumValue)),
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
      ),
    );
  }

  Iterable<Widget> get filteredPlayList sync* {
    for (Play play in widget.plays) {
      for (PlayEnum value in _selectedPlays) {
        if (play.type == value) {
          yield getPlayCard(play, widget.homeId);
        }
      }
    }
  }
}

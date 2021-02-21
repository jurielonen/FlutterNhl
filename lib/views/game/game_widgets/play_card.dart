import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/views/player/widgets/player_bio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget getPlayCardSummary(Play play, int home) {
  if (play is ScoringPlay) {
    return PlayPlayersVideoCard(
      play: play,
      home: home == play.team.id,
    );
  } else if (play is PlayWithPlayers) {
    return PlayPlayersCard(
      play: play,
      home: home == play.team.id,
    );
  } else {
    return PlayCard(
      play: play,
      summaryView: true,
    );
  }
}

Widget getPlayCard(Play play, int home) {
  if (play is PlayWithPlayers)
    return PlayPlayersCard(
      play: play,
      home: home == play.team.id,
    );
  else
    return PlayCard(play: play);
}

class PlayCard extends StatelessWidget {
  final Play play;
  final bool summaryView;

  const PlayCard({Key key, this.play, this.summaryView = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (summaryView)
      return PlayerBioTab.createSecondaryHeaderDivider('${play.about.ordinalNum} ${play.event}');
    else
      return PlayerBioTab.createHeaderDivider('${play.about.ordinalNum} ${play.event}');
  }
}

class PlayPlayersCard extends StatelessWidget {
  final PlayWithPlayers play;
  final bool home;

  const PlayPlayersCard({Key key, this.play, this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Row(
            children: <Widget>[
              Styles.buildTeamSvgImage(play.team, size: 20),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        play.playHeader,
                        style: Styles.playHeaderText,
                      ),
                      Text(
                        play.playDesc,
                        style: Styles.playDescText,
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PlayPlayersVideoCard extends StatelessWidget {
  final ScoringPlay play;
  final bool home;

  const PlayPlayersVideoCard({Key key, this.play, this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Row(
            children: <Widget>[
              Styles.buildTeamSvgImage(play.team, size: 20),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        play.playHeader,
                        style: Styles.playHeaderText,
                      ),
                      Text(
                        play.playDesc,
                        style: Styles.playDescText,
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                  icon: Icon(Icons.play_circle_fill),
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.video, arguments: VideoArguments(play.video.videoUrl));
                  }),
            ],
          ),
        ),
      ],
    );
  }
}

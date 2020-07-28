import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:FlutterNhl/widgets/custom_scroll_template_view.dart';
import 'package:flutter/material.dart';

class GameVideoView extends StatelessWidget {
  final Content content;

  const GameVideoView({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollTemplateView(
      slivers: [
        SliverFixedExtentList(
          itemExtent: 300.0,
          delegate: SliverChildListDelegate(
            videoCards.toList(),
          ),
        ),
      ],
    );
  }

  Iterable<Widget> get videoCards sync* {
    for (Video video in content.videos) {
      yield ImageCard(
          onPressed: () => print('pressed $video'),
          imageUrl: video.videoPic.src,
          title: video.title,
          description: video.blurb);
    }
  }
}

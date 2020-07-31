import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:flutter/material.dart';

class GameVideoView extends StatelessWidget {
  final Content content;

  const GameVideoView({Key key, @required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFixedExtentList(
          itemExtent: 300.0,
          delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                  return videoCard(index);
              }, childCount: content.videos.length),
          /*SliverChildListDelegate(
            videoCards.toList(),
          ),*/
        );
  }

  /*Iterable<Widget> get videoCards sync* {
    for (Video video in content.videos) {
      yield ImageCard(
          onPressed: () => print('pressed $video'),
          imageUrl: video.videoPic.src,
          title: video.title,
          description: video.blurb);
    }
  }*/

  Widget videoCard(int index) {
    if(content.videos.length > index) {
      final video = content.videos[index];
      return ImageCard(onPressed: () => print('pressed $video'),
          imageUrl: video.videoPic.src,
          title: video.title,
          description: video.blurb);
    } else {
      return ErrorView('Unknown index');
    }
  }
}

import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
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
        );
  }

  Widget videoCard(int index) {
    if(content.videos.length > index) {
      final video = content.videos[index];
      return VideoCard(video: video,);
    } else {
      return ErrorView(UIUnknownStateException('game_video_view build'));
    }
  }
}

class VideoCard extends StatelessWidget {
  final Video video;
  const VideoCard({Key key, this.video}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ImageCard(onPressed: () => Navigator.pushNamed(context, Routes.video, arguments: VideoArguments(video.videoUrl)),
        imageUrl: video.videoPic.src,
        title: video.title,
        description: video.blurb);
  }
}

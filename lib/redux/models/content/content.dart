import 'package:FlutterNhl/redux/models/helpers.dart';

class Content {
  List<Video> videos;

  Content({this.videos});

  factory Content.fromJson(Map<String, dynamic> json) {
    List<Video> tVideos = [];
    List<dynamic> recaps = getJsonList(['media', 'epg'], json);
    recaps.forEach((recap) {
      String title = getJsonString('title', recap);
      if (title == 'Extended Highlights' || title == 'Recap') {
        tVideos.add(Video.fromJson(getJsonObject(['items', 0], recap)));
      }
    });

    List<dynamic> highlights =
        getJsonList(['highlights', 'scoreboard', 'items'], json);
    if (highlights.length < 1) {
      highlights = getJsonList(['highlights', 'scoreboard', 'items'], json);
    }
    if (highlights.length > 0) {
      highlights.forEach((highlight) {
        String type = getJsonString('type', highlight);
        if (type == 'video') {
          tVideos.add(Video.fromJson(highlight));
        }
      });
    }
    return Content(
      videos: tVideos,
    );
  }
}

class Video {
  final String title;
  final String blurb;
  final String description;
  final String duration;
  final String videoUrl;
  final VideoPic videoPic;

  Video({
    this.title,
    this.blurb,
    this.description,
    this.duration,
    this.videoUrl,
    this.videoPic,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    List<dynamic> playbacks = getJsonList(['playbacks'], json);
    String url = '';
    int quality = 0;
    playbacks.forEach((playback) {
      if (playback is Map<String, dynamic>) {
        String name = getJsonString('name', playback);
        if (name.startsWith('FLASH_')) {
          int tQuality = 0;
          if(name.contains('X'))
            tQuality = int.parse(name.split('X').last);
          else if(name.contains('x'))
            tQuality = int.parse(name.split('x').last);
          if (quality < tQuality) {
            quality = tQuality;
            url = getJsonString('url', playback);
          }
        }
      }
    });

    VideoPic pic = VideoPic.empty();
    Map<String, dynamic> image = getJsonObject(['image', 'cuts'], json);
    if (image != null && image.isNotEmpty) {
      if (image.containsKey('248x140')) {
        pic = VideoPic.fromJson(image['248x140']);
      } else {
        pic = VideoPic.fromJson(image[image.keys.first]);
      }
    }
    return Video(
        title: getJsonString('title', json),
        blurb: getJsonString('blurb', json),
        description: getJsonString('description', json),
        duration: getJsonString('duration', json),
        videoUrl: url,
        videoPic: pic);
  }
}

class VideoPic {
  int width;
  int height;
  String src;

  VideoPic({
    this.width,
    this.height,
    this.src,
  });

  factory VideoPic.fromJson(Map<String, dynamic> json) => VideoPic(
        width: getJsonInt('width', json),
        height: getJsonInt('height', json),
        src: getJsonString('src', json),
      );

  VideoPic.empty() : this(width: -1, height: -1, src: '');
}

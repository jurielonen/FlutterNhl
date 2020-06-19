import 'package:FlutterNhl/redux/models/content/content.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

import '../../test_data/stats_api_resp/content.ignore.dart';

void main() {
  group('content/Video', () {
    Video empty = Video(
        title: '',
        blurb: '',
        description: '',
        duration: '',
        videoUrl: '',
        videoPic: VideoPic(width: -1, height: -1, src: ''));

    Video video1 = Video(
        title: 'Saad goes five-hole in front',
        blurb: "SJS@CHI: Saad slips DeBrincat's pass past Dell",
        description: "Brandon Saad receives a pass from Alex DeBrincat, dekes to his forehand and slips a shot through Aaron Dell's five-hole for a 3-1 lead",
        duration: '00:44',
        videoUrl: 'https://hlslive-wsczoominwestus.med.nhl.com/publish/c74beed0-d9ca-480b-a9ec-6158ba091d9b.mp4',
        videoPic: VideoPic(width: 248, height: 140, src: 'https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg'));

    Video video2 = Video(
        title: 'Saad goes five-hole in front',
        blurb: "SJS@CHI: Saad slips DeBrincat's pass past Dell",
        description: "Brandon Saad receives a pass from Alex DeBrincat, dekes to his forehand and slips a shot through Aaron Dell's five-hole for a 3-1 lead",
        duration: '00:44',
        videoUrl: 'https://hlslive-wsczoominwestus.med.nhl.com/publish/77dbcc48-e5ca-4a35-83fe-64fd85a13b8c.mp4',
        videoPic: VideoPic(width: 320, height: 180, src: 'https://nhl.bamcontent.com/images/photos/316136044/320x180/cut.jpg'));

    checkVideoPic(VideoPic actual, VideoPic expected) {
      expect(actual.src, expected.src);
      expect(actual.width, expected.width);
      expect(actual.height, expected.height);
    }

    checkVideo(Video actual, Video expected) {
      expect(actual.title, expected.title);
      expect(actual.blurb, expected.blurb);
      expect(actual.description, expected.description);
      expect(actual.duration, expected.duration);
      expect(actual.videoUrl, expected.videoUrl);
      checkVideoPic(actual.videoPic, expected.videoPic);
    }

    test('Video test', () {
      checkVideo(Video.fromJson({}), empty);
      checkVideo(Video.fromJson(null), empty);
      checkVideo(Video.fromJson(videoJson1), video1);
      checkVideo(Video.fromJson(videoJson2), video2);
    });

    test('Content/Video check from actual JSON', () {
      Map<String, dynamic> jsonValue = json.decode(contentJson);
      Content content = Content.fromJson(jsonValue);
      expect(content.videos.length, 10);
      print(content);
    });
  });
}

const Map<String, dynamic> videoJson1 = {
  "type": "video",
  "id": "5356154",
  "date": "2020-03-11T20:00:00-0400",
  "title": "Saad goes five-hole in front",
  "blurb": "SJS@CHI: Saad slips DeBrincat's pass past Dell",
  "description": "Brandon Saad receives a pass from Alex DeBrincat, dekes to his forehand and slips a shot through Aaron Dell's five-hole for a 3-1 lead",
  "duration": "00:44",
  "authFlow": false,
  "mediaPlaybackId": "5356154",
  "mediaState": "MEDIA_ARCHIVE",
  "keywords": [],
  "image": {
    "title": "",
    "altText": "",
    "cuts": {
      "320x180": {
        "aspectRatio": "16:9",
        "width": 320,
        "height": 180,
        "src": "https://nhl.bamcontent.com/images/photos/316136044/320x180/cut.jpg",
        "at2x": "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
        "at3x": "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg"
      },
      "248x140": {
        "aspectRatio": "16:9",
        "width": 248,
        "height": 140,
        "src": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
        "at2x": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
        "at3x": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg"
      },
      "124x70": {
        "aspectRatio": "16:9",
        "width": 124,
        "height": 70,
        "src": "https://nhl.bamcontent.com/images/photos/316136044/124x70/cut.jpg",
        "at2x": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
        "at3x": "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg"
      }
    }
  },
  "playbacks": [
    {
      "name": "FLASH_192K_320X180",
      "width": "320",
      "height": "180",
      "url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/cd4b6236-552d-4472-a38d-4cea5dd91772.mp4"
    },
    {
      "name": "FLASH_450K_384x216",
      "width": null,
      "height": null,
      "url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/f583981b-7ffe-45c5-9d01-6e69ef9711ab.mp4"
    },
    {
      "name": "FLASH_1200K_640X360",
      "width": "640",
      "height": "360",
      "url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/77dbcc48-e5ca-4a35-83fe-64fd85a13b8c.mp4"
    },
    {
      "name": "FLASH_1800K_896x504",
      "width": null,
      "height": null,
      "url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/c74beed0-d9ca-480b-a9ec-6158ba091d9b.mp4"
    }
  ]
};

const Map<String, dynamic> videoJson2 = {
  "type": "video",
  "id": "5356154",
  "date": "2020-03-11T20:00:00-0400",
  "title": "Saad goes five-hole in front",
  "blurb": "SJS@CHI: Saad slips DeBrincat's pass past Dell",
  "description": "Brandon Saad receives a pass from Alex DeBrincat, dekes to his forehand and slips a shot through Aaron Dell's five-hole for a 3-1 lead",
  "duration": "00:44",
  "authFlow": false,
  "mediaPlaybackId": "5356154",
  "mediaState": "MEDIA_ARCHIVE",
  "keywords": [],
  "image": {
    "title": "",
    "altText": "",
    "cuts": {
      "320x180": {
        "aspectRatio": "16:9",
        "width": 320,
        "height": 180,
        "src": "https://nhl.bamcontent.com/images/photos/316136044/320x180/cut.jpg",
        "at2x": "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
        "at3x": "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg"
      },
      "124x70": {
        "aspectRatio": "16:9",
        "width": 124,
        "height": 70,
        "src": "https://nhl.bamcontent.com/images/photos/316136044/124x70/cut.jpg",
        "at2x": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
        "at3x": "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg"
      }
    }
  },
  "playbacks": [
    {
      "name": "FLASH_192K_320X180",
      "width": "320",
      "height": "180",
      "url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/cd4b6236-552d-4472-a38d-4cea5dd91772.mp4"
    },
    {
      "name": "FLASH_450K_384x216",
      "width": null,
      "height": null,
      "url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/f583981b-7ffe-45c5-9d01-6e69ef9711ab.mp4"
    },
    {
      "name": "FLASH_1200K_640X360",
      "width": "640",
      "height": "360",
      "url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/77dbcc48-e5ca-4a35-83fe-64fd85a13b8c.mp4"
    }
  ]
};
import 'dart:async';

import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoView extends StatefulWidget {
  static const String routeName = '/video';
  final VideoArguments arguments;
  VideoView({Key key, this.arguments}) : super(key: key);

  @override
  _VideoViewState createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  Duration _currentPosition = Duration(seconds: 0);
  Duration _videoDuration = Duration(seconds: 0);
  bool _initialized = false;
  bool _visible = false;
  String _currentPositionString = '00:00';
  String _videoDurationString = '00:00';

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      widget.arguments.url,
    );

    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.setLooping(false);
    _controller.addListener(() {
      if (_controller.value.initialized) {
        if (!_initialized) {
          _initialized = true;
          _visible = true;
          _videoDuration = _controller.value.duration;
          _videoDurationString = _parseDuration(_videoDuration);
        }
        setState(() {
          _currentPosition = _controller.value.position;
          _currentPositionString = _parseDuration(_currentPosition);
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return videoPlayer();
            } else if (snapshot.hasError) {
              return ErrorView(NetworkException('Error while downloading video: ${snapshot.error.toString()}'));
            } else {
              return ProgressView('Downloading video');
            }
          },
        ),
      ),
    );
  }

  Widget videoPlayer() {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              _visible = !_visible;
            });
          },
          child: Center(
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: 10.0,
          right: 10.0,
          child: AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: Duration(milliseconds: 50),
              child: Container(
                decoration:
                BoxDecoration(color: const Color.fromRGBO(0, 0, 0, 0.5)),
                child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.replay_10),
                          onPressed: () {
                            setState(() {
                              if (_currentPosition.inSeconds > 10)
                                _controller.seekTo(
                                    _currentPosition - Duration(seconds: 10));
                              else
                                _controller.seekTo(Duration(seconds: 0));
                            });
                          }),
                      IconButton(
                          icon: Icon(_controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow),
                          onPressed: () {
                            setState(() {
                              if (_controller.value.isPlaying)
                                _controller.pause();
                              else
                                _controller.play();
                            });
                          }),
                      IconButton(
                          icon: Icon(Icons.forward_10),
                          onPressed: () {
                            setState(() {
                              if ((_videoDuration.inSeconds -
                                      _currentPosition.inSeconds) >
                                  10)
                                _controller.seekTo(
                                    _currentPosition + Duration(seconds: 10));
                            });
                          }),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Slider(
                          value: _currentPosition.inSeconds.toDouble(),
                          min: 0.0,
                          max: _videoDuration.inSeconds.toDouble(),
                          onChanged: (double value){
                            setState(() {
                              _controller
                                  .seekTo(Duration(seconds: value.toInt()));
                            });
                          },
                        ),
                      ),
                      Center(
                        child: Text(
                            '$_currentPositionString/$_videoDurationString'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  String _parseDuration(Duration duration) {
    return '${_twoDigits(duration.inMinutes)}:${_twoDigits(duration.inSeconds.remainder(Duration.secondsPerMinute))}';
  }

  String _twoDigits(int n) {
    if (n >= 10) return "$n";
    return "0$n";
  }
}

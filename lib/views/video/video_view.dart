import 'dart:async';

import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:wakelock/wakelock.dart';

class VideoView extends StatefulWidget {
  static const String routeName = '/video';
  final VideoArguments arguments;
  VideoView({Key key, this.arguments}) : super(key: key);

  @override
  _VideoViewState createState() => _VideoViewState();

  static String twoDigits(int n) {
    if (n >= 10) return "$n";
    return "0$n";
  }
}

class _VideoViewState extends State<VideoView> with SingleTickerProviderStateMixin {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  Duration _currentPosition = Duration(seconds: 0);
  Duration _videoDuration = Duration(seconds: 0);
  bool _initialized = false;
  //bool _visible = false;
  String _currentPositionString = '00:00';
  String _videoDurationString = '00:00';
  AnimationController _animationController;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    Wakelock.toggle(enable: true);
    SystemChrome.setEnabledSystemUIOverlays([]);
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _controller = VideoPlayerController.network(
      widget.arguments.url,
    );

    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(false);
    _controller.addListener(() {
      if (_controller.value.initialized) {
        if (!_initialized) {
          _initialized = true;
          if (!_animationController.isAnimating && _animationController.value < 1.0)
            _animationController.forward();
          _videoDuration = _controller.value.duration;
          _videoDurationString = _parseDuration(_videoDuration);
          _controller.play();
        }
        setState(() {
          _currentPosition = _controller.value.position;
          _currentPositionString = _parseDuration(_currentPosition);
        });
      }
    });

    //to automatically hide video bar
    _animationController.addListener(() {
      if (_animationController.status == AnimationStatus.completed) {
        setNewTimer();
      }
    });
  }

  /// Sets a new timer for when to hide video bar
  void setNewTimer() {
    if (_timer != null) {
      if (_timer.isActive) _timer.cancel();
      _timer = null;
    }
    _timer = Timer(Duration(seconds: 5), () {
      if (_animationController.status == AnimationStatus.completed) {
        _animationController.reverse();
      }
      _timer = null;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _animationController.dispose();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    Wakelock.toggle(enable: false);
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
              return ErrorView(
                  NetworkException('Error while downloading video: ${snapshot.error.toString()}'));
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
            if (!_animationController.isAnimating) {
              if (_animationController.value > 0.0)
                _animationController.reverse();
              else
                _animationController.forward();
            }
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
            child: SizeTransition(
              sizeFactor: CurvedAnimation(
                curve: Curves.fastOutSlowIn,
                parent: _animationController,
              ),
              child: _buildVideoBar(),
            )
            /*AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: Duration(milliseconds: 50),
              child: _buildVideoBar(),
          ),*/
            ),
      ],
    );
  }

  Widget _buildVideoBar() {
    return Container(
      decoration: BoxDecoration(color: const Color.fromRGBO(0, 0, 0, 0.5)),
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
                        _controller.seekTo(_currentPosition - Duration(seconds: 10));
                      else
                        _controller.seekTo(Duration(seconds: 0));
                    });
                    setNewTimer();
                  }),
              IconButton(
                  icon: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
                  onPressed: () {
                    setState(() {
                      if (_controller.value.isPlaying)
                        _controller.pause();
                      else
                        _controller.play();
                    });
                    setNewTimer();
                  }),
              IconButton(
                  icon: Icon(Icons.forward_10),
                  onPressed: () {
                    setState(() {
                      if ((_videoDuration.inSeconds - _currentPosition.inSeconds) > 10)
                        _controller.seekTo(_currentPosition + Duration(seconds: 10));
                    });
                    setNewTimer();
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
                  onChanged: (double value) {
                    setState(() {
                      _controller.seekTo(Duration(seconds: value.toInt()));
                    });
                  },
                ),
              ),
              Center(
                child: Text('$_currentPositionString/$_videoDurationString'),
              )
            ],
          )
        ],
      ),
    );
  }

  static String _parseDuration(Duration duration) {
    return '${VideoView.twoDigits(duration.inMinutes)}:${VideoView.twoDigits(duration.inSeconds.remainder(Duration.secondsPerMinute))}';
  }
}

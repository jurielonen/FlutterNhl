import 'dart:math';

import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/views/game/game_widgets/play_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:touchable/touchable.dart';
import 'package:FlutterNhl/redux/models/game/play/play.dart';

import 'game_shot_map.dart';

class GameShotMapTeam extends StatefulWidget {
  final ShotMapObject object;

  const GameShotMapTeam({Key key, this.object}) : super(key: key);

  @override
  _GameShotMapTeamState createState() => _GameShotMapTeamState();
}

class _GameShotMapTeamState extends State<GameShotMapTeam>
    with TickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;
  int _selectedShot = 0;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this, initialIndex: 0);
    _pageController = new PageController(initialPage: _tabController.index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TabBar(
          controller: _tabController,
          indicatorColor: Colors.orange,
          labelColor: Colors.orange,
          unselectedLabelColor: Colors.black54,
          onTap: (int index) => setState(() {
            _selectedShot = 0;
          }),
          tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Styles.buildTeamSvgImage(widget.object.homeTeam),
                  Text(widget.object.homeTeam.abb),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Styles.buildTeamSvgImage(widget.object.awayTeam),
                  Text(widget.object.awayTeam.abb),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: getPlayCardSummary(
              _tabController.index == 0
                  ? widget.object.getHomeShots.elementAt(_selectedShot)
                  : widget.object.getAwayShots.elementAt(_selectedShot),
              widget.object.homeTeam.id),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              SafeArea(
                top: false,
                bottom: false,
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  itemBuilder: (context, position) {
                    return _buildShotMap(widget.object.getHomeShots.toList());
                  },
                  itemCount: _tabController.length,
                ),
              ),
              SafeArea(
                top: false,
                bottom: false,
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  itemBuilder: (context, position) {
                    return _buildShotMap(widget.object.getAwayShots.toList());
                  },
                  itemCount: _tabController.length,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildShotMap(List<ShotPlay> plays) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CanvasTouchDetector(
        builder: (context) => CustomPaint(
          size: _getSize(context),
          painter: HalfRink(context, plays, _selectedShot, (play, index) {
            print('$index');
            setState(() {
              _selectedShot = index;
            });
          }),
        ),
      ),
    );
  }

  Size _getSize(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = height * (rinkWidth / halfRinkLength);
    if (width > MediaQuery.of(context).size.width - 10) {
      width = MediaQuery.of(context).size.width - 10;
      height = width * (halfRinkLength / rinkWidth);
    }
    return Size(width, height);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }
}

class HalfRink extends CustomPainter {
  final List<ShotPlay> plays;
  final BuildContext context;

  final int selectedShot;
  final Function(ShotPlay play, int index) onPress;

  HalfRink(this.context, this.plays, this.selectedShot, this.onPress);

  @override
  void paint(Canvas canvas, Size size) {
    TouchyCanvas myCanvas = TouchyCanvas(context, canvas);
    double goalLine = size.height * (goalLineLength / halfRinkLength);
    double blueLine =
        size.height * (blueLineLength / halfRinkLength) + goalLine;
    double redLine =
        size.height * ((redLineLength / halfRinkLength)) + blueLine;
    double xFaceOff = size.height * (xFaceOffCircle / halfRinkLength);
    double yBenchFaceOff = size.width * (yBenchFaceOffCircle / rinkWidth);
    double yOffBenchFaceOff = size.width * (yOffBenchFaceOffCircle / rinkWidth);
    double faceOffRadius = size.height * (faceOffCircleRadius / halfRinkLength);
    double goalWidthRink = (size.width * (goalWidth / rinkWidth)) / 2;
    double goalCreaseRadius = size.height * (goalCreaseDiameter / rinkWidth);
    double goalCreaseWidth = size.width * (goalCreaseDiameter / rinkWidth);
    RRect rect = RRect.fromRectAndCorners(
      Rect.fromLTWH(Offset.zero.dx, Offset.zero.dy, size.width, size.height),
      topLeft: Radius.circular(goalLine),
      topRight: Radius.circular(goalLine),
    );

    myCanvas.drawRRect(rect, Paint()..color = Colors.white);
    myCanvas.drawLine(
        Offset(1, goalLine),
        Offset(rect.width - 1, goalLine),
        Paint()
          ..color = Color(0x80FF0000)
          ..strokeWidth = 2.0
          ..strokeCap = StrokeCap.square);
    myCanvas.drawLine(
        Offset(2, blueLine),
        Offset(rect.width - 2, blueLine),
        Paint()
          ..color = Color(0x800313fc)
          ..strokeWidth = 5.0
          ..strokeCap = StrokeCap.square);
    myCanvas.drawLine(
        Offset(2, redLine),
        Offset(rect.width - 2, redLine),
        Paint()
          ..color = Color(0x80FF0000)
          ..strokeWidth = 5.0
          ..strokeCap = StrokeCap.square);

    myCanvas.drawCircle(
        Offset(yBenchFaceOff, xFaceOff),
        faceOffRadius,
        Paint()
          ..color = Color(0x80FF0000)
          ..strokeWidth = 5.0
          ..style = PaintingStyle.stroke);

    myCanvas.drawCircle(
        Offset(yOffBenchFaceOff, xFaceOff),
        faceOffRadius,
        Paint()
          ..color = Color(0x80FF0000)
          ..strokeWidth = 5.0
          ..style = PaintingStyle.stroke);

    myCanvas.drawRRect(
        RRect.fromLTRBAndCorners(size.width / 2 - goalWidthRink, goalLine - 15,
            size.width / 2 + goalWidthRink, goalLine,
            topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0)),
        Paint()
          ..color = Color(0x80000000)
          ..strokeWidth = 3.0
          ..style = PaintingStyle.stroke);

    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(size.width / 2, goalLine),
            height: goalCreaseWidth,
            width: goalCreaseRadius),
        -pi,
        -pi,
        false,
        Paint()
          ..color = Color(0x80FF0000)
          ..strokeWidth = 3.0
          ..style = PaintingStyle.stroke);

    plays.asMap().forEach((index, shot) {
      myCanvas.drawPath(
          shot.getPath(size.height, size.width),
          Paint()
            ..color = selectedShot == index ? Color(0xFFFF0000) : shot.typeColor
            ..strokeWidth = 4
            ..style = PaintingStyle.fill, onTapDown: (tapDetail) {
        onPress(shot, index);
      });
    });
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) {
      var rect = Offset.zero & size;
      var width = size.shortestSide; // * 0.4;
      rect = const Alignment(0.8, -0.9).inscribe(Size(width, width), rect);
      return [
        CustomPainterSemantics(
          rect: rect,
          properties: SemanticsProperties(
            label: 'Rink',
            textDirection: TextDirection.ltr,
          ),
        ),
      ];
    };
  }

  @override
  bool shouldRepaint(HalfRink oldDelegate) =>
      oldDelegate.selectedShot != selectedShot;

  @override
  bool shouldRebuildSemantics(HalfRink oldDelegate) => false;
}

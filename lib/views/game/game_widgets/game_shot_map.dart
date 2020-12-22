import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:touchable/touchable.dart';

class GameShotMap extends StatefulWidget {
  final ShotMapObject object;

  const GameShotMap({Key key, this.object}) : super(key: key);
  @override
  _GameShotMapState createState() => _GameShotMapState();
}

class _GameShotMapState extends State<GameShotMap>
    with TickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
        length: widget.object.periods.length, vsync: this, initialIndex: 0);
    _pageController = new PageController(initialPage: _tabController.index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TabBar(
          controller: _tabController,
          indicatorColor: Colors.orange,
          labelColor: Colors.orange,
          unselectedLabelColor: Colors.black54,
          tabs: widget.object.periods
              .map((period) => Tab(
                    text: period.ordinalNum,
                  ))
              .toList(),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: widget.object.periods.map((period) {
              return SafeArea(
                top: false,
                bottom: false,
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  itemBuilder: (context, position) {
                    return _buildShotMap(widget.object.getPeriod(period));
                  },
                  itemCount: _tabController.length,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildShotMap(List<PlayWithPlayers> plays) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CanvasTouchDetector(
        builder: (context) => CustomPaint(
          size: Size(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height),
          painter: Rink(context, plays),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }
}

class Rink extends CustomPainter {
  final List<PlayWithPlayers> plays;
  final BuildContext context;
  static const double xMax = 200;
  static const double xOffSet = 100;
  static const double yMax = 80;
  static const double yOffSet = 40;

  Rink(this.context, this.plays);

  @override
  void paint(Canvas canvas, Size size) {
    TouchyCanvas myCanvas = TouchyCanvas(context, canvas);
    double borderRadius = (size.height * 0.2238) / 2;
    double goalLine = size.height * 0.055;
    double blueLine = size.height * 0.32 + goalLine;
    double redLine = size.height * 0.125 + blueLine;
    double otherBlueLine = size.height * 0.125 + redLine;
    double otherGoalLine = size.height * 0.32 + otherBlueLine;
    RRect rect = RRect.fromRectAndRadius(
      Rect.fromLTWH(Offset.zero.dx, Offset.zero.dy, size.width, size.height),
      Radius.circular(goalLine),
    );

    myCanvas.drawRRect(rect, Paint()..color = Colors.white);
    myCanvas.drawLine(
        Offset(1, goalLine),
        Offset(rect.width - 1, goalLine),
        Paint()
          ..color = Colors.red
          ..strokeWidth = 2.0
          ..strokeCap = StrokeCap.square);
    myCanvas.drawLine(
        Offset(2, blueLine),
        Offset(rect.width - 2, blueLine),
        Paint()
          ..color = Colors.blue
          ..strokeWidth = 5.0
          ..strokeCap = StrokeCap.square);
    myCanvas.drawLine(
        Offset(2, redLine),
        Offset(rect.width - 2, redLine),
        Paint()
          ..color = Colors.red
          ..strokeWidth = 5.0
          ..strokeCap = StrokeCap.square);
    myCanvas.drawLine(
        Offset(2, otherBlueLine),
        Offset(rect.width - 2, otherBlueLine),
        Paint()
          ..color = Colors.blue
          ..strokeWidth = 5.0
          ..strokeCap = StrokeCap.square);
    myCanvas.drawLine(
        Offset(1, otherGoalLine),
        Offset(rect.width - 1, otherGoalLine),
        Paint()
          ..color = Colors.red
          ..strokeWidth = 2.0
          ..strokeCap = StrokeCap.square);
    /*coords.forEach((element) {
      myCanvas.drawCircle(
          Offset(
              (-26 + yOffSet) / yMax * size.width,
              (((-55 + xOffSet) / xMax * size.height) - size.height)
                  .abs()),
          15.0,
          Paint()..color = Colors.black, onTapDown: (tapDetail) {
        print('touched: ${tapDetail.localPosition}');
      });
    });*/
    plays.forEach((shot) {
        myCanvas.drawCircle(
            Offset(
                ((shot.coordinates.y * -1) + yOffSet) / yMax * (size.width),
                (((shot.coordinates.x + xOffSet) / xMax * size.height) -
                        (size.height))
                    .abs()),
            10.0,
            Paint()..color = getTeamColor(shot.team.name),
            onTapDown: (tapDetail) {
          print(
              'touched: ${shot.desc} ${shot.about.eventIdx} ${shot.coordinates} ${tapDetail.localPosition}');
        });
    });
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) {
      var rect = Offset.zero & size;
      var width = size.shortestSide * 0.4;
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
  bool shouldRepaint(Rink oldDelegate) => false;
  @override
  bool shouldRebuildSemantics(Rink oldDelegate) => false;
}

final List<Coordinates> coords = [
  Coordinates(x: 0, y: 0),
  Coordinates(x: 100, y: 40),
  Coordinates(x: 100, y: 30),
  Coordinates(x: 100, y: 20),
  Coordinates(x: 100, y: 10),
  Coordinates(x: -100, y: 0),
  Coordinates(x: -100, y: -10),
  Coordinates(x: -100, y: -20),
  Coordinates(x: -100, y: -30),
  Coordinates(x: -100, y: -40),
  Coordinates(x: 80, y: 40),
  Coordinates(x: 80, y: 30),
  Coordinates(x: 80, y: 20),
  Coordinates(x: 80, y: 10),
  Coordinates(x: 80, y: 0),
  Coordinates(x: -80, y: -10),
  Coordinates(x: -80, y: -20),
  Coordinates(x: -80, y: -30),
  Coordinates(x: -80, y: -40),
  Coordinates(x: 60, y: 40),
  Coordinates(x: 60, y: 30),
  Coordinates(x: 60, y: 20),
  Coordinates(x: 60, y: 10),
  Coordinates(x: 60, y: 0),
  Coordinates(x: -60, y: -10),
  Coordinates(x: -60, y: -20),
  Coordinates(x: -55, y: -26),
  Coordinates(x: -60, y: -40),
  Coordinates(x: 40, y: 40),
  Coordinates(x: 40, y: 30),
  Coordinates(x: 40, y: 20),
  Coordinates(x: 40, y: 10),
  Coordinates(x: 40, y: 0),
  Coordinates(x: -40, y: -10),
  Coordinates(x: -40, y: -20),
  Coordinates(x: -40, y: -30),
  Coordinates(x: -40, y: -40),
  Coordinates(x: 20, y: 40),
  Coordinates(x: 20, y: 30),
  Coordinates(x: 20, y: 20),
  Coordinates(x: 20, y: 10),
  Coordinates(x: 20, y: 0),
  Coordinates(x: -20, y: -10),
  Coordinates(x: -20, y: -20),
  Coordinates(x: -20, y: -30),
  Coordinates(x: -20, y: -40),
  Coordinates(x: 0, y: 20),
  Coordinates(x: 0, y: 30),
  Coordinates(x: 0, y: 20),
  Coordinates(x: 0, y: 10),
  Coordinates(x: 0, y: 0),
  Coordinates(x: 0, y: -10),
  Coordinates(x: 0, y: -20),
  Coordinates(x: 0, y: -30),
  Coordinates(x: 0, y: -40),
];

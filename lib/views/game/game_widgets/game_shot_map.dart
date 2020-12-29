import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/redux/models/game/game.dart';
import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:FlutterNhl/views/game/game_widgets/play_card.dart';
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
  int _selectedShot = 0;

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
      crossAxisAlignment: CrossAxisAlignment.center,
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
        getPlayCardSummary(
            widget.object.getPeriod(
                widget.object.periods[_tabController.index])[_selectedShot],
            1),
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
          painter: Rink(context, plays, _selectedShot, (play, index) {
            print('$index');
            setState(() {
              _selectedShot = index;
            });
          }),
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
  final List<ShotPlay> plays;
  final BuildContext context;

  final int selectedShot;
  final Function(ShotPlay play, int index) onPress;

  Rink(this.context, this.plays, this.selectedShot, this.onPress);

  @override
  void paint(Canvas canvas, Size size) {
    double height = size.height;
    double width = height * (25.9 / 60.96);
    if (width > size.width) {
      width = size.width;
      height = width * (60.96 / 25.9);
    }
    TouchyCanvas myCanvas = TouchyCanvas(context, canvas);
    double goalLine = height * (goalLineLength / rinkLength);
    double blueLine = height * (blueLineLength / rinkLength) + goalLine;
    double redLine = height * (redLineLength / rinkLength) + blueLine;
    double otherBlueLine = height * (blueLineLength / rinkLength) + redLine;
    double otherGoalLine =
        height * (goalLineLength / rinkLength) + otherBlueLine;
    RRect rect = RRect.fromRectAndRadius(
      Rect.fromLTWH(Offset.zero.dx, Offset.zero.dy, width, height),
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

    plays.asMap().forEach((index, shot) {
      myCanvas.drawPath(
          shot.getPath(height, width),
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
  bool shouldRepaint(Rink oldDelegate) =>
      oldDelegate.selectedShot != selectedShot;

  @override
  bool shouldRebuildSemantics(Rink oldDelegate) => false;

  void displaySnackBar(ShotPlay shot) {
    Scaffold.of(context).showSnackBar(
        SnackBar(content: Text('${shot.desc} ${shot.coordinates}')));
  }
}

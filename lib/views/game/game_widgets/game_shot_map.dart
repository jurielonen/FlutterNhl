import 'package:FlutterNhl/redux/models/game/play/play.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GameShotMap extends StatefulWidget {
  final List<Play> plays;

  const GameShotMap({Key key, this.plays}) : super(key: key);
  @override
  _GameShotMapState createState() => _GameShotMapState();
}

class _GameShotMapState extends State<GameShotMap> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomPaint(
        size: Size(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height),
        painter: Rink(),
      ),
    );
  }
}


class Rink extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double borderRadius = (size.height * 0.2238) / 2;
    double goalLine = size.height * 0.088;
    double blueLine = size.height * 0.512 + goalLine;
    double redLine = size.height * 0.2 + blueLine;
    RRect rect = RRect.fromLTRBAndCorners(Offset.zero.dx, Offset.zero.dy, size.width, size.height, topLeft: Radius.circular(goalLine), topRight: Radius.circular(goalLine));

    canvas.drawRRect(
      rect,
      Paint()..color = Colors.white
    );
    canvas.drawLine(Offset(1, goalLine), Offset(rect.width - 1, goalLine), Paint()..color = Colors.red..strokeWidth = 2.0..strokeCap = StrokeCap.square);
    canvas.drawLine(Offset(2, blueLine), Offset(rect.width - 2, blueLine), Paint()..color = Colors.blue..strokeWidth = 5.0..strokeCap = StrokeCap.square);
    canvas.drawLine(Offset(2, redLine), Offset(rect.width - 2, redLine), Paint()..color = Colors.red..strokeWidth = 5.0..strokeCap = StrokeCap.square);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) {
      // Annotate a rectangle containing the picture of the sun
      // with the label "Sun". When text to speech feature is enabled on the
      // device, a user will be able to locate the sun on this picture by
      // touch.
      var rect = Offset.zero & size;
      var width = size.shortestSide * 0.4;
      rect = const Alignment(0.8, -0.9).inscribe(Size(width, width), rect);
      return [
        CustomPainterSemantics(
          rect: rect,
          properties: SemanticsProperties(
            label: 'Sun',
            textDirection: TextDirection.ltr,
          ),
        ),
      ];
    };
  }

  // Since this Sky painter has no fields, it always paints
  // the same thing and semantics information is the same.
  // Therefore we return false here. If we had fields (set
  // from the constructor) then we would return true if any
  // of them differed from the same fields on the oldDelegate.
  @override
  bool shouldRepaint(Rink oldDelegate) => false;
  @override
  bool shouldRebuildSemantics(Rink oldDelegate) => false;
}

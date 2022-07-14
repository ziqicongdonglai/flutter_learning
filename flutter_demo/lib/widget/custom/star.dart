import 'dart:math';

import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final Size size;
  final Color color;

  const Star(
      {Key? key, this.size = const Size(150, 150), this.color = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: CustomPaint(
        painter: _StarPaint(
          color: color,
        ),
      ),
    );
  }
}

class _StarPaint extends CustomPainter {
  Path path = Path();
  Path shadowPath = Path();
  final Paint _paint;
  final Color color;

  final rate = 0.5;

  _StarPaint({required this.color}) : _paint = Paint()..color = color;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRect(Offset.zero & size);
    canvas.drawPath(getPentagramPath(size.width / 2), _paint..color = color);
    //最后用close的方式把path封闭起来
    path.close();
  }

  Path getPentagramPath(double radius) {
    var initDegreen = 180;
    // 连接五角星的五个顶点，360/5，每个是72度
    var posOne = getOffsetPosition(initDegreen, radius);
    var posTwo = getOffsetPosition(72 + initDegreen, radius);
    var posThree = getOffsetPosition(144 + initDegreen, radius);
    var posFour = getOffsetPosition(216 + initDegreen, radius);
    var posFive = getOffsetPosition(288 + initDegreen, radius);
    path.moveTo(posOne.dx, posOne.dy);
    path.lineTo(posFour.dx, posFour.dy);
    path.lineTo(posTwo.dx, posTwo.dy);
    path.lineTo(posFive.dx, posFive.dy);
    path.lineTo(posThree.dx, posThree.dy);
    return path;
  }

  Offset getOffsetPosition(int degreen, double radius) {
    //角度转成弧度
    var radian = degreen * pi / 180;
    var dx = sin(radian) * radius;
    var dy = cos(radian) * radius;
    return Offset(dx + radius, dy + radius);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

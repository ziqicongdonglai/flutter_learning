import 'package:flutter/material.dart';

class CircleText extends StatelessWidget {
  final String text;
  final int size;
  final Color color;

  const CircleText(
      {Key? key, required this.text, required this.size, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 40,
      height: 40,
      // 装饰形状、背景色、阴影等
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 3.0),
        shape: BoxShape.circle, // Container为圆形
        color: Colors.blue.shade50,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: const Offset(0.0, 0.0 // 阴影y轴偏移量
                ),
            blurRadius: 1, // 阴影模糊程度
            spreadRadius: 2, // 阴影扩散程度
          )
        ],
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 20, color: color, shadows: [
          BoxShadow(color: color, offset: const Offset(.5, .5), blurRadius: 2)
        ]),
      ),
    );
  }
}

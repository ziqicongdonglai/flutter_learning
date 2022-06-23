import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('文本组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            normalText("Hello world", TextAlign.left, 32, Colors.orange,
                FontWeight.bold),
            repeatText(
                "这是一段可重复的文字.", 4, 1, TextOverflow.ellipsis, 18, Colors.green),
            scaleText("可以放大的文字", 1.8),
          ],
        ),
      ),
    );
  }

  Text scaleText(String info, double scale) {
    return Text(
      info,
      textScaleFactor: scale,
    );
  }

  Text repeatText(String info, int repeatTimes, int maxLines, TextOverflow type,
      double fs, Color cl) {
    return Text(
      info * repeatTimes,
      maxLines: maxLines,
      overflow: type,
      style: TextStyle(fontSize: fs, color: cl),
    );
  }

  Text normalText(
      String info, TextAlign align, double fs, Color cl, FontWeight fw) {
    return Text(
      info,
      textAlign: align,
      style: TextStyle(fontSize: fs, color: cl, fontWeight: fw),
    );
  }
}

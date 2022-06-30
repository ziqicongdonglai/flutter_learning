import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class VisibilityWidget extends StatelessWidget {
  const VisibilityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Visibility'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('显隐组件', style: titleStyle),
              const Text(
                '显隐组件，控制一个组件显示或隐藏，可设置隐藏后的占位组件。',
                style: descStyle,
              ),
              Wrap(
                spacing: 10,
                children: <Widget>[
                  _buildVisibility(true),
                  _buildVisibility(false),
                ],
              )
            ],
          ),
        ));
  }

  _buildVisibility(bool visible) {
    var box = Container(
      height: 30,
      width: 30,
      color: Colors.blue,
    );
    return Container(
      width: 150,
      height: 150 * 0.618,
      color: Colors.cyanAccent.withAlpha(33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          box,
          Visibility(
              // 是否可见
              visible: visible,
              // replacement参数表示隐藏情况下显示的组件
              replacement: Container(
                alignment: Alignment.center,
                height: 80 * 0.618,
                width: 80,
                color: Colors.orange,
              ),
              child: Container(
                alignment: Alignment.center,
                height: 80 * 0.618,
                width: 80,
                color: Colors.orange,
                child: const Text(
                  "visible\ntrue",
                  style: descStyle,
                ),
              )),
          box
        ],
      ),
    );
  }
}

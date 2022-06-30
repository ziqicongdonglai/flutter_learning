import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class GestureDetectorWidget extends StatefulWidget {
  const GestureDetectorWidget({Key? key}) : super(key: key);

  @override
  State<GestureDetectorWidget> createState() => _GestureDetectorWidgetState();
}

class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  var _info = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GestureDetector组件'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '手势监听器',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5.0),
                child: const Text(
                  '组件手势事件的检测器，可接受长按、双击、按下、松开、移动等事件，并可获取触点信息',
                  style: descStyle,
                ),
              ),
              GestureDetector(
                // 单击
                onTap: () => setState(() => _info = 'onTap'),
                // 双击
                onDoubleTap: () => setState(() => _info = 'onDoubleTap'),
                // 长按
                onLongPress: () => setState(() => _info = 'onLongPress'),
                onVerticalDragDown: (v) => setState(
                    () => _info = 'onVerticalDragDown ${v.localPosition}'),
                // onHorizontalDragDown: (v) => setState(
                //     () => _info = 'onHorizontalDragDown ${v.localPosition}'),
                onScaleStart: (v) =>
                    setState(() => _info = 'onScaleStart ${v.focalPoint}'),
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 300 * 0.4,
                  color: Colors.green.withAlpha(66),
                  child: Text(
                    _info,
                    style: descStyle,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

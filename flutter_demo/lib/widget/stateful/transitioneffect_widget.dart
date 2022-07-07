import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class TransitionEffectWidget extends StatefulWidget {
  const TransitionEffectWidget({Key? key}) : super(key: key);

  @override
  State<TransitionEffectWidget> createState() => _TransitionEffectWidgetState();
}

class _TransitionEffectWidgetState extends State<TransitionEffectWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('各种变换组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '旋转变换 RotationTransition',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '可容纳一个子组件，并使其进行旋转动画，需要提供动画器 turns，拥有alignment 属性。',
                  style: descStyle,
                ),
              ),
              const Text(
                '缩放变换 ScaleTransition',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '可容纳一个子组件，并使其进行缩放动画，需要提供动画器 scale ，拥有alignment 属性。',
                  style: descStyle,
                ),
              ),
              const Text(
                '尺寸变换 SizeTransition',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '可容纳一个子组件，并使其进行尺寸动画，需要提供动画器 sizeFactor，可指定尺寸变化轴及轴向的 axisAlignment。',
                  style: descStyle,
                ),
              ),
              const Text(
                '位置变换 PositionedTransition',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '只能用于 Stack 中，可容纳一个子组件，让其在两个矩形间进行位置动画，需要提供动画器 rect。',
                  style: descStyle,
                ),
              ),
              const Text(
                '对齐变换 AlignTransition',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  'AnimatedWidget的子类，使用 Alignment 类型的动画器让子组件在两个Alignment 对象之间进行过渡动画。',
                  style: descStyle,
                ),
              ),
              const Text(
                '滑动变换 SlideTransition',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  'AnimatedWidget的子类，使用 Offset 类型的动画器让子组件在两个Offset 对象之间进行过渡动画。',
                  style: descStyle,
                ),
              ),
              const Text(
                '装饰变换 DecoratedBoxTransition',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  'AnimatedWidget的子类，使用 Decorated 类型的动画器让子组件在两个Decorated 对象之间进行过渡动画。',
                  style: descStyle,
                ),
              ),
              const Text(
                '文本样式变换 DefaultTextStyleTransition',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  'AnimatedWidget的子类，使用 TextStyle 类型的动画器让子组件在两个TextStyle 对象之间进行过渡动画。',
                  style: descStyle,
                ),
              ),
              const Text(
                '矩形位置变换 RelativePositionedTransition',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  'AnimatedWidget的子类，使用 Rect 类型的动画器让子组件在两个 Rect对象之间进行过渡动画。',
                  style: descStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

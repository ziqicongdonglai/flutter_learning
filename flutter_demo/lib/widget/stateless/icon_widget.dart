import 'package:flutter/material.dart';
import 'package:flutter_demo/common/iconfont.dart';
import 'package:flutter_demo/common/style.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('各类图标组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Icon',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '用于图标显示的组件，可指定图标资源、大小、颜色，简单实用。',
                  style: descStyle,
                ),
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: const <Widget>[
                  Icon(
                    // 图标
                    Icons.send,
                    // 颜色
                    color: Colors.orange,
                    // 大小
                    size: 50,
                  ),
                  Icon(
                    Icons.android,
                    color: Colors.green,
                    size: 100,
                  ),
                  Icon(
                    // 第三方图标
                    // 这里用的iconfont字体图标
                    IconFont.icon_icon_test78,
                    color: Colors.blue,
                    size: 60,
                  ),
                ],
              ),
              const Text(
                'IconButton',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '可点击的图标按钮，可指定图标信息、内边距、大小、颜色等，接收点击事件。',
                  style: descStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                // 图标按钮
                child: IconButton(
                  padding: const EdgeInsets.only(),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera,
                    color: Colors.green,
                  ),
                  // 长按提示文字
                  tooltip: 'Camera',
                  // 长按高亮色
                  highlightColor: Colors.orange,
                  // 水波纹颜色（点击时显示）
                  splashColor: Colors.blue,
                ),
              ),
              const Text(
                'AnimatedIcon',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '根据动画控制器来使图标获得动画效果，可指定图标大小、颜色等。',
                  style: descStyle,
                ),
              ),
              const Test()
            ],
          ),
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              // completed 到达动画终点处
              // AnimationController.reverse()可以反向播放动画
              animationController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              // dismissed 回到动画起点处
              // AnimationController.forward()可以正向播放动画
              animationController.forward();
            }
          });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      alignment: Alignment.center,
      // 动画图标
      child: AnimatedIcon(
        // AnimatedIcons 获取系统提供的动画图标
        icon: AnimatedIcons.view_list,
        progress: animationController,
        color: Colors.blue,
        size: 50,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}

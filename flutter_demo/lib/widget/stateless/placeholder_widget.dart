import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placeholder'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '占位组件',
                style: titleStyle,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Text(
                    '一个矩形和叉叉的占位组件，可指定颜色、线宽、宽高等属性。',
                    style: descStyle,
                  )),
              // UnconstrainedBox组件不对子组件做任何约束
              // 子组件超出的部分会被截取
              const UnconstrainedBox(
                // 当Placeholder处在一个无限空间的时候，
                // 可以通过fallbackWidth和fallbackHeight设置其宽高
                child: Placeholder(
                  // 颜色
                  color: Colors.blue,
                  //线条粗细
                  strokeWidth: 2,
                  fallbackWidth: 150,
                  fallbackHeight: 100,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 150,
                height: 150 * 0.618,
                child: Placeholder(
                  color: Colors.orange,
                  strokeWidth: 2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

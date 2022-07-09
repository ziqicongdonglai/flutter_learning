import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class SnackBarWidget extends StatefulWidget {
  const SnackBarWidget({Key? key}) : super(key: key);

  @override
  State<SnackBarWidget> createState() => _SnackBarWidgetState();
}

class _SnackBarWidgetState extends State<SnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '信息提示条',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '从底部弹出的消息条，可指定形状、影深、背景色等。',
                  style: descStyle,
                ),
              ),
              ElevatedButton(
                onPressed: () => {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    // 背景色
                    backgroundColor: Colors.indigo,
                    // 左侧内容
                    content: const Text(
                      'SnackBar',
                      style: descStyle,
                    ),
                    // 弹框展示时长
                    duration: const Duration(seconds: 2),
                    // 右侧事件按钮
                    action: SnackBarAction(
                      // 事件文字
                      label: 'ACTION',
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar;
                      },
                    ),
                  ))
                },
                child: const Text(
                  '弹窗SnackBar',
                  style: descStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SwitchCheckWidget extends StatefulWidget {
  const SwitchCheckWidget({Key? key}) : super(key: key);

  @override
  _SwitchCheckWidgetState createState() => _SwitchCheckWidgetState();
}

class _SwitchCheckWidgetState extends State<SwitchCheckWidget> {
  bool _switchSelected = true; //维护单选开关状态
  bool _checkboxSelected = true; //维护复选框状态

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('单选开关复选框组件'),
        ),
        body: Container(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Switch(
                  value: _switchSelected, //当前状态
                  onChanged: (value) {
                    //重新构建页面
                    setState(() {
                      _switchSelected = value;
                    });
                  },
                ),
                Checkbox(
                  value: _checkboxSelected,
                  activeColor: Colors.red, //选中时的颜色
                  onChanged: (value) {
                    setState(() {
                      _checkboxSelected = value!;
                    });
                  },
                ),
                CheckboxListTile(
                    title: const Text('ZK'),
                    value: _checkboxSelected,
                    subtitle: const Text('学习Flutter'),
                    secondary: const Icon(Icons.person),
                    onChanged: (value) {
                      setState(() {
                        _checkboxSelected = value!;
                      });
                    }),
              ],
            )));
  }
}

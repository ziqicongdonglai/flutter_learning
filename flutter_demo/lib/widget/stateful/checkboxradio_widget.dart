import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class CheckboxRadioWidget extends StatefulWidget {
  const CheckboxRadioWidget({Key? key}) : super(key: key);

  @override
  State<CheckboxRadioWidget> createState() => _CheckboxRadioWidgetState();
}

class _CheckboxRadioWidgetState extends State<CheckboxRadioWidget> {
  bool _checked = false;
  final colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];

  var data = <double>[1, 2, 3, 4, 5];
  double _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox 、Switch、 Radio'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '复选框组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '复选框组件，常用于配置的切换，可指定颜色，接收状态变化回调，也可指定三态。',
                  style: descStyle,
                ),
              ),
              Wrap(
                spacing: 10,
                children: colors
                    .map((e) => Checkbox(
                        // 是否选中
                        value: _checked,
                        // 选中时的颜色
                        checkColor: Colors.white,
                        // 选中时方框内的颜色
                        activeColor: e,
                        // 状态改变事件
                        onChanged: (v) => setState(() => _checked = v!)))
                    .toList(),
              ),
              const Text(
                '切换组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '切换组件，常用于配置的切换，可指定圆圈颜色、图片、滑槽颜色等，接收状态变化回调。',
                  style: descStyle,
                ),
              ),
              Wrap(
                spacing: 10,
                children: colors
                    .map((e) => Switch(
                        // 打开状态
                        value: _checked,
                        // 关闭状态下滑块颜色
                        inactiveThumbColor: e,
                        // 关闭状态下轨道颜色
                        inactiveTrackColor: Colors.grey.withAlpha(77),
                        // 打开状态下滑块颜色
                        activeColor: Colors.green,
                        // 打开状态下轨道颜色
                        activeTrackColor: Colors.orange,
                        // 状态改变事件
                        onChanged: (v) => setState(() => _checked = v)))
                    .toList(),
              ),
              const Text(
                '单选组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '根据逻辑可以实现单选的需求，可指定颜色、接收状态变化回调。',
                  style: descStyle,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: data
                    .map((e) => Radio<double>(
                        // 设置标识
                        value: e,
                        // 选中的标识
                        // Radio的value为1,2,3，则groupValue为2时，选中第二个Radio
                        groupValue: _value,
                        // 选中时填充颜色
                        activeColor: Colors.orangeAccent,
                        onChanged: (v) => setState(() => _value = v!)))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

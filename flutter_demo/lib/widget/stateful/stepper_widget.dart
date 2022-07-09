import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({Key? key}) : super(key: key);

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _position = 0;
  Map<dynamic, dynamic> stepsData = {
    "填写表单": "请按表单填写个人信息。",
    "邮箱校验": "已将邮件发送至您的邮箱，请按照相关指示对您的账号进行邮箱校验。",
    "注册完成": "恭喜您，注册完成！。",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stepper'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '步骤组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '可指定一步步的操作，可自定义步骤的内容，确认和返回的按钮以及步骤排列的方向。',
                  style: descStyle,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Stepper(
                  // 类型，横向或纵向
                  type: StepperType.horizontal,
                  // 当前步骤
                  currentStep: _position,
                  // 点击Step时回调
                  onStepTapped: (index) {
                    setState(() {
                      _position = index;
                    });
                  },
                  // 点击CONTINUE回调。
                  onStepContinue: () {
                    setState(() {
                      if (_position < 2) {
                        _position++;
                      }
                    });
                  },
                  // 点击CANCEL回调。
                  onStepCancel: () {
                    if (_position > 0) {
                      setState(() {
                        _position--;
                      });
                    }
                  },
                  // Step组件列表
                  steps: stepsData.keys.map((e) {
                    bool isActive =
                        stepsData.keys.toList().indexOf(e) == _position;
                    // Step为Stepper的每个步骤的组件 结合使用
                    return Step(
                        title: Text(
                          e,
                          style: TextStyle(
                            color: isActive ? Colors.blue : Colors.black,
                          ),
                        ),
                        isActive: isActive,
                        // 影响字体样式和圆圈内图标
                        state: _getState(
                          stepsData.keys.toList().indexOf(e),
                        ),
                        content: SizedBox(
                          height: 60,
                          child: Text(stepsData[e]),
                        ));
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _getState(index) {
    if (_position == index) return StepState.editing;
    if (_position > index) return StepState.complete;
    return StepState.indexed;
  }
}

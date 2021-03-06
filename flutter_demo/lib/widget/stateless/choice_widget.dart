import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

// ChoiceChip 允许从一组选项中进行单个选择，创建一个类似于单选按钮的标签
class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChoiceChip组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '事件小纸条',
              style: titleStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              child: const Text(
                '和Chip组件类似，有一些选择的属性，可以指定选中时的颜色、阴影深浅、选择事件。',
                style: descStyle,
              ),
            ),
            ChoiceChip(
              selected: _selected,
              padding: const EdgeInsets.all(5),
              labelPadding: const EdgeInsets.all(5),
              label: Text(_selected ? '已选中' : 'This is a ChoiceChip'),
              backgroundColor: Colors.grey.withAlpha(66),
              avatar: Image.asset('images/Android_Studio.png'),
              selectedColor: Colors.green.withAlpha(77),
              shadowColor: Colors.orangeAccent,
              elevation: 3,
              pressElevation: 3,
              onSelected: (value) => setState(() => _selected = value),
            )
          ],
        ),
      ),
    );
  }
}

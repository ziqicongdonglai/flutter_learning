import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('按钮组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            elevatedButton("点击弹出提示框", context),
            outlinedButton("边框按钮", () => null),
            iconButton(const Icon(Icons.thumb_up), Colors.red, () => null),
            ElevatedButton.icon(
              icon: const Icon(Icons.send),
              label: Text("发送"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton elevatedButton(String info, BuildContext context) {
    return ElevatedButton(
      child: Text(info),
      onPressed: () {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext dialogContext) {
              return AlertDialog(
                title: const Text('提示'),
                content: const Text('这是一个提示框'),
                actions: <Widget>[
                  OutlinedButton(
                    child: const Text('确定'),
                    onPressed: () {
                      Navigator.of(dialogContext).pop();
                    },
                  )
                ],
              );
            });
      },
    );
  }

  OutlinedButton outlinedButton(String info, Function() func) =>
      OutlinedButton(onPressed: func, child: Text(info));

  IconButton iconButton(Icon icon, Color cl, Function() func) {
    return IconButton(icon: icon, color: cl, onPressed: func);
  }
}

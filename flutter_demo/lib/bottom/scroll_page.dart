import 'package:flutter/material.dart';

class ScrollPage extends StatefulWidget {
  const ScrollPage({Key? key}) : super(key: key);

  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              //上下各添加8像素补白
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    child: const Text('文本组件'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/text');
                    },
                  ),
                  OutlinedButton(
                    child: const Text('按钮组件'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/button');
                    },
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.pink,
                    alignment: Alignment.center,
                    child: GestureDetector(
                      child: const Text(
                        '图片组件',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      onDoubleTap: () {
                        Navigator.pushNamed(context, '/image');
                      },
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: const Text(
                      '单选复选',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    onLongPress: () {
                      Navigator.pushNamed(context, '/switch/check');
                    },
                  ),
                ),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.yellow,
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: const Text(
                      '表单',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    onDoubleTap: () {
                      Navigator.pushNamed(context, '/form');
                    },
                  ),
                )
              ],
            ),
            Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                child: GestureDetector(
                    child: const CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: 50,
                      child: Text(
                        '进度指示',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onVerticalDragStart: (startDetail) {
                      Navigator.pushNamed(context, '/progress');
                    })),
          ],
        ));
  }
}

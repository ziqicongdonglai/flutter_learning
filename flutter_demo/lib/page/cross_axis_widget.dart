import 'package:flutter/material.dart';

class CrossAxisWidget extends StatefulWidget {
  const CrossAxisWidget({Key? key}) : super(key: key);

  @override
  _CrossAxisWidgetState createState() => _CrossAxisWidgetState();
}

class _CrossAxisWidgetState extends State<CrossAxisWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('交叉轴对齐'),
        ),
        body: Container(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  //上下各添加8像素补白
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 150,
                        width: 100,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Padding(
                  //上下各添加8像素补白
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 150,
                        width: 100,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Padding(
                  //上下各添加8像素补白
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 150,
                        width: 100,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}

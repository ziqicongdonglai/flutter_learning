import 'package:flutter/material.dart';

class MainAxisWidget extends StatefulWidget {
  const MainAxisWidget({Key? key}) : super(key: key);

  @override
  _MainAxisWidgetState createState() => _MainAxisWidgetState();
}

class _MainAxisWidgetState extends State<MainAxisWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('主轴对齐'),
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
                        height: 50,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 50,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 50,
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 50,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 50,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 50,
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 50,
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

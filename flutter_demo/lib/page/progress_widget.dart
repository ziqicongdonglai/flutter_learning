import 'package:flutter/material.dart';

class ProgressWidget extends StatefulWidget {
  const ProgressWidget({Key? key}) : super(key: key);

  @override
  _ProgressWidgetState createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('进度指示器组件'),
        ),
        body: Container(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(
                      value: 0.3,
                      backgroundColor: Colors.greenAccent,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                    ),
                    CircularProgressIndicator(
                      backgroundColor: Colors.grey[200],
                      valueColor: const AlwaysStoppedAnimation(Colors.blue),
                    ),
                  ],
                ),
              ],
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_demo/common/data.dart';
import 'package:flutter_demo/common/style.dart';

class PageViewControl extends StatefulWidget {
  const PageViewControl({Key? key}) : super(key: key);

  @override
  State<PageViewControl> createState() => _PageViewControlState();
}

class _PageViewControlState extends State<PageViewControl> {
  late PageController _controller;
  late int pos;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = PageController(
        // 视口占比
        viewportFraction: 0.8,
        // 默认为第几页
        initialPage: (data.length / 2).round());
    // 滑动时当前页面的索引
    pos = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView控制器'),
      ),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              height: 180,
              child: Stack(
                children: <Widget>[
                  PageView(
                    controller: _controller,
                    onPageChanged: (position) {
                      print(position);
                      // 改变状态数据post的值
                      setState(() {
                        pos = position;
                      });
                    },
                    children: data
                        .map((color) => Container(
                              alignment: Alignment.center,
                              width: 90,
                              color: color,
                              child: Text(
                                colorString(color),
                                style: shadowStyle,
                              ),
                            ))
                        .toList(),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(data.length, (i) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: pos == i ? Colors.blue : Colors.grey),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              )),
          Container(
            margin: const EdgeInsets.all(10.0),
            // 显示变化的状态数据
            child: Text(
              '$pos',
              style: titleStyle,
            ),
          )
        ],
      ),
    );
  }
}

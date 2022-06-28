import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/index.dart';
import 'package:flutter_demo/sample/plant_shop.dart';
import 'package:flutter_demo/sample/timeline_page.dart';
import 'package:flutter_demo/widget/stateful/image_widget.dart';
import 'package:flutter_demo/widget/stateful/silverappbar_widget.dart';
import 'package:flutter_demo/widget/stateless/container_widget.dart';
import 'package:flutter_demo/widget/stateless/gridview_widget.dart';
import 'package:flutter_demo/widget/stateless/listview_widget.dart';
import 'package:flutter_demo/widget/stateless/text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 去除debug标签
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // 注册路由表
      routes: {
        '/index': (context) => const Index(),
        // 无状态组件导航
        '/container': (context) => const ContainerWidget(),
        '/text': (context) => const TextWidget(),
        '/listview': (context) => const ListViewWidget(),
        '/gridview': (context) => const GridViewWidget(),
        // 有状态组件导航
        '/image': (context) => const ImageWidget(),
        '/silverappbar': (context) => const SilverAppBarWidget(),
        // 示例导航
        '/plant-shop': (context) => const PlantShop(),
        '/timeline': (context) => const TimelinePage(),
      },
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      // 首页
      home: const Index(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/index.dart';
import 'package:flutter_demo/sample/plant_shop.dart';
import 'package:flutter_demo/widget/stateful/image_widget.dart';
import 'package:flutter_demo/widget/stateless/container_widget.dart';
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
        '/text': (context) => const TextWidget(),
        '/container': (context) => const ContainerWidget(),
        '/image': (context) => const ImageWidget(),
        '/plant-shop': (context) => const PlantShop(),
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

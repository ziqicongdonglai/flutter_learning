import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/bottom/index.dart';
import 'package:flutter_demo/page/button_widget.dart';
import 'package:flutter_demo/page/cross_axis_widget.dart';
import 'package:flutter_demo/page/form_widget.dart';
import 'package:flutter_demo/page/image_widget.dart';
import 'package:flutter_demo/page/main_axis_widget.dart';
import 'package:flutter_demo/page/progress_widget.dart';
import 'package:flutter_demo/page/switch_check_widget.dart';
import 'package:flutter_demo/page/text_widget.dart';

void main() {
  runApp(const MyApp());
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/index': (context) => const Index(),
        '/text': (context) => const TextWidget(),
        '/button': (context) => const ButtonWidget(),
        '/image': (context) => const ImageWidget(),
        '/switch/check': (context) => const SwitchCheckWidget(),
        '/form': (context) => const FormWidget(),
        '/progress': (context) => const ProgressWidget(),
        '/main_axis': (context) => const MainAxisWidget(),
        '/cross_axis': (context) => const CrossAxisWidget(),
      },
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Index(),
    );
  }
}

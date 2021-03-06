import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/bottom/index.dart';
import 'package:flutter_demo/common/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

//将应用的根组件包裹在 DevicePreview中
// void main() {
//   runApp(DevicePreview(
//     enabled: !kReleaseMode,
//     builder: (context) => const MyApp(),
//   ));
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前
    // MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

    return MaterialApp(
      // DevicePreview使用相关
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('zh', 'CH'),
        Locale('en', 'US'),
      ],
      // 去除debug标签
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // 注册路由表
      routes: routes,
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              return const Color(0xff00a89b);
            },
          ), foregroundColor: MaterialStateProperty.resolveWith(
            (states) {
              return const Color(0xffffffff);
            },
          ), shape: MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
            return const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            );
          })),
        ),
      ),
      // 首页
      home: const Index(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class MaterialAppWidget extends StatefulWidget {
  const MaterialAppWidget({Key? key}) : super(key: key);

  @override
  State<MaterialAppWidget> createState() => _MaterialAppWidgetState();
}

class _MaterialAppWidgetState extends State<MaterialAppWidget> {
  var _debugShowCheckedModeBanner = false;
  var _showPerformanceOverlay = false;
  var _debugShowMaterialGrid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialApp'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Material应用',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  'Material 应用的顶级组件，包含路由生成器、主题、语言、主页等属性。',
                  style: descStyle,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildSwitchers(),
                  SizedBox(
                    height: 300,
                    child: MaterialApp(
                      // 是否在右上角显示DEBUG的标识
                      debugShowCheckedModeBanner: _debugShowCheckedModeBanner,
                      // 是否打开性能检测
                      showPerformanceOverlay: _showPerformanceOverlay,
                      // 是否打开网格调试
                      debugShowMaterialGrid: _debugShowMaterialGrid,
                      home: const HomePage(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSwitchers() {
    return DefaultTextStyle(
        style: const TextStyle(color: Colors.blue),
        child: Wrap(
          spacing: 10,
          children: [
            Column(
              children: [
                Switch(
                    value: _showPerformanceOverlay,
                    onChanged: (v) {
                      setState(() {
                        _showPerformanceOverlay = v;
                      });
                    }),
                const Text('性能浮层')
              ],
            ),
            Column(
              children: [
                Switch(
                    value: _debugShowCheckedModeBanner,
                    onChanged: (v) {
                      setState(() {
                        _debugShowCheckedModeBanner = v;
                      });
                    }),
                const Text('开启角标')
              ],
            ),
            Column(
              children: [
                Switch(
                    value: _debugShowMaterialGrid,
                    onChanged: (v) {
                      setState(() {
                        _debugShowMaterialGrid = v;
                      });
                    }),
                const Text('开启网格')
              ],
            ),
          ],
        ));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.withAlpha(77),
        alignment: const Alignment(0, 0.7),
        child: Text(
          '你点击了$_count次',
          style: const TextStyle(fontSize: 18, color: Colors.blue),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            _count++;
          });
        },
      ),
    );
  }
}

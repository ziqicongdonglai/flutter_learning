import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/category_page.dart';
import 'package:flutter_demo/bottom/favorite_page.dart';
import 'package:flutter_demo/bottom/home_page.dart';
import 'package:flutter_demo/bottom/sample_page.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  var _currentIndex = 0;

  final iconsMap = {
    "首页": Icons.home,
    "分类": Icons.category,
    "喜欢": Icons.favorite,
    "样例": Icons.book,
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Scaffold(
          // FloatingActionButton通常和Scaffold一起使用，在底部导航栏嵌入按钮
          floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.of(context).pushNamed('/add'),
            child: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
          // IndexedStack 只显示指定的子组件,
          bottomNavigationBar: _buildBottomAppBar(),
          // floatingActionButtonLocation用来控制  FloatingActionButton 的位置
          // FloatingActionButtonLocation.endFloat 默认使用 浮动右下角
          // FloatingActionButtonLocation.endDocked 右下角
          // FloatingActionButtonLocation.endTop  右上角
          // FloatingActionButtonLocation.startTop 左上角
          // FloatingActionButtonLocation.centerFloat 底部中间浮动
          // FloatingActionButtonLocation.centerDocked 底部中间不浮动
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: IndexedStack(
            index: _currentIndex,
            children: const [
              HomePage(),
              CategoryPage(),
              FavoritePage(),
              SamplePage(),
            ],
          )),
    );
  }

  Widget _buildBottomAppBar() {
    // BottomAppBar通常用于Scaffold.bottomNavigationBar，
    // 并且可以在其顶部留出一个缺口给floatingActionButton使用。
    return BottomAppBar(
        // 阴影值
        elevation: 2,
        // FloatingActionButton是悬浮在BottomAppBar上面，
        // 并没有嵌入里面，嵌入里面用法如下：
        shape: const CircularNotchedRectangle(),
        // 悬浮按钮外边距（缺口外边距）
        notchMargin: 5,
        color: Colors.indigo,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: info.asMap().keys.map((i) => _buildChild(i)).toList()
            // 在索引为2处 插入SizedBox 分隔
            ..insertAll(2, [const SizedBox(width: 30)]),
        ));
  }

  // 模拟创建类似 BottomNavigationBarItem
  Widget _buildChild(int i) {
    // _currentIndex 是否等于 选择的 索引i
    var active = i == _currentIndex;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // 手势检测组件 添加事件
      child: GestureDetector(
        // 点击对应改变状态
        // 把点击的索引赋值给_currentIndex
        onTap: () => setState(() => _currentIndex = i),
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          children: <Widget>[
            Icon(
              // info[i] iconMap的key的值
              // 根据key获取值
              iconsMap[info[i]],
              // 一致 则被选中 图标颜色为橙色
              // 否则图标为白色
              color: active ? Colors.orange : Colors.white,
              size: 30,
            ),
            Text(
              info[i],
              style: TextStyle(
                  // 一致 则被选中 文字颜色为橙色
                  // 否则文字为白色
                  color: active ? Colors.orange : Colors.white,
                  fontSize: 14),
            )
          ],
        ),
      ),
    );
  }

  List<String> get info => iconsMap.keys.toList();
}

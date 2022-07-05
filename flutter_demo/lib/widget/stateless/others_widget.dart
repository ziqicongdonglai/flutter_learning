import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class OthersWidget extends StatelessWidget {
  const OthersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = <dynamic, dynamic>{
      BannerLocation.topStart: const Color(0xFFEA4F39),
      BannerLocation.topEnd: const Color(0xFF3CAAFA),
      BannerLocation.bottomStart: const Color(0xFF5CE196),
      BannerLocation.bottomEnd: const Color(0xFFEEC43E),
    };

    return Scaffold(
      // PreferredSize 对其子控件施加任何约束，并且不以任何方式影响孩子的布局。
      // 对自定义AppBar.bottom和AppBar非常有用。
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180),
        child: AppBar(
          // 一个具有返回功能的IconButton，图标不可更改
          leading: const BackButton(color: Colors.white),
          title: const Text('PreferredSize及其他'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Container(
              height: 40,
              color: Colors.orange,
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '优先尺寸组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '优先尺寸组件，可容纳一个子组件，设置优先尺寸，不会对其子组件施加任何约束。',
                  style: descStyle,
                ),
              ),
              // 一个具有关闭功能的IconButton，图标不可更改，点击回退出当前路由栈
              const CloseButton(color: Colors.blue),
              const Text(
                'ModalBarrier',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '幕布层，防止用户与其背后的Widget交互，可以通过dismissible来决定点击时，是否触发返回。',
                  style: descStyle,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Colors.green.withOpacity(0.5),
                child: Column(
                  children: const [
                    SizedBox(
                      width: 100,
                      height: 80,
                      child: ModalBarrier(
                        // 点击是否返回
                        dismissible: true,
                        color: Colors.grey,
                      ),
                    ),
                    Text('点击灰色幕布层返回')
                  ],
                ),
              ),
              const Text(
                'Banner',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '角标组件，可容纳一个子组件，可以选择方位添加角标及文字信息，可以设置颜色。',
                  style: descStyle,
                ),
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: data.keys
                    .map((e) => Container(
                          color: const Color(0xFFD8F5FF),
                          width: 150,
                          height: 150 * 0.618,
                          child: Banner(
                            // 文字
                            message: "Flutter 3.0 发布",
                            // 位置
                            location: e,
                            //
                            color: data[e],
                            child: const Padding(
                              padding: EdgeInsets.all(20),
                              child: FlutterLogo(
                                textColor: Colors.blue,
                                style: FlutterLogoStyle.horizontal,
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

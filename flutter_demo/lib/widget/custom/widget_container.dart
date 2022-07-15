import 'package:flutter/material.dart';

import '../../common/data.dart';
import '../single/custom/custom_list_item.dart';

// 封装分类页面中列表中的每个Container组件
// ignore: must_be_immutable
class WidgetContainer extends StatelessWidget {
  late ContainerInfo info;
  late double level;

  WidgetContainer(this.info, {Key? key, this.level = 5.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        //   Container(
        //   margin: const EdgeInsets.all(5.0),
        //   // 装饰整个Container
        //   decoration: BoxDecoration(
        //       border: Border.all(width: 0.5, color: Colors.blue),
        //       color: Colors.blue.shade200.withAlpha(70),
        //       borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        //   child: Container(
        //     alignment: Alignment.center,
        //     child: Column(
        //       children: [
        //         SizedOverflowBox(
        //           alignment: Alignment.center,
        //           size: Size.zero,
        //           child: Padding(
        //             padding: const EdgeInsets.only(
        //               // right: 60.0,
        //               left: 250,
        //               top: 15.0,
        //             ),
        //             child: Tag(
        //               color: Colors.blue.shade600,
        //               shadowHeight: 8.0,
        //               size: const Size(20, 30),
        //             ),
        //           ),
        //         ),
        //         ListTile(
        //           shape: BeveledRectangleBorder(
        //               side: const BorderSide(width: 0.5, color: Colors.blue),
        //               borderRadius: BorderRadius.circular(10)),
        //           // 左侧leading图标区，用一个Container来绘制一个圆形，文字为标题的第一个字母
        //           leading: Wrap(
        //             direction: Axis.vertical,
        //             alignment: WrapAlignment.center,
        //             crossAxisAlignment: WrapCrossAlignment.center,
        //             // mainAxisAlignment: MainAxisAlignment.center,
        //             // crossAxisAlignment: CrossAxisAlignment.center,
        //             children: [
        //               Container(
        //                 alignment: Alignment.center,
        //                 width: 40,
        //                 height: 40,
        //                 // 装饰形状、背景色、阴影等
        //                 decoration: BoxDecoration(
        //                   border: Border.all(color: Colors.white, width: 3.0),
        //                   shape: BoxShape.circle, // Container为圆形
        //                   color: Colors.blue.shade50,
        //                   boxShadow: [
        //                     BoxShadow(
        //                       color: Colors.grey.withOpacity(0.2),
        //                       offset: const Offset(0.0, 0.0 // 阴影y轴偏移量
        //                           ),
        //                       blurRadius: 1, // 阴影模糊程度
        //                       spreadRadius: 2, // 阴影扩散程度
        //                     )
        //                   ],
        //                 ),
        //                 child: Text(
        //                   info.title.substring(0, 2).toUpperCase(),
        //                   style: TextStyle(
        //                       fontSize: 20,
        //                       color: Colors.blue.shade300,
        //                       shadows: [
        //                         BoxShadow(
        //                             color: Colors.black.withAlpha(50),
        //                             offset: const Offset(.5, .5),
        //                             blurRadius: 2)
        //                       ]),
        //                 ),
        //               ),
        //               Wrap(
        //                 children: icons
        //                     .map((e) => const Star(
        //                           size: Size(15.0, 15.0),
        //                           color: Colors.blue,
        //                         ))
        //                     .toList(),
        //               )
        //             ],
        //           ),
        //           title: Text(
        //             info.title,
        //             style: const TextStyle(
        //                 fontSize: 18,
        //                 color: Colors.black,
        //                 fontWeight: FontWeight.bold),
        //           ),
        //           subtitle: Text(
        //             info.subTitle,
        //             maxLines: 2,
        //             overflow: TextOverflow.ellipsis,
        //           ),
        //           selected: false,
        //           contentPadding: const EdgeInsets.all(5),
        //           dense: false,
        //           onTap: () => {Navigator.pushNamed(context, info.url)},
        //         ),
        //       ],
        //     ),
        //   ),
        // );
        Container(
      margin: const EdgeInsets.all(5.0),
      child: CustomListItem(
          ItemInfo(info.title, info.subTitle, info.url, data[1], data[6], 5)),
    );
  }
}

class ContainerInfo {
  late String title;
  late String subTitle;
  late String url;

  ContainerInfo(this.title, this.subTitle, this.url);
}

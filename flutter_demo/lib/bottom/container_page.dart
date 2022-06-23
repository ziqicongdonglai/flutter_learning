import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              color: Colors.pink,
              alignment: Alignment.center,
              child: GestureDetector(
                child: const Text(
                  '主轴对齐',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/main_axis');
                },
              ),
            ),
            Container(
              width: 150,
              height: 50,
              color: Colors.green,
              alignment: Alignment.center,
              child: GestureDetector(
                child: const Text(
                  '交叉轴对齐',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/cross_axis');
                },
              ),
            )
          ],
        ));
  }
}

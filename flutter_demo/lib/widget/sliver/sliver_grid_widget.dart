import 'package:flutter/material.dart';
import 'package:flutter_demo/common/data.dart';
import 'package:flutter_demo/common/style.dart';
import 'package:flutter_demo/widget/sliver/custom/common_sliver_build.dart';

class SliverGridWidget extends StatelessWidget {
  const SliverGridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverGrid'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Sliver网格',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  'Sliver家族的网格列表组件，和GridView类似，通过count和extent构造，通常用于CustomCrollView中。',
                  style: descStyle,
                ),
              ),
              SizedBox(
                  height: 500,
                  child: CustomScrollView(
                    slivers: <Widget>[
                      CommonSliverBuild.buildSliverAppBar(),
                      _buildSliverList(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSliverList() => SliverGrid.extent(
        childAspectRatio: 1 / 0.618,
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: data
            .map((e) => Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 60,
                  color: e,
                  child: Text(
                    colorString(e),
                    style: shadowStyle,
                  ),
                ))
            .toList(),
      );
}

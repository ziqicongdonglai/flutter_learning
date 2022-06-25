import 'package:flutter/material.dart';

// 植物小店
class PlantShop extends StatelessWidget {
  const PlantShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // banner中的字体样式
    const style = TextStyle(
        color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold);
    // 构建脚手架，包含顶部appBar和body
    return Scaffold(
      appBar: _buildAppBar(),
      // 包含1.贝塞尔弧形部分 和 2.热门推荐 特色植物部分
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // 贝塞尔弧形部分
            ClipPath(
              // 裁剪。使用自定义的类构建贝塞尔弧形
              clipper: BottomClipper(),
              child: Container(
                // 通过内边距让文字上移
                padding: const EdgeInsets.only(bottom: 50.0),
                // 和 appBar背景色保持一致，融为一体
                color: const Color(0xFF0C9869),
                height: 200,
                child: Column(
                  children: [
                    Row(
                      // 主轴和交叉轴的对齐方式
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        // Row布局，左文右图
                        Text(
                          'Hi 小鹿扫描！',
                          style: style,
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('images/avatar.jpg'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Body类构建下面的热门推荐和特色植物
            const Body()
          ],
        ),
      ),
    );
  }

  // 构建顶部appBar的私有方法
  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xFF0C9869),
      actions: const [
        Icon(
          Icons.code,
          color: Colors.white,
        )
      ],
    );
  }
}

// 自定义裁剪路径，通过贝塞尔曲线构建弧形
class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0); // 第一个点
    path.lineTo(0, size.height - 60); // 第二个点
    var firstControlPoint = Offset(size.width / 2, size.height); // 曲线开始点
    var firstEndPoint = Offset(size.width, size.height - 60); // 曲线结束点
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height - 60); // 第四个点
    path.lineTo(size.width, 0); // 第五个点
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

// Body类构建
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 标题字体
    var titleStyle = const TextStyle(
        color: Colors.black87,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic);
    // 纵向滚动视图，两部分组成：热门推荐和特色植物
    return SingleChildScrollView(
      // 纵向 + Column布局
      scrollDirection: Axis.vertical,
      child: Column(
        // 水平方向（交叉轴）左对齐
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '热门推荐',
                  style: titleStyle,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF0C9869),
                      // 更大的圆角 让按钮变为胶囊形
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text('更多'),
                )
              ],
            ),
          ),
          // RecommendsPlants类，用于构建横向滚动的热门推荐区域
          const RecommendsPlants(),
          Container(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '特色植物',
                  style: titleStyle,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF0C9869),
                      // 更大的圆角 让按钮变为胶囊形
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text('更多'),
                )
              ],
            ),
          ),
          // FeaturedPlants类，用于构建纵向滚动的特色植物区域
          const FeaturedPlants()
        ],
      ),
    );
  }
}

// 构建热门推荐
class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 水平滚动视图
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const <Widget>[
          // 调用封装的自定义组件，传入参数值
          RecommendPlantCard(
            image: "images/plant1.png",
            title: '虎皮兰',
            country: '中国',
            price: 440,
          ),
          RecommendPlantCard(
            image: "images/plant2.png",
            title: '当归',
            country: '中国',
            price: 440,
          ),
          RecommendPlantCard(
            image: "images/plant3.png",
            title: '萨曼沙',
            country: '俄罗斯',
            price: 440,
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const RecommendPlantCard({
    required this.image,
    required this.title,
    required this.country,
    required this.price,
  });

  final String image, title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            width: size.width * 0.4,
            height: 150,
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.indigo.withOpacity(0.66))
                ]),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      title.toString(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    Text(
                      country.toString(),
                      style: TextStyle(color: Colors.indigo.withOpacity(0.5)),
                    )
                  ],
                ),
                const Spacer(),
                Text(price.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: Colors.green))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const <Widget>[
          // 调用封装的自定义组件，传入图片地址
          FeaturedPlantCard(
            image: "images/plant1.png",
          ),
          FeaturedPlantCard(
            image: "images/plant2.png",
          ),
          FeaturedPlantCard(
            image: "images/plant3.png",
          ),
        ],
      ),
    );
  }
}

// 自定义类，定义图片地址，使用卡片构建
class FeaturedPlantCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const FeaturedPlantCard({required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // alignment：Alignment.center
      margin: const EdgeInsets.all(10),
      height: 320,
      // child：Image.asset(image)
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image))),
    );
  }
}

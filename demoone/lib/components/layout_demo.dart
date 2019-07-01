import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class layoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        //这个部件将FlexBox的flex-decoration设置成纵向
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(//给子部件设置限制，比如最大最小值
            constraints: BoxConstraints(//最大最小限制写在这个部件里
              minHeight: 200,
              maxWidth: 200
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          )
        ],
      ),
    );
  }
}

//给子部件设置一个宽高比例
class AspectRadioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(//设置子部件的宽高比例，然后在通过这个比例来设置子部件的高度
            aspectRatio: 16/9,
            child: Container(
              color: Color.fromRGBO(3, 53,255, 1.0),
            ),
          );
  }
}
//重叠一摞小部件
class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(//stack 里面可以放一摞小部件，里面的小部件可以叠加的,叠加的时候将最大的自部件为地板的
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                //固定尺寸的盒子
                width: 200,
                height: 300,
                child: Container(
                  //alignment:Alignment.bottomRight,//在盒子中对齐的方式
                  alignment: Alignment(
                      0, -0.5), //x轴是负数往左靠拢，如果整数的往右靠拢。 y轴是负数的话往上，y轴是整数的话往下
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  )
                ),
              ),
              SizedBox(
                //固定尺寸的盒子
                width: 100,
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0)
                      ]
                    ),
                  ),
                  child: Icon(
                    Icons.brightness_2,
                    color: Colors.white,
                    size: 32.0,
                  ),
                ),
              ),
              Positioned(//通过这个部件可以定位在大部件里面的相对位置
                right: 20,
                top: 20,
                child: Icon(Icons.ac_unit,color:Colors.white,size:30.0),
              ),
              Positioned(//通过这个部件可以定位在大部件里面的相对位置
                right: 40,
                top: 70,
                child: Icon(Icons.ac_unit,color:Colors.white,size:26.0),
              ),
              Positioned(//通过这个部件可以定位在大部件里面的相对位置
                right: 10,
                top: 130,
                child: Icon(Icons.ac_unit,color:Colors.white,size:20.0),
              )
            ],
          );
  }
}

//主轴属性
class MainAxisDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // child: Row(//这个部件将FlexBox的flex-decoration设置成横向
      //   children: <Widget>[
      //     IconBadge(Icons.pool),
      //     IconBadge(Icons.beach_access),
      //     IconBadge(Icons.airplanemode_active)
      //   ],
      // ),
      child: Row(
        //这个部件将FlexBox的flex-decoration设置成纵向
        //crossAxisAlignment: CrossAxisAlignment.center,//在交叉轴中心对齐
        //crossAxisAlignment: CrossAxisAlignment.start,//在交叉轴的顶部对齐
        //crossAxisAlignment: CrossAxisAlignment.end,//在交叉轴的底部对齐
        crossAxisAlignment: CrossAxisAlignment.stretch, //交叉轴的拉伸

        //mainAxisAlignment: MainAxisAlignment.start,//里面的小部件在主轴的开始位置
        //mainAxisAlignment: MainAxisAlignment.end,//里面的小部件在主轴的结束位置
        //mainAxisAlignment:MainAxisAlignment.center,//里面的小部件在主轴的结束位置
        //mainAxisAlignment:MainAxisAlignment.spaceAround,//空间分配到小部件的周围
        //mainAxisAlignment:MainAxisAlignment.spaceBetween,//空间分配到小部件的之间
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //空间平均地分配到小部件之间
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access),
          IconBadge(Icons.airplanemode_active)
        ],
      ),
    );
  }
}

//创建可重复使用的图片绘成的自定义小部件
class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  //构造方法
  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}

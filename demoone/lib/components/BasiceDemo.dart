import 'package:flutter/material.dart';

class BasiceDemo extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(//如果界面显示背景色或者图片，设置固定高度宽度，外边距和内边距，设置圆角的话用这个部件
      decoration: BoxDecoration(//设置背景图像
        image: DecorationImage(
          //image: AssetImage(assetName),//引入项目里面的图像
          //引入网络上的图片
          image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561968521494&di=2e2a658d18af20dbc1f7b3a382d851b8&imgtype=0&src=http%3A%2F%2Fpic22.nipic.com%2F20120714%2F4499633_175117456000_2.jpg'),
          alignment: Alignment.topCenter,//控制图片位置
          //repeat: ImageRepeat.repeat//重复模式
          fit: BoxFit.cover,//填充模式
          colorFilter: ColorFilter.mode(//滤镜颜色
            Colors.indigoAccent[400].withOpacity(0.5),//滤镜颜色
            BlendMode.hardLight//滤镜的混合模式
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,//主轴对齐
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 32,color: Colors.white,),
            //color: Color.fromRGBO(3, 54, 255, 1.0),
            margin: EdgeInsets.only(left: 30,top: 30),
            padding: EdgeInsets.only(left:8.0,right:8.0,top:15.0,bottom:15),
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(//装饰盒子
              color: Color.fromRGBO(3, 54, 255, 1.0), 
              // border: Border(//加边框
              //   top: BorderSide(
              //     color: Colors.indigoAccent[100],
              //     width: 3.0,
              //     style: BorderStyle.solid
              //   ),
              //   bottom: BorderSide(
              //     color: Colors.indigoAccent[100],
              //     width: 2.0,
              //     style: BorderStyle.solid
              //   )
              // )
              border: Border.all(//边框
                color: Colors.indigoAccent[100],
                width: 2.0,
                style: BorderStyle.solid
              ),
              // borderRadius: BorderRadius.only(//圆角
              //   topLeft: Radius.circular(50),
              //   topRight: Radius.circular(50),
              //   bottomLeft: Radius.circular(50),
              //   bottomRight: Radius.circular(50)
              // ),
              //borderRadius: BorderRadius.circular(16),//均加所有边
              boxShadow:[//设置阴影
                BoxShadow(  
                  offset: Offset(6, 6),//偏移量（x，y）
                  color: Colors.red[100],
                  blurRadius: 15.0,//模糊程度
                  spreadRadius: 6.0,//阴影扩散程度
                )
              ],
              shape: BoxShape.circle,//改变形状，
              // gradient: RadialGradient(//景象渐变
              //   colors: [
              //     Color.fromRGBO(7,102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0)
              //   ]
              // ),
              gradient: LinearGradient(//线性渐变
                colors: [
                  Color.fromRGBO(7,102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          )
        ],
      ),
    );
  }
}

//行内显示多种样式
class RicheTextDemo extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(//如果想在一行文字写多种样式，用这个部件
      text: TextSpan(
        text: 'wellcome to',
        style: TextStyle(
          color: Colors.orange,
          fontSize:34.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic
        ),
        children: [
          TextSpan(
            text: '@nursoft',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontStyle: FontStyle.normal,
            )
          )
        ]
      ),
    );
  }
}

class TextDemo extends StatelessWidget{
  final TextStyle _fontstyle = TextStyle(
    fontSize: 16.0,
  );
  final String _title = '比特大陆IPO';
  final String _auther = '张泽宇';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('<<$_title>>----$_auther 港交所总裁李小加则给出了更加具体的原因对于IPO港交所的核心原则是上市适应性suitability拟上市公司给投资者介绍出来的业务模式是否适合上市？比如说过去通过A业务赚了几十亿美金，但突然说将来要做B业务但还没有任何业绩。或者说B的业务模式更好，那我就觉得当初你拿来上市的A业务模式就没有持续性了。',
      textAlign: TextAlign.left,
      style: _fontstyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

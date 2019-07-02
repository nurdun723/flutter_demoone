import 'package:flutter/material.dart';
import '../model/post.dart';

class VeiwDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewBuilerDemo();
  }
}


//GridView.extent 和 GridView.count 生成的网格数量是固定的，如果按照数据数量或者按需求来生成的网格布局的话使用GridView.builder来生成
class GridViewBuilerDemo extends StatelessWidget {
  Widget _gridbuilderitem(BuildContext context ,int index){
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,//设置图片的填充模式
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      itemCount: posts.length,//网格数量
      itemBuilder: _gridbuilderitem,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8
      ),
    );
  }
}
//通过GridView.extent来生成网格布局
class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildGridextent(int length){
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[400],
        alignment: Alignment(0,0),//设置子部件的对齐
        child: Text('item$index',style: TextStyle(fontSize: 18,color: Colors.black26),),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 150,//交叉轴方向显示的子部件最大宽度
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: _buildGridextent(50),
    );
  }
}
//通过GridView.count来生成网格布局
class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildList(int length){
    return List.generate(length, (int index){//生成列表部件
      return Container(
        color: Colors.grey[400],
        alignment: Alignment(0,0),
        child: Text(
          'Item$index',
          style:TextStyle(
            fontSize: 18,
            color: Colors.black38
          )
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(//生成网格视图
      crossAxisCount: 2,//交叉轴显示的数量
      crossAxisSpacing: 16,//交叉轴上的边距
      mainAxisSpacing:16,//主轴方向上的边距
      scrollDirection: Axis.vertical,//控制滚动方向，默认是垂直的
      children: _buildList(100),
    );
  }
}
//PageView.builder 按需生成页面
class PageViewBuilderDemo extends StatelessWidget {
  Widget _PageviewBuilder(BuildContext context ,int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style:TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
              Text(
                posts[index].author,
                
              )
            ],
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,//页面数量
      itemBuilder: _PageviewBuilder,
    );
  }
}
//页面视图部件里面包含几个子页面，用户一页一页地横向或者纵向方向浏览页面的
class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageViewDemos();
  }
}
//页面视图
class PageViewDemos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      //pageSnapping: false,//控制自动翻页面功能
      //reverse: true,//倒置
      scrollDirection: Axis.vertical,//控制翻页方向
      onPageChanged: (currentPage) => {//页面显示时调用一个回调函数
        debugPrint('Page:$currentPage')
      },
      //控制pageview部件上显示的页面的部件
      controller: PageController(
        initialPage: 1,//控制初始时显示的页面
        keepPage: false,//控制是否让pageviw部件记住当前页面
      ),
      children: <Widget>[
        PageViewItemDemo('OnePage',100),
        PageViewItemDemo('TwoPage',500),
        PageViewItemDemo('ThreePage',900)
      ],
    );
  }
}
//自定义视图页面的子页面部件
class PageViewItemDemo extends StatelessWidget {
  final String txt;
  final int colornum;

  //构造方法
  PageViewItemDemo(this.txt,this.colornum);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
          alignment: Alignment.center,
          color: Colors.orange[colornum],
          child: Text(
            '$txt',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black
            ),
          ),
        );
  }
}
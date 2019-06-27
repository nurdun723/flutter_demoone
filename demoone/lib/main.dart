import 'package:flutter/material.dart';
import 'model/post.dart';

void main() {
  runApp(App());
}

//自定义小部件
class App extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:HomeBar(),
      //设置页面主题
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
    );
  }
}

//头部部件
class HomeBar extends StatelessWidget {
  //列表创建的私有部件
  /** 
   * @params context BuildContext 
   * @params index int 列表下标
   * return Text 部件
   * */ 
  Widget _listItemBuilder(BuildContext context , int index){
    return Container(//列表内容部件
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(//向下排列
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),//图片下方放一个方块
          Text(//列表标题
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0,)
        ],

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            '首页',
             textAlign: TextAlign.center
          ),
          elevation: 20.0,//头部阴影大小
        ),
        body:ListView.builder(//列表视图部件
          itemCount: posts.length,//列表长度
          itemBuilder: _listItemBuilder,
        ),
      );
  }
}

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'hello nurdun',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.w400,
          color: Colors.red
        ),
      ),
    );
  }
}





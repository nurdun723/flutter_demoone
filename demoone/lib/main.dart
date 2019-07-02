import 'package:flutter/material.dart';
import './components/listView_temp.dart';
import './components/leftNavigate.dart';
import './components/BottonNavigationDemo.dart';
import 'components/BasiceDemo.dart';
import 'components/layout_demo.dart';
import 'components/view_demo.dart';

void main() {
  runApp(App());
}

//自定义小部件
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去掉debug模式
      home: Home(),
      //设置页面主题
      theme: ThemeData(
          primarySwatch: Colors.green,
          highlightColor: Color.fromRGBO(200, 200, 150, 0.5), //tab选项按钮的水波纹颜色
          splashColor: Colors.white70),
    );
  }
}

//头部部件
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('search'),
              )
            ],
            title: Text('首页'),
            centerTitle: true,
            elevation: 20.0, //头部阴影大小
            bottom: TabBar(
              unselectedLabelColor: Colors.black38, //未选中的tab选项颜色
              indicatorColor: Colors.white, //tab选项下面的线的颜色
              //indicatorSize: TabBarIndicatorSize.label,//tab选项下划线长度
              indicatorWeight: 1.0, //tab选项的下划线的高度
              tabs: <Widget>[
                Tab(icon: Icon(Icons.account_balance)),
                Tab(icon: Icon(Icons.account_balance_wallet)),
                Tab(icon: Icon(Icons.account_box)),
                Tab(icon: Icon(Icons.view_quilt)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewTemplate(),
              BasiceDemo(),
              layoutDemo(),
              VeiwDemo()
            ],
          ),
          drawer: DrawLeftNavigate(),//抽屉边栏
          bottomNavigationBar:BottonNavigationDemo() 
        ),
          
    );
  }
}



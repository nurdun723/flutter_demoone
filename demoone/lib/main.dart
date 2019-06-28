import 'package:flutter/material.dart';
import './components/listView_temp.dart';

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
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

//头部部件
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(//图标按钮部件
          icon: Icon(Icons.menu),
          tooltip: 'Navigration',
          onPressed: ()=>debugPrint('hello ooooo'),
        ),
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
      ),
      body: null,
    );
  }
}




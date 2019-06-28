import 'package:flutter/material.dart';

class BottonNavigationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottmNavigationDemoState();
  }
}

class _BottmNavigationDemoState extends State<BottonNavigationDemo> {
  int _currentIndex = 0;
  void _onTapHandler (int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      //底部导航栏
      type: BottomNavigationBarType.fixed,//下部导航的item大于3的情况下，加这个属性
      fixedColor: Colors.green,//激活选项的颜色
      currentIndex: _currentIndex,//激活选项的下标
      onTap: _onTapHandler,//点击被选中的选项被调用的方法
      items: [//底部导航选项
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), title: Text('商城')),
        BottomNavigationBarItem(icon: Icon(Icons.payment), title: Text('订单')),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), title: Text('晒单')),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('用户'))
      ],
    );
  }
}

import 'package:flutter/material.dart';
//侧部抽屉边栏
class DrawLeftNavigate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      //抽屉边栏
      child: ListView(
        //列表视图
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(//抽屉边栏用户信息
            accountName: Text(
              'nurdun',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            accountEmail: Text('123456789@sina.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562305049&di=e8d16ef0bf53331cf4f65ec192370ed1&imgtype=jpg&er=1&src=http%3A%2F%2Fimg5.duitang.com%2Fuploads%2Fitem%2F201410%2F15%2F20141015080232_XAdzM.thumb.224_0.jpeg'),
            ),
            decoration: BoxDecoration(//设置抽屉边栏头部方块
              color: Colors.green[400],
              image: DecorationImage(
                  //设置背景图片
                  image: NetworkImage(
                      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561712160773&di=e2e0fcff0f2e0b15185655062e26da9d&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201408%2F14%2F20140814175928_fdJej.jpeg'),
                  fit: BoxFit.cover, //背景图片沾满
                  colorFilter: ColorFilter.mode(
                      //设置背景图片的颜色
                      Colors.black.withOpacity(0.45),
                      BlendMode.srcOver)),
            ),
          ),
          SizedBox(height: 15.0),
          ListTile(
            title: Text(
              '消息',
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.green),
            ),
            trailing: Icon(
              Icons.chat_bubble,
              size: 20.0,
              color: Colors.green,
            ),
            onTap: () => Navigator.pop(context), //关闭弹窗
          ),
          ListTile(
            title: Text(
              '收藏',
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.green),
            ),
            trailing: Icon(
              Icons.bookmark,
              size: 20.0,
              color: Colors.green,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              '设置',
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.green),
            ),
            trailing: Icon(
              Icons.brightness_low,
              size: 20.0,
              color: Colors.green,
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
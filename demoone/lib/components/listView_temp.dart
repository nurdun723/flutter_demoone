import 'package:flutter/material.dart';
import '../model/post.dart';
class ListViewTemplate extends StatelessWidget {
  //列表创建的私有部件
  /** 
   * @params context BuildContext 
   * @params index int 列表下标
   * return Text 部件
   * */
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      //列表内容部件
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        //向下排列
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0), //图片下方放一个方块
          Text(
            //列表标题
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(
            height: 16.0,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      //列表视图部件
      itemCount: posts.length, //列表长度
      itemBuilder: _listItemBuilder,
    );
  }
}
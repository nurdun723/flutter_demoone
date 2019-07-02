import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(//网格布局头部
            //pinned: true,//控制是否要固定顶部不动
            floating: false,//是否要一动时显示
            expandedHeight: 178,//设置高度
            flexibleSpace: FlexibleSpaceBar(//设置一个弹性部件
              title: Text(
                '欢迎来到Flutter',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w400
                ),
              ),
              background:Image.network(
              'https://resources.ninghao.net/images/overkill.png',
              fit: BoxFit.cover,
            ),
            ),
          ),
          SliverSafeArea(//让界面显示在安全区域内
            sliver: SliverPadding(//给网格布局添加内边距
              padding: EdgeInsets.all(8),
              sliver: SliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}

//列表布局
class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context ,int index){
          return Padding(
            padding: EdgeInsets.only(bottom: 32),
            child: Material(
              borderRadius:BorderRadius.circular(45.0),
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 25,
                    left: 25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].title,
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 18
                          )
                        ),
                        Text(
                          posts[index].author,
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 13  
                          )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        childCount: posts.length
      ),
    );
  }
}

//网格布局
class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(//构建网格视图有关的东西
              crossAxisCount:2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1,//控制网格视图的比例
            ),
            //用于构建网格视图里面的项目用的
            delegate:SliverChildBuilderDelegate(
              (BuildContext context ,int index){
                return Container(
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
              childCount: posts.length
            ) ,
          );
  }
}
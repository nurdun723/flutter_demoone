import 'package:flutter/material.dart';
class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'hello nurdun',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40.0, fontWeight: FontWeight.w400, color: Colors.red),
      ),
    );
  }
}
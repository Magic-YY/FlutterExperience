import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/TipRoute.dart';

class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RouterTestRoute"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            //打开TipRoute，并等待返回结果
            var result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return TipRoute(text: "我是提示xxx");
                },
              ),
            );
            // 输出TipRoute路由返回结果
            print("路由返回值：$result");
          },
          child: Text("打开提示页"),
        ),
      ),
    );
  }
}

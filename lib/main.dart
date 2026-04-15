import 'package:flutter/material.dart';

// 程序入口
void main() {
  runApp(const MyApp());
}

// 根组件
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 去掉右上角的debug标签
      debugShowCheckedModeBanner: false,
      // 应用首页
      home: Scaffold(
        // 顶部导航栏
        appBar: AppBar(title: const Text("我的第一个Flutter程序")),
        // 页面主体
        body: const Center(
          child: Text(
            "我的小说漫画阅读器\n即将运行在iPhone上",
            style: TextStyle(
              fontSize: 24,
              height: 1.5, // 行高
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
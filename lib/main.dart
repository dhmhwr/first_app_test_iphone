import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MyApp());
}

// 1. 根组件：固定不变
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// 2. 主页：动态页面（可以刷新Text）
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

// 3. 真正干活的「状态类」
class _HomePageState extends State<HomePage> {
  // 变量：专门存路径文本
  String showText = "加载中...";

  // 页面初始化：只执行一次
  @override
  void initState() {
    super.initState();
    // 异步获取路径
    getApplicationDocumentsDirectory().then((dir) {
      // 刷新界面，把路径塞进 Text
      setState(() {
        showText = dir.path;
      });
    });
  }

  // 页面UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("存储路径")),
      body: Center(
        // 就这一个 Text 打印路径
        child: Text(showText),
      ),
    );
  }
}
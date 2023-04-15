import 'package:flutter/material.dart';

void main() {
  // ボタンを押したら呼ばれる関数
  xxxx() {
    debugPrint('これから通信を始めます');
    debugPrint('通信中です');
    debugPrint('通信が終わりました');
  }

  // ボタン本体
  final button = ElevatedButton(
    onPressed: xxxx,
    child: Text('押してみて'),
    style: ElevatedButton.styleFrom(
      primary: Colors.green,
    ),
  );

  // アプリ
  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: button,
      ),
    ),
  );
  runApp(a);
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.0, //1
                backgroundImage: AssetImage('images/sample_png.png'), //2
              ),
              Text(
                'sample',
                style: TextStyle(
                  fontFamily: 'Raleway', //3
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal.shade100, //4
                  fontSize: 20.0,
                  letterSpacing: 2.5, //5
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//1 radiusは大きさの指定
//2 imageの設定はyamlからassetsで指定する。AssetImage('パス')で指定する
//3 style内でfontFamilyを指定することでフォント変更可能
//4 colorのオプションでshade数字 を追加すると色が透けるようになる
//5 letterSpacing は文字の間隔を設定する

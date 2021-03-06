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
              )
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

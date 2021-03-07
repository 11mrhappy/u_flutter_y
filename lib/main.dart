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
        body: SafeArea( //6
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
              Container(
                padding: EdgeInsets.all(10.0),  //7
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0), //8
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '+81 123 123 123',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    Text(
                      'email@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//Rowは        子要素を横に並べたい場合に使用する。子要素はchildrenに複数のwidgetをarrayとして定義できる
//Columnは     子要素を縦に並べたい場合に使用する。Rowと同じく子要素はchildren・・
//Centerは     子要素の横または縦を真ん中に位置させる。
//  子要素がRowなら縦に対して真ん中で横に寄っている。Columnなら横に対しては真ん中だが縦が上に寄っている
//Containerは  子のサイズやpaddingやmarginなどの設定ができる。
//SizedBoxは   指定されたサイズの箱を作れる。プロパティはwidth、height, child。

//1 radiusは大きさの指定
//2 imageの設定はyamlからassetsで指定する。AssetImage('パス')で指定する
//3 style内でfontFamilyを指定することでフォント変更可能
//4 colorのオプションでshade数字 を追加すると色が透けるようになる
//5 letterSpacing は文字の間隔を設定する
//6 SafeAreaウィジェットは、iPhoneX系のノッチなど端末固有のレイアウト調整を不要にするwidget。
//7 EdgeInsets.allでmarginやpaddingの全方向一定の指定、.onlyで指定した方向に設定できる
//8 symmetricは上下だけ、左右だけを同じに指定したいときに使う。verticalは上下の値、horizontalは左右の値を指定する。
//  ちなみにEdgeInsetsには.fromLTRBもあり、leftからbottomまで細かく指定できる

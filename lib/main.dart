import 'package:flutter/material.dart';

import 'TaticType.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),);
}
var taticTypeArray=["開局","中局","殘局"];
var tatics = [
  {"中炮", "仙人指路"},
  {"先棄後取", "頓挫"},
  {"雙車錯", "天地炮"},
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: taticTypeArray.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("象棋戰術介紹"),
          backgroundColor: Colors.blue[100],
          bottom: TabBar(
            tabs: [
              for (var tatic in taticTypeArray) Tab(text: tatic)
            ],
          ),
        ),
        body:TabBarView(
          children: [
            for (var i = 0; i < taticTypeArray.length; i++)
              TaticType(taticTypeArray[i], tatics[i]),
          ],
        )
      )
    );
  }
}

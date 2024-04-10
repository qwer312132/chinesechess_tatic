import 'package:flutter/material.dart';

import 'Tatic.dart';

class TaticType extends StatelessWidget
{
  String? name;
  var tatics = <String>{};
  TaticType(String this.name, var this.tatics, {super.key});
  @override
  Widget build(BuildContext context)
  {
    return GridView.count(
      padding: const EdgeInsets.all(8),
      crossAxisCount: 2,
      children: [for (var tatic in tatics) 
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Tatic(tatic)),
            );
          },
          child: Card(
            child: Center(
              child:Text(tatic, style: const TextStyle(fontSize: 20)),
            )
          )
        )
      ]
    );
  }
}
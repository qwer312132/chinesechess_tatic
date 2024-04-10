import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String? detailText;
  final String? imagePath;
  const Detail(String this.detailText, String this.imagePath, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath!, height: 500, width: 300),
        Text(detailText!, style: const TextStyle(fontSize: 20)),
      ],
    );
  }
}
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    Key? key,
    this.textName = "Saurabh",
    this.color=Colors.black,
  }) : super(key: key);

  final String textName;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: color),
    );
  }
}

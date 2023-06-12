import 'package:flutter/cupertino.dart';

Widget showText(String text, double fontSize, Color color) {
  return Text(
    text,
    style: TextStyle(fontSize: fontSize, color: color),
  );
}

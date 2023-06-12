import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../uility/AppColors.dart';
import '../../uility/BaseApp.dart';

Widget PowerUseLowerView(Size size, String data1, String data2, String data3,
    String data4, String data5, var icon, var color) {
  return Container(
    width: size.width,
    height: size.height * 0.13,
    decoration: BoxDecoration(
      color: AppColors.shasow_bluw,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          height: size.height * 0.08,
          width: size.width * 0.17,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: FittedBox(child: Icon(icon)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              showText(data1, 18, Colors.black),
              showText(data2, 14, Colors.black),
              showText(data3, 14, Colors.grey),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24, right: 7),
          child: Column(
            children: [
              showText(data4, 18, Colors.blueAccent),
              showText(data5, 12, color)
            ],
          ),
        )
      ],
    ),
  );
}

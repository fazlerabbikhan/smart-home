import 'package:flutter/material.dart';
import '../../uility/AppColors.dart';

Widget HomeTopView(Size size, var icon, String data, String name) {
  return Container(
    height: size.height * 0.20,
    width: size.width * 0.26,
    decoration: BoxDecoration(
      color: Colors.white12,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Padding(
      padding: EdgeInsets.all(4.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 2),
                height: size.height * 0.04,
                width: size.width * 0.06,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Icon(icon),
              ),
              Text(
                data,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    ),
  );
}

Widget HomeMiddleView(
    Size size, String tempar, String name, String device, String image) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: size.height * 0.23,
      width: size.width * 0.45,
      decoration: BoxDecoration(
        color: AppColors.shasow_colour,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: FittedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: size.height * 0.03,
                width: size.width * 0.10,
                child: Text(
                  tempar,
                  style: TextStyle(color: Colors.white),
                ),
                color: AppColors.main_colour,
              ),
            ),
            Center(
              child: Container(
                height: size.height * 0.10,
                width: size.width * 0.40,
                child: FittedBox(child: Image(image: AssetImage(image))),
              ),
            ),
            Text(
              name,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Text(
              device,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget HomeLowerView(var size, String name, String subname, String lname,
    String lsubname, String image) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: size.height * 0.13,
      width: size.width * 0.45,
      decoration: BoxDecoration(
        color: AppColors.shasow_chocklet,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: FittedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.15,
                    child: Image(image: AssetImage(image)),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          name,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Text(
                        subname,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        lname,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        lsubname,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.20,
                    child: Image(image: AssetImage("assets/switch.png")),
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/uility/AppColors.dart';
import 'package:smart_home/uility/BaseApp.dart';
import '../widgets/HomePageWidgets/Allwidgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: size.height * 0.431,
                  decoration: BoxDecoration(
                    color: AppColors.main_colour,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(50)),
                  ),
                  child: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  showText("Good Morning,", 30, Colors.white),
                                  Text(
                                    "Kimberly Masterangelo",
                                  ),
                                ],
                              ),
                              Container(
                                  height: size.width * 0.1,
                                  width: size.width * 0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                  ),
                                  child: Icon(Icons.notification_add)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Container(
                            height: size.height * 0.25,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            //Top Order View Implemented Here.....
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: size.height * 0.10,
                                    width: size.width * 01,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: size.height * 0.08,
                                          width: size.width * 0.15,
                                          child: Image(
                                              image: AssetImage(
                                                  "assets/weather.png")),
                                        ),
                                        Container(
                                          height: size.height * 0.09,
                                          width: size.width * 0.40,
                                          child: FittedBox(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("May 16,2023 10:5 am"),
                                                showText(
                                                    "Cloudy", 20, Colors.black),
                                                Text("Jakarta, Indonesia")
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: size.height * 0.20,
                                          width: size.width * 0.15,
                                          child: Text(
                                            "19 C",
                                            style: TextStyle(fontSize: 30),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.black54,
                                  ),
                                  Container(
                                    height: size.height * 0.08,
                                    width: size.width * 01,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        HomeTopView(size, Icons.water_drop,
                                            "97 %", "Humidity"),
                                        HomeTopView(size, Icons.remove_red_eye,
                                            "7 Km", "Visibility"),
                                        HomeTopView(size, Icons.remove_red_eye,
                                            "3 km/h", "NE Wind")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.main_colour,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(50)),
                    ),
                    child: Container(
                      height: size.height * 0.49,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(50)),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  showText("Rooms", 20, Colors.black),
                                  showText("See All", 20, Colors.blueAccent),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  HomeMiddleView(size, "19 C", "Living Room",
                                      "5 Device", "assets/sufa.png"),
                                  HomeMiddleView(size, "12 C", "BedRoom",
                                      "8 Device", "assets/sufa.png")
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      showText("Active", 20, Colors.black),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: size.height * 0.025,
                                        width: size.width * 0.05,
                                        color: AppColors.main_colour,
                                        child: Center(
                                            child: Text(
                                          "6",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      )
                                    ],
                                  ),
                                  showText("See All", 20, Colors.blueAccent)
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                HomeLowerView(size, "Temparature", "19 C", "Ac",
                                    "Living Room", "assets/ac.png"),
                                HomeLowerView(size, "Colour", "White", "Lamp",
                                    "Dining Room", "assets/ac.png"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

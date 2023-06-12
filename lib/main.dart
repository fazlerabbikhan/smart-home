import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smart_home/Screens/HomePage.dart';
import 'package:smart_home/Screens/LampPage.dart';
import 'package:smart_home/Screens/PowerUages.dart';
import 'package:smart_home/Screens/SmartHome.dart';
import 'package:smart_home/uility/AppColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home management',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Variables part
  final screens = [HomePage(), LampPage(), PowerUages(), SmartHome()];
  int page_index = 0;

  //Code Part
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[page_index],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.main_colour,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            onTabChange: (index) {
              setState(() {
                page_index = index;
              });
            },
            backgroundColor: AppColors.main_colour,
            tabBackgroundColor: Colors.white,
            color: Colors.white,
            padding: EdgeInsets.all(16.0),
            gap: 8,
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.analytics,
                text: "Smart",
              ),
              GButton(
                icon: CupertinoIcons.graph_circle,
                text: "Usage",
              ),
              GButton(icon: CupertinoIcons.profile_circled, text: "Profile")
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/uility/BaseApp.dart';
import 'package:smart_home/widgets/PowerUagesPage/allWidgets.dart';
import '../uility/AppColors.dart';

class PowerUages extends StatefulWidget {
  const PowerUages({super.key});

  @override
  State<PowerUages> createState() => _PowerUagesState();
}

class _PowerUagesState extends State<PowerUages> {
  //Variable part

  //Code Section
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Container(
                height: size.height * 0.48,
                decoration: BoxDecoration(
                  color: AppColors.main_colour,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50)),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            showText("Power Usage", 20, Colors.white),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                              ),
                              child: Icon(Icons.menu_outlined),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            showText("Use This Week", 14, Colors.white70),
                            showText("2500 Watt", 14, Colors.white70),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        customGraphWidget(size),
                      ],
                    ),
                  ),
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
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  showText("Total Today", 20, Colors.black),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: AppColors.main_colour,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Center(
                                        child: showText("4", 20, Colors.white)),
                                  )
                                ],
                              ),
                              showText("See All", 18, AppColors.main_colour),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          PowerUseLowerView(
                              size,
                              "LAMP",
                              "kitchen - Beadroom",
                              "8 Unit | 8 Jan",
                              "1000 kh/h",
                              "-11.2 %",
                              Icons.lightbulb,
                              Colors.red),
                          SizedBox(
                            height: 5,
                          ),
                          PowerUseLowerView(
                              size,
                              "Air Condition",
                              "kitchen - living Room",
                              "8 Unit | 12 Jan",
                              "1000 kh/h",
                              "-10.2 %",
                              Icons.air_rounded,
                              Colors.green),
                          SizedBox(
                            height: 5,
                          ),
                          PowerUseLowerView(
                              size,
                              "Wireless Spiker",
                              "living Room",
                              "2 Unit | 3 Jan",
                              "1090 kh/h",
                              "-10.2 %",
                              Icons.surround_sound,
                              Colors.green),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  //Here Implement Graph Code.......
  Widget customGraphWidget(Size size) {
    return Container(
      height: size.height * 0.29,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LineChart(
          LineChartData(
              borderData: FlBorderData(
                show: false,
              ),
              gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(color: Colors.white, strokeWidth: 1);
                  }),
              maxX: 7,
              minX: 0,
              maxY: 10,
              minY: 0,
              lineBarsData: [
                LineChartBarData(spots: [
                  FlSpot(0, 4),
                  FlSpot(1, 4.3),
                  FlSpot(2, 6.5),
                  FlSpot(3, 4.2),
                  FlSpot(4, 3.8),
                  FlSpot(5, 3.9),
                  FlSpot(6, 5.8),
                  FlSpot(7, 5.1),

                  //Point are Implement here
                ], isCurved: true, color: Colors.white)
              ],
              titlesData: FlTitlesData(
                rightTitles: AxisTitles(),
                topTitles: AxisTitles(),
                bottomTitles: AxisTitles(
                  sideTitles: _bottomTitles,
                ),
                leftTitles: AxisTitles(sideTitles: _leftTitles),
              )),
        ),
      ),
    );
  }

  //Graph Text Widget are implement here
  SideTitles get _bottomTitles => SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          String text = '';
          switch (value.toInt()) {
            case 0:
              text = 'Day';
              break;
            case 1:
              text = 'Mon';
              break;
            case 2:
              text = 'Tue';
              break;
            case 3:
              text = 'Wed';
              break;
            case 4:
              text = 'Thu';
              break;
            case 5:
              text = 'Fri';
              break;
            case 6:
              text = 'Sat';
              break;
            case 7:
              text = 'Sun';
              break;
          }

          return Text(
            text,
            style: TextStyle(color: Colors.white),
          );
        },
      );

  SideTitles get _leftTitles => SideTitles(
        showTitles: true,
        reservedSize: 35,
        getTitlesWidget: (value, meta) {
          String text = '';
          switch (value.toInt()) {
            case 2:
              text = '50';
              break;
            case 4:
              text = '100';
              break;
            case 6:
              text = '150';
              break;
            case 8:
              text = '250';
              break;
          }

          return Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 14),
          );
        },
      );
}

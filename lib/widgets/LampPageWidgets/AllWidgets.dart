import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


Widget LampMiddleView(Size size){

  return Container(
    height: size.height*0.11,
    width: size.width,
    child:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Usages",style: TextStyle(color: Colors.white,fontSize: 15),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Use Today",style: TextStyle(color: Colors.white,fontSize: 15),),
            Text("50 Watt",style: TextStyle(color: Colors.white,fontSize: 15),),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Use Week",style: TextStyle(color: Colors.white,fontSize: 15),),
            Text("500 Watt",style: TextStyle(color: Colors.white,fontSize: 15),),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Use Month",style: TextStyle(color: Colors.white,fontSize: 15),),
            Text("5000 Watt",style: TextStyle(color: Colors.white,fontSize: 15),),
          ],
        ),
      ],
    ),
  );
}

Widget LampLowerView(Size size,String heading,String subtext, String icon,String stime,String etime){
  return Container(
    width: size.width,
    height: size.height*0.16,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(heading,style: TextStyle(fontSize: 18,color: Colors.black),),
                  Text(subtext,style: TextStyle(fontSize: 18,color: Colors.black),),
                ],),
              Container(
                height: size.height*0.06,
                width: size.width*0.09,
                child: Image(
                    image: AssetImage(icon)),
              )
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: size.height*0.07,
                  width: size.width*0.09,
                  child: FittedBox(child: Icon(Icons.lightbulb))),
              Column(
                children: [
                  Text("from",style: TextStyle(color: Colors.black,fontSize: 20),),
                  Text(stime,style: TextStyle(color: Colors.black,fontSize: 20),),
                ],
              ),
              VerticalDivider(color: Colors.red),
              Column(
                children: [
                  Text("To",style: TextStyle(color: Colors.black,fontSize: 20),),
                  Text(etime,style: TextStyle(color: Colors.black,fontSize: 20),),
                ],
              ),
              VerticalDivider(color: Colors.red),
              Column(
                children: [
                  Icon(Icons.delete),
                  Icon(Icons.edit_calendar_outlined)
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
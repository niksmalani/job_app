import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_auto_slider/image_auto_slider.dart';
import 'package:job_app/const.dart';

import 'chat.dart';
import 'const.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomSheet: BottomBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 12,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Card(
                      elevation: 0,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: <Widget>[
                          ImageAutoSlider(
                            assetImages: [
                              AssetImage('assets/bs1.jpg'),
                              AssetImage('assets/bs2.png'),
                              AssetImage('assets/bs3.jpeg'),
                              AssetImage('assets/bs4.jpg'),
                            ],
                            boxFit: BoxFit.cover,
                            slideMilliseconds: 700,
                            durationSecond: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ChatScreen()));
                              },
                              child: MyCardBox(
                                height: height,
                                width: width,
                                icon: Icons.chat,
                                text: "Assistant\nChat",
                                color1: Colors.deepPurple,
                                color2: Colors.deepPurpleAccent,
                                iconColor: Colors.deepPurpleAccent,
                                textColor: Color(0xff180B56),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: MyCardBox(
                                height: height,
                                width: width,
                                icon: Icons.assignment,
                                text: "Application",
                                color1: Colors.teal,
                                color2: Colors.tealAccent,
                                iconColor: Colors.green,
                                textColor: Color(0xff083C2C),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: MyCardBox(
                                height: height,
                                width: width,
                                icon: Icons.work,
                                text: "Job",
                                color1: Colors.pink,
                                color2: Colors.pinkAccent,
                                iconColor: Colors.pink[800],
                                textColor: Color(0xff5D0338),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: MyCardBox(
                                height: height,
                                width: width,
                                icon: Icons.near_me,
                                text: "New & Blog",
                                color1: Colors.amber[600],
                                color2: Colors.amberAccent,
                                iconColor: Colors.amber[900],
                                textColor: Color(0xff705103),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

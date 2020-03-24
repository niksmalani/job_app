import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app/const.dart';
import 'package:job_app/job_news.dart';

import 'application.dart';
import 'blog.dart';
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
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
        backgroundColor: Colors.pink[500],
        title: Text(
          "App Name",
          style: GoogleFonts.notoSerif(
              color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      bottomSheet: BottomBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  height: height / 2.5,
                  child: Carousel(
                    dotColor: Colors.pink[100],
                    boxFit: BoxFit.cover,
                    autoplay: true,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    dotSize: 6.0,
                    dotIncreasedColor: Colors.pink[500],
                    dotBgColor: Colors.transparent,
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 10,
                    images: [
                      AssetImage('assets/bs1.jpg'),
                      AssetImage('assets/bs2.png'),
                      AssetImage('assets/bs3.jpeg'),
                      AssetImage('assets/bs4.jpg'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
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
                                  image: "assets/icons/chat_icon.png",
                                  text: "Assistant\nChat",
                                  color1: Colors.white,
                                  color2: Colors.white,
                                  iconColor: Colors.deepOrangeAccent,
                                  textColor: Colors.black.withOpacity(0.7),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          ApplicationScreen()));
                                },
                                child: MyCardBox(
                                  height: height,
                                  width: width,
                                  image: "assets/icons/application_icon.png",
                                  text: "Application",
                                  color1: Colors.white,
                                  color2: Colors.white,
                                  iconColor: Colors.green,
                                  textColor: Colors.black.withOpacity(0.7),
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
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => JobNew()));
                                },
                                child: MyCardBox(
                                  height: height,
                                  width: width,
                                  image: "assets/icons/job_icon.png",
                                  text: "Job",
                                  color1: Colors.white,
                                  color2: Colors.white,
                                  iconColor: Colors.pinkAccent,
                                  textColor: Colors.black.withOpacity(0.7),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Blogview()));
                                },
                                child: MyCardBox(
                                  height: height,
                                  width: width,
                                  image: "assets/icons/news_icon.png",
                                  text: "New & Blog",
                                  color1: Colors.white,
                                  color2: Colors.white,
                                  iconColor: Colors.amber,
                                  textColor: Colors.black.withOpacity(0.7),
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
            ),
            Container(
              height: 65,
            )
          ],
        ),
      ),
    );
  }
}

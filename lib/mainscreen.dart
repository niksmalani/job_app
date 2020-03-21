import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_auto_slider/image_auto_slider.dart';
import 'package:job_app/application.dart';
import 'package:job_app/job_news.dart';
import 'package:job_app/widgets.dart';

import 'blog.dart';
import 'chat.dart';

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
      bottomSheet: bottomBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            decoration: BoxDecoration(
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 15,
                )
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: <Widget>[
                ImageAutoSlider(
                  assetImages: [
                    AssetImage('assets/bs.jpg'),
                    AssetImage('assets/bs1.jpg'),
                    AssetImage('assets/bs2.jpg'),
                  ],
                  boxFit: BoxFit.cover,
                  slideMilliseconds: 700,
                  durationSecond: 3,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ChatScreen()));
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          height: height / 5,
                          width: width / 2.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: height / 10,
                                width: height / 10,
                                child: Image.asset(
                                  'assets/hand.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                "Assistant\nChat",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ApplicationScreen()));
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          height: height / 5,
                          width: width / 2.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: height / 10,
                                width: height / 10,
                                child: Image.asset(
                                  'assets/checklist.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                "Applications",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => JobNew()));
                        },
                        child: Card(
                          elevation: 10,
                          child: Container(
                            height: height / 5,
                            width: width / 2.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  height: height / 10,
                                  width: height / 10,
                                  child: Image.asset(
                                    'assets/support.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  "Jobs",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Blogview()));
                        },
                        child: Card(
                          elevation: 10,
                          child: Container(
                            height: height / 5,
                            width: width / 2.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  height: height / 10,
                                  width: height / 10,
                                  child: Image.asset(
                                    'assets/tv.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  "News\nBlogs",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 22,
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
              ],
            ),
          )
        ],
      ),
    );
  }
}

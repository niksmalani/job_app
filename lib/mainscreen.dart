import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_app/chat.dart';
import 'package:job_app/const.dart';
import 'package:job_app/job.dart';

import 'application.dart';
import 'blog.dart';
import 'const.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectd = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/user.jpg"),
                ),
                accountName: Text("User Name"),
                accountEmail: Text("user@gmail.com")),
            ListTile(
              leading: Image.asset(
                'assets/icons/chat_icon.png',
                color: Colors.pink,
                scale: 40,
              ),
              title: Text("Assistant Chat"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatScreen()));
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/icons/application_icon.png',
                color: Colors.green,
                scale: 40,
              ),
              title: Text("Application"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Application()));
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/icons/job_icon.png',
                color: Colors.deepPurple,
                scale: 40,
              ),
              title: Text("Job"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => JobNew()));
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/icons/news_icon.png',
                color: Colors.pink,
                scale: 40,
              ),
              title: Text("New & Blog"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Blogview()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: myBlue,
        title: Text(
          "App Name",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
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
                    dotColor: Colors.deepPurple[100],
                    boxFit: BoxFit.cover,
                    autoplay: true,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    dotSize: 6.0,
                    dotIncreasedColor: myBlue,
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
                              child: MyCardBox(
                                navigate: ChatScreen(),
                                height: height,
                                width: width,
                                image: "assets/icons/chat_icon.png",
                                text: "Assistant\nChat",
                                color1: Colors.white,
                                color2: Colors.white,
                                iconColor: Colors.pink,
                                textColor: Colors.black.withOpacity(0.7),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: MyCardBox(
                                height: height,
                                width: width,
                                navigate: Application(),
                                image: "assets/icons/application_icon.png",
                                text: "Application",
                                color1: Colors.white,
                                color2: Colors.white,
                                iconColor: Colors.green,
                                textColor: Colors.black.withOpacity(0.7),
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
                              child: MyCardBox(
                                height: height,
                                width: width,
                                navigate: JobNew(),
                                image: "assets/icons/job_icon.png",
                                text: "Job",
                                color1: Colors.white,
                                color2: Colors.white,
                                iconColor: myBlue,
                                textColor: Colors.black.withOpacity(0.7),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: MyCardBox(
                                height: height,
                                width: width,
                                navigate: Blogview(),
                                image: "assets/icons/news_icon.png",
                                text: "New & Blog",
                                color1: Colors.white,
                                color2: Colors.white,
                                iconColor: Colors.amber,
                                textColor: Colors.black.withOpacity(0.7),
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
            BottomSpaceBox(),
          ],
        ),
      ),
    );
  }
}

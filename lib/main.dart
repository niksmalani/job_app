import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:job_app/mainscreen.dart';

import 'const.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      theme: ThemeData(primaryColor: myBlue, fontFamily: 'sfpro'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/bs2.jpg"),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  myBlue.withOpacity(0.4),
                  myBlue.withOpacity(0.5),
                  myBlue.withOpacity(0.7),
                  myBlue,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: height / 10,
                ),
                AutoSizeText(
                    "Zutzu-Personal Recruiment Assistant For Local And Internationl Job."),
                SizedBox(
                  height: height / 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    height: height / 12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    child: Center(
                        child: Text(
                      "Create an account",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  height: height / 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    height: height / 12,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                        child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 20,
                        color: myBlue,
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  height: height / 15,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(60),
            height: height / 2,
            width: width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(width * 2, 300))),
            child: Center(
              child: Container(
                width: width / 1.5,
                child: Image.asset(
                  'assets/logo.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//tooltip: 'Increment',
//child: Icon(Icons.add),
//), // This trailing comma makes auto-formatting nicer for build methods.
//);
//}
//}

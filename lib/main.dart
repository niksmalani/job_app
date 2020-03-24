import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app/mainscreen.dart';

import 'const.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      theme: ThemeData(primaryColor: Colors.pink),
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
                  Colors.pink[400].withOpacity(0.4),
                  Colors.pink[500].withOpacity(0.5),
                  Colors.pink[800].withOpacity(0.7),
                  Colors.pink[800].withOpacity(0.9),
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
                      style: GoogleFonts.notoSerif(
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
                      style: GoogleFonts.notoSerif(
                        fontSize: 20,
                        color: myPink,
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
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/icons/job_icon.png',
                    scale: 13,
                    color: Colors.pink[500],
                  ),
                  Text(
                    "App Logo",
                    style: GoogleFonts.lobster(
                        color: Colors.pink[500],
                        fontWeight: FontWeight.w600,
                        fontSize: 45),
                  ),
                ],
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

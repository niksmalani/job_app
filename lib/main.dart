import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app/mainscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
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
                  Colors.blue[900].withOpacity(0.9),
                  Colors.blue[900].withOpacity(0.9),
                  Color.fromRGBO(10, 91, 253, 0.8),
                  Color.fromRGBO(17, 18, 165, 0.8),
                  Color.fromRGBO(15, 0, 55, 0.9),
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
                  height: height / 20,
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
                        color: Colors.deepPurpleAccent,
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
            child: Image.asset('assets/logo-1.png'),
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

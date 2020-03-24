import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'const.dart';

class Blogview extends StatefulWidget {
  @override
  _BlogviewState createState() => _BlogviewState();
}

class _BlogviewState extends State<Blogview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomBar(),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
        title: Text(
          "Back",
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: false,
        backgroundColor: myPink,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 145,
        child: Column(
          children: <Widget>[
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 10)
                              ]),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 75,
                            child: CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 70,
                              child: Image.asset(
                                "assets/icons/news_icon.png",
                                color: Colors.white,
                                scale: 15,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Title',
                              style: GoogleFonts.notoSerif(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 2,
                                  color: Colors.black.withOpacity(0.7)),
                            ),
                            Text(
                              'Sub Title',
                              style: GoogleFonts.notoSerif(
                                  fontSize: 25,
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: 2,
                                  color: Colors.black.withOpacity(0.7)),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Discription',
                      style: GoogleFonts.notoSerif(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Suppose there is no error then we will call the method void save() and it will call all the onSave[3]. So, that all the form input could be stored in variable corresponding to each input Field.',
                      style: GoogleFonts.notoSerif(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: OutlineButton(
                textColor: Colors.pink,
                onPressed: () {},
                child: Container(
                  width: 80,
                  height: 40,
                  child: Center(
                    child: Text(
                      'Apply',
                      style: TextStyle(color: Colors.pink, fontSize: 18),
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: myPink,
                borderSide:
                    BorderSide(color: Colors.pink, style: BorderStyle.solid),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

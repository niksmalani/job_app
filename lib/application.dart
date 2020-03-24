import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app/const.dart';

class ApplicationScreen extends StatefulWidget {
  @override
  _ApplicationScreenState createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[500],
        title: Text(
          "Back",
          style: TextStyle(fontSize: 22),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
        centerTitle: false,
      ),
      bottomSheet: BottomBar(),
      body: Column(
        children: <Widget>[
          Container(
            height: 60,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 100,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border(
                      left: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                      right: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                      bottom: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                      top: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                    ),
                  ),
                  child: Text(
                    'All',
                    style: GoogleFonts.notoSerif(color: Colors.pink),
                  ),
                ),
                Container(
                  width: 100,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                    border: Border(
                      left: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                      right: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                      bottom: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                      top: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                    ),
                  ),
                  child: Text(
                    'Application',
                    style: GoogleFonts.notoSerif(color: Colors.white),
                  ),
                ),
                Container(
                  width: 100,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border(
                      left: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                      right: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                      bottom: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                      top: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                    ),
                  ),
                  child: Text(
                    'Offer',
                    style: GoogleFonts.notoSerif(color: Colors.pink),
                  ),
                ),
                Container(
                  width: 100,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border(
                      left: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                      right: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                      bottom: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                      top: BorderSide(
                          color: Colors.pink,
                          style: BorderStyle.solid,
                          width: 2),
                    ),
                  ),
                  child: Text(
                    'More',
                    style: GoogleFonts.notoSerif(color: Colors.pink),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Expanded(
            flex: 8,
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: index.isEven
                              ? Colors.green.withOpacity(0.8)
                              : Colors.orange.withOpacity(0.8),
                          child: Image.asset(
                            'assets/icons/application_icon.png',
                            scale: 25,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Application Title',
                              style: GoogleFonts.notoSerif(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Pay rate',
                              style: GoogleFonts.notoSerif(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: 20,
            ),
          ),
          Container(
            height: 65,
          )
        ],
      ),
    );
  }
}

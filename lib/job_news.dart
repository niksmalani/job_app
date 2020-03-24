import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'const.dart';

class JobNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomBar(),
      appBar: AppBar(
        title: Text(
          "Back",
          style: TextStyle(fontSize: 22),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
        centerTitle: false,
        elevation: 0,
        backgroundColor: myPink,
      ),
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
                    'Local',
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
                    'Zonal',
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
                    'National',
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
                    'Global',
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
            child: ListView.builder(
              padding: EdgeInsets.only(top: 20),
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
                            'assets/icons/job_icon.png',
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
                              'Job Title',
                              style: GoogleFonts.notoSerif(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'job description',
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

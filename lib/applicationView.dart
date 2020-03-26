import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:job_app/const.dart';

class ApplicationScreen extends StatefulWidget {
  @override
  _ApplicationScreenState createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomBar(),
      appBar: AppBar(
        title: Text(
          "Back",
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: false,
        backgroundColor: myBlue,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 145,
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 10)],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
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
                            radius: 60,
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 56,
                              child: Image.asset(
                                "assets/icons/application_icon.png",
                                color: Colors.white,
                                scale: 20,
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
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 2,
                                  color: Colors.black.withOpacity(0.7)),
                            ),
                            Text(
                              'Sub Title',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.normal,
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
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Suppose there is no error then we will call the method void save() and it will call all the onSave[3]. So, that all the form input could be stored in variable corresponding to each input Field.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: OutlineButton(
                      highlightColor: Colors.white,
                      highlightedBorderColor:  Colors.green.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      borderSide: BorderSide(
                          width: 2, color:  Colors.green, style: BorderStyle.solid),
                      color:  Colors.green,
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "Approve",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Expanded(
                    flex: 1,
                    child: OutlineButton(
                      highlightColor: Colors.white,
                      highlightedBorderColor: Colors.redAccent.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      borderSide: BorderSide(
                          width: 2, color: Colors.redAccent, style: BorderStyle.solid),
                      color: Colors.redAccent,
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "Reject",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: OutlineButton(
                      highlightColor: Colors.white,
                      highlightedBorderColor: myBlue.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      borderSide: BorderSide(
                          width: 2, color: myBlue, style: BorderStyle.solid),
                      color: myBlue,
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "Manage",
                          style: TextStyle(
                            fontSize: 18,
                            color: myBlue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Expanded(
                    flex: 1,
                    child: OutlineButton(
                      highlightColor: Colors.white,
                      highlightedBorderColor: myBlue.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      borderSide: BorderSide(
                          width: 2, color: myBlue, style: BorderStyle.solid),
                      color: myBlue,
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "Chat",
                          style: TextStyle(
                            fontSize: 18,
                            color: myBlue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
            BottomSpaceBox(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:job_app/const.dart';

class JobView extends StatefulWidget {
  @override
  _JobViewState createState() => _JobViewState();
}

class _JobViewState extends State<JobView> {
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
                            radius: 70,
                            child: CircleAvatar(
                              backgroundColor: myBlue,
                              radius: 65,
                              child: Image.asset(
                                "assets/icons/job_icon.png",
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
            Align(
              alignment: Alignment.center,
              child: OutlineButton(
                highlightColor: Colors.white,
                highlightedBorderColor: myBlue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                borderSide: BorderSide(
                    width: 2, color: myBlue, style: BorderStyle.solid),
                color: myBlue,
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Text(
                    "Apply",
                    style: TextStyle(
                      fontSize: 18,
                      color: myBlue,
                    ),
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

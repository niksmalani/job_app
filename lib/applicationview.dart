import 'package:flutter/material.dart';
import 'package:job_app/widgets.dart';

class ApplicationView extends StatefulWidget {
  @override
  _ApplicationViewState createState() => _ApplicationViewState();
}

class _ApplicationViewState extends State<ApplicationView> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Back",
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: false,
      ),
      bottomSheet: bottomBar(),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            height: height / 1.8,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: Colors.black26,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: height / 7,
                        width: width / 2.8,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.blue[800], width: 2),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/bs2.jpg'))),
                      ),
                      Container(
                        height: height / 7,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "Title",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                            Text(
                              "Pay Rate",
                              style: TextStyle(
                                  color: Colors.blue[800], fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "This account manager job description sample can assist in the creation of a job application that will attract the candidates who are the most qualified for the position. Feel free to revise this job description to meet your specific duties and requirements. You can also take a look at our account manager job listings for more ideas on how to personalize your ad",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: height / 15,
                  width: width / 2.4,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                  child: Text(
                    "Approve",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: height / 15,
                  width: width / 2.4,
                  decoration: BoxDecoration(
                    color: Colors.red[700],
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                  child: Text(
                    "Reject",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: height / 15,
                  width: width / 2.4,
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                  child: Text(
                    "Manage",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: height / 15,
                  width: width / 2.4,
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                  child: Text(
                    "Chat",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

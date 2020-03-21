import 'package:flutter/material.dart';
import 'package:job_app/widgets.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Back",
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: false,
      ),
      bottomSheet: bottomBar(),
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    margin: EdgeInsets.only(right: 80, left: 10),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50)),
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Center(
                              child: Text(
                            "How May I Help You ?",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue[900],
                          radius: 30,
                        ),
                      ],
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    margin: EdgeInsets.only(right: 10, left: 80),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50)),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                              child: Text(
                            "Problem",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue[900],
                          radius: 30,
                        ),
                      ],
                      alignment: Alignment.centerRight,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 85,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 15,
                  )
                ],
                border: Border.all(color: Colors.blue[800], width: 3),
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.send,
                      color: Colors.blue[900],
                      size: 30,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

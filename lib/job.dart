import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_app/jobView.dart';

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
        centerTitle: false,
        elevation: 0,
        backgroundColor: myBlue,
      ),
      body: Column(
        children: <Widget>[
          JobTopManu(),
          Divider(
            thickness: 1,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 20),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.grey[300], blurRadius: 10)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 20),
                  child: MaterialButton(
                    splashColor:
                        index.isEven ? Colors.green[100] : Colors.orange[100],
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => JobView()));
                    },
                    padding: EdgeInsets.all(0),
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
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'job description',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 20,
            ),
          ),
          BottomSpaceBox(),
        ],
      ),
    );
  }
}

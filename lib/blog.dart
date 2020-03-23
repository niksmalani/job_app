import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        title: Text('BlogView'),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 145,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/789786/pexels-photo-789786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Title',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 2),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Discription',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
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
            ),
            MaterialButton(
              height: 50,
              minWidth: 120,
              elevation: 10,
              onPressed: () {},
              child: Text(
                'Apply',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.blue[700],
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

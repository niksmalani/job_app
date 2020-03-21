import 'package:flutter/material.dart';

Widget bottomBar() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    color: Colors.blue,
    height: 65,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: FlatButton(
            onPressed: () {},
            color: Colors.blue,
            child: Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        VerticalDivider(
          thickness: 2,
          color: Colors.white,
        ),
        Container(
          color: Colors.blue,
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "Setting",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

import 'package:flutter/material.dart';

Widget bottomBar() {
  return Container(
    color: Colors.blue,
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: MaterialButton(
            height: 65,
            onPressed: () {},
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
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: VerticalDivider(
            thickness: 2,
            color: Colors.white,
          ),
        ),
        Expanded(
          flex: 1,
          child: MaterialButton(
            height: 65,
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
        ),
      ],
    ),
  );
}

class ButtonShape extends StatelessWidget {
  ButtonShape({this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: 120,
      elevation: 10,
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.blue[700],
    );
  }
}

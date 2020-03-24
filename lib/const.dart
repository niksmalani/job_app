import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCircleAvatar extends StatelessWidget {
  final String imgUrl;
  const MyCircleAvatar({
    Key key,
    @required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.3),
              offset: Offset(0, 2),
              blurRadius: 5)
        ],
      ),
      child: CircleAvatar(
        backgroundColor: Colors.pinkAccent[100],
        backgroundImage: NetworkImage("$imgUrl"),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: myPink,
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)]),
      height: 65,
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
                style: GoogleFonts.notoSerif(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: VerticalDivider(
              thickness: 1,
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
                style: GoogleFonts.notoSerif(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
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
      color: Colors.pink[500],
    );
  }
}

Color myPink = Colors.pink[500];
enum MessageType { sent, received }
List<Map<String, dynamic>> friendsList = [
  {
    'imgUrl':
        'https://cdn.pixabay.com/photo/2019/11/06/17/26/gear-4606749_960_720.jpg',
    'username': 'Cybdom Tech',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': true,
    'hasUnSeenMsgs': false,
    'unseenCount': 0,
    'lastMsgTime': '18:44',
    'isOnline': true
  },
  {
    'imgUrl':
        'https://cdn.pixabay.com/photo/2019/11/11/04/33/africa-4617142_960_720.jpg',
    'username': 'Flutter Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': false,
    'unseenCount': 0,
    'lastMsgTime': '18:44',
    'isOnline': false
  },
  {
    'imgUrl':
        'https://cdn.pixabay.com/photo/2019/11/05/08/52/adler-4603104_960_720.jpg',
    'username': 'Dart Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': true,
    'unseenCount': 3,
    'lastMsgTime': '18:44',
    'isOnline': true
  },
  {
    'imgUrl':
        'https://cdn.pixabay.com/photo/2015/02/04/08/03/baby-623417_960_720.jpg',
    'username': 'Designer',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': true,
    'hasUnSeenMsgs': true,
    'unseenCount': 2,
    'lastMsgTime': '18:44',
    'isOnline': true
  },
  {
    'imgUrl':
        'https://cdn.pixabay.com/photo/2012/03/04/01/01/baby-22194_960_720.jpg',
    'username': 'FrontEnd Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': true,
    'unseenCount': 4,
    'lastMsgTime': '18:44',
    'isOnline': true
  },
  {
    'imgUrl':
        'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    'username': 'Full Stack Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': false,
    'unseenCount': 0,
    'lastMsgTime': '18:44',
    'isOnline': true
  },
  {
    'imgUrl':
        'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    'username': 'Backend Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': true,
    'unseenCount': 3,
    'lastMsgTime': '18:44',
    'isOnline': true
  }
];

List<Map<String, dynamic>> messages = [
  {
    'status': MessageType.received,
    'contactImgUrl':
        'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    'contactName': 'User Name',
    'message':
        'Hi mate, I\d like to hire you to create a mobile app for my business',
    'time': '08:43 AM'
  },
  {
    'status': MessageType.sent,
    'message': 'Hi, I hope you are doing great!',
    'time': '08:45 AM'
  },
  {
    'status': MessageType.sent,
    'message':
        'Please share with me the details of your project, as well as your time and budgets constraints.',
    'time': '08:45 AM'
  },
  {
    'status': MessageType.received,
    'contactImgUrl':
        'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    'contactName': 'User Name',
    'message': 'Sure, let me send you a document that explains everything.',
    'time': '08:47 AM'
  },
  {'status': MessageType.sent, 'message': 'Ok.', 'time': '08:45 AM'},
];

class MyCardBox extends StatelessWidget {
  final height;
  final width;
  final Color color1;
  final Color color2;
  final String image;
  final String text;
  final Color textColor;
  final Color iconColor;

  const MyCardBox(
      {Key key,
      this.height,
      this.width,
      this.color1,
      this.color2,
      this.image,
      this.text,
      this.textColor,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color1.withOpacity(0.9),
              color2.withOpacity(0.9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    image,
                    scale: 20,
                    color: iconColor,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "$text",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSerif(
                        fontSize: 20,
                        color: textColor,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

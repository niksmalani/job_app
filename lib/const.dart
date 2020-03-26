import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  final String image;
  const MyCircleAvatar({
    Key key,
    @required this.image,
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
              color: Colors.grey.withOpacity(.8),
              offset: Offset(0, 2),
              blurRadius: 5)
        ],
      ),
      child: CircleAvatar(
        backgroundColor: Colors.pinkAccent[100],
        backgroundImage: AssetImage("$image"),
      ),
    );
  }
}

void choiceAction(String choice) {
  if (choice == Constants.Settings) {
    print('Settings');
  } else if (choice == Constants.Subscribe) {
    print('Subscribe');
  } else if (choice == Constants.SignOut) {
    print('SignOut');
  }
}

class Constants {
  static const String Subscribe = 'Subscribe';
  static const String Settings = 'Settings';
  static const String SignOut = 'Sign out';

  static const List<String> choices = <String>[Subscribe, Settings, SignOut];
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Scaffold.of(context).appBarMaxHeight / 1.4,
      decoration: BoxDecoration(
          color: myBlue,
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: MaterialButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
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
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
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
      color: myBlue,
    );
  }
}

Color myBlue = Color(0xff0080ff);
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
  final navigate;
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
      @required this.navigate,
      this.color1,
      this.color2,
      this.image,
      this.text,
      this.textColor,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 10)],
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navigate));
        },
        padding: EdgeInsets.all(0),
        splashColor: color1,
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
                    scale: MediaQuery.of(context).size.height / 30,
                    color: iconColor,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: iconColor.withOpacity(0.2),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "$text",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 45,
                          color: textColor,
                          fontWeight: FontWeight.normal),
                    ),
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

class TopManu extends StatefulWidget {
  const TopManu({
    Key key,
  }) : super(key: key);

  @override
  _TopManuState createState() => _TopManuState();
}

class _TopManuState extends State<TopManu> {
  Decoration selected = BoxDecoration(
    color: myBlue,
    borderRadius: BorderRadius.circular(20),
    border: Border(
      left: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
      right: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
      bottom: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
      top: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
    ),
  );

  Decoration unselected = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    border: Border(
      left: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
      right: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
      bottom: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
      top: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
    ),
  );

  Decoration allState;
  Decoration applicationState;
  Decoration offerSate;
  Decoration moreSate;
  Color allFontColor = myBlue;
  Color appFontColor = myBlue;
  Color offFontColor = myBlue;
  Color moreFontColor = myBlue;

  @override
  void initState() {
    allState = unselected;
    applicationState = unselected;
    offerSate = unselected;
    moreSate = unselected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 100,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: allState,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  if (allState == unselected) {
                    allFontColor = Colors.white;
                    allState = selected;
                  } else {
                    allFontColor = myBlue;
                    allState = unselected;
                  }
                });
              },
              child: Text(
                'All',
                style: TextStyle(color: allFontColor),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: applicationState,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  if (applicationState == unselected) {
                    appFontColor = Colors.white;
                    applicationState = selected;
                  } else {
                    appFontColor = myBlue;
                    applicationState = unselected;
                  }
                });
              },
              child: Center(
                child: Text(
                  'Application',
                  style: TextStyle(color: appFontColor),
                ),
              ),
            ),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: offerSate,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  if (offerSate == unselected) {
                    offFontColor = Colors.white;
                    offerSate = selected;
                  } else {
                    offFontColor = myBlue;
                    offerSate = unselected;
                  }
                });
              },
              child: Text(
                'Offer',
                style: TextStyle(color: offFontColor),
              ),
            ),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: moreSate,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  if (moreSate == unselected) {
                    moreFontColor = Colors.white;
                    moreSate = selected;
                  } else {
                    moreFontColor = myBlue;
                    moreSate = unselected;
                  }
                });
              },
              child: Text(
                'More',
                style: TextStyle(color: moreFontColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class JobTopManu extends StatefulWidget {
  const JobTopManu({
    Key key,
  }) : super(key: key);

  @override
  _JobTopManuState createState() => _JobTopManuState();
}

class _JobTopManuState extends State<JobTopManu> {
  Decoration selected = BoxDecoration(
    color: myBlue,
    borderRadius: BorderRadius.circular(20),
    border: Border(
      left: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
      right: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
      bottom: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
      top: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
    ),
  );

  Decoration unselected = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    border: Border(
      left: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
      right: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
      bottom: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
      top: BorderSide(color: myBlue, style: BorderStyle.solid, width: 2),
    ),
  );

  Decoration allState;
  Decoration applicationState;
  Decoration offerSate;
  Decoration moreSate;
  Color allFontColor = myBlue;
  Color appFontColor = myBlue;
  Color offFontColor = myBlue;
  Color moreFontColor = myBlue;

  @override
  void initState() {
    allState = unselected;
    applicationState = unselected;
    offerSate = unselected;
    moreSate = unselected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 100,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: allState,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  if (allState == unselected) {
                    allFontColor = Colors.white;
                    allState = selected;
                  } else {
                    allFontColor = myBlue;
                    allState = unselected;
                  }
                });
              },
              child: Text(
                'Local',
                style: TextStyle(color: allFontColor),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: applicationState,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  if (applicationState == unselected) {
                    appFontColor = Colors.white;
                    applicationState = selected;
                  } else {
                    appFontColor = myBlue;
                    applicationState = unselected;
                  }
                });
              },
              child: Center(
                child: Text(
                  'Zonal',
                  style: TextStyle(color: appFontColor),
                ),
              ),
            ),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: offerSate,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  if (offerSate == unselected) {
                    offFontColor = Colors.white;
                    offerSate = selected;
                  } else {
                    offFontColor = myBlue;
                    offerSate = unselected;
                  }
                });
              },
              child: Text(
                'National',
                style: TextStyle(color: offFontColor),
              ),
            ),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: moreSate,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  if (moreSate == unselected) {
                    moreFontColor = Colors.white;
                    moreSate = selected;
                  } else {
                    moreFontColor = myBlue;
                    moreSate = unselected;
                  }
                });
              },
              child: Text(
                'Globle',
                style: TextStyle(color: moreFontColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomSpaceBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Scaffold.of(context).appBarMaxHeight / 1.2,
    );
  }
}

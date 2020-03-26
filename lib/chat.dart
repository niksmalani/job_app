import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'const.dart';
import 'widgets/receivedmessagewidget.dart';
import 'widgets/sentmessagewidget.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _showBottom = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: myBlue,
        iconTheme: IconThemeData(color: Colors.white),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            MyCircleAvatar(
              image: "assets/user.jpg",
            ),
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "User Name",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.white),
                  overflow: TextOverflow.clip,
                ),
                Text(
                  "Online",
                  style: Theme.of(context).textTheme.subtitle1.apply(
                        color: Colors.white,
                      ),
                )
              ],
            )
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(15),
                    itemCount: messages.length,
                    itemBuilder: (ctx, i) {
                      if (messages[i]['status'] == MessageType.received) {
                        return ReceivedMessagesWidget(i: i);
                      } else {
                        return SentMessageWidget(i: i);
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  height: 61,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35.0),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 3),
                                  blurRadius: 5,
                                  color: Colors.grey)
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.face),
                                onPressed: () {},
                                color: myBlue,
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Type Something...",
                                      border: InputBorder.none),
                                ),
                              ),
                              IconButton(
                                padding: EdgeInsets.only(left: 15),
                                icon: Icon(
                                  Icons.send,
                                  color: myBlue,
                                ),
                                splashColor: Colors.deepPurpleAccent,
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.attach_file,
                                  color: myBlue,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned.fill(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _showBottom = false;
                });
              },
            ),
          ),
          _showBottom
              ? Positioned(
                  bottom: 90,
                  left: 25,
                  right: 25,
                  child: Container(
                    padding: EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 15.0,
                            color: Colors.grey)
                      ],
                    ),
                    child: GridView.count(
                      mainAxisSpacing: 21.0,
                      crossAxisSpacing: 21.0,
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      children: List.generate(
                        icons.length,
                        (i) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey[200],
                              border: Border.all(color: myBlue, width: 2),
                            ),
                            child: IconButton(
                              icon: Icon(
                                icons[i],
                                color: myBlue,
                              ),
                              onPressed: () {},
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

List<IconData> icons = [
  Icons.image,
  Icons.camera,
  Icons.file_upload,
  Icons.folder,
  Icons.gif
];

import 'package:chatapp/models/messege_models.dart';
import 'package:chatapp/models/user_model.dart';
import 'package:chatapp/screens/homeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatScreen extends StatefulWidget {
  final user User;

  chatScreen({required this.User});

  @override
  State<chatScreen> createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  @override
  Widget build(BuildContext context) {

    _buildMessage(message messages, bool isMe, bool isliked){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 300,
              decoration: BoxDecoration(
                color: isMe ? CupertinoColors.activeGreen : Colors.black45,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              margin: isMe ?  EdgeInsets.only(top: 8, bottom: 8,left: 76) : EdgeInsets.only(top: 8, bottom: 8,),
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(messages.time, style: TextStyle(color: Colors.white70),),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right:60, bottom: 8),
                    child: Container(height: 1, color: Colors.black12,),
                  ),
                  Text(messages.text, style: TextStyle(color: Colors.white, fontSize: 15),),
                ],
              ),
            ),
            isMe ? Container(width: 0,): IconButton(
                onPressed: () {},
                icon: isliked ? Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.red,
                ): Icon(CupertinoIcons.heart, color: Colors.black38)),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => homescreen(),
                                  ));
                            },
                            icon: Icon(
                              CupertinoIcons.back,
                              color: CupertinoColors.lightBackgroundGray,
                            )),
                        CircleAvatar(backgroundImage: AssetImage(widget.User.imageUrl),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            widget.User.name,
                            style: TextStyle(
                                color: CupertinoColors.lightBackgroundGray,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          color: CupertinoColors.lightBackgroundGray,
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8,),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)
                    )
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        return FocusScope.of(context).unfocus();
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                child: ListView.builder(
                                  reverse: true,
                                  padding: EdgeInsets.only(top: 25),
                                  itemCount: messages.length,
                                  itemBuilder: (context, index) {
                                    final message Message = messages[index];
                                    final bool isMe = Message.sender.id == currentuser.id;
                                    final bool isliked = Message.isliked;
                                    return _buildMessage(Message, isMe, isliked);
                                  },
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        CupertinoIcons.photo,
                                        color: Colors.green,
                                      )),
                                  Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: CupertinoColors.lightBackgroundGray,
                                          borderRadius: BorderRadius.all(Radius.circular(20))
                                        ),
                                        child: TextField(
                                          textCapitalization: TextCapitalization.sentences,
                                          decoration: InputDecoration.collapsed(
                                              hintText: "Enter a message",
                                            fillColor: Colors.blue,
                                          ),
                                          onChanged: (value){},
                                        ),
                                      )
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.send,
                                        color: CupertinoColors.activeGreen,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

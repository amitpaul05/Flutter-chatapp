import 'package:chatapp/screens/chatScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/messege_models.dart';

class chatWidget extends StatelessWidget {
  const chatWidget({Key? key}) : super(key: key);



    @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final message chat = chats[index];
          Route _createRoute() {
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  chatScreen(User: chat.sender),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                const begin = Offset(0.0, 1.0);
                const end = Offset.zero;
                final tween = Tween(begin: begin, end: end);
                final offsetAnimation = animation.drive(tween);

                return SlideTransition(
                  position: offsetAnimation,
                  child: child,
                );
              },
            );
          }

          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(_createRoute());
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                    color: chat.unread
                        ? CupertinoColors.lightBackgroundGray
                        : Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(chat.sender.imageUrl),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chat.sender.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    letterSpacing: 3),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Text(
                                  chat.text,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            chat.time,
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          chat.unread
                              ? SizedBox(
                                  height: 7,
                                )
                              : SizedBox(
                                  height: 0,
                                ),
                          chat.unread
                              ? Container(
                                  height: 20,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "NEW",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12),
                                  )))
                              : Text(""),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: chats.length,
      ),
    );
  }
}

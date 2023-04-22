import 'dart:async';
import 'package:chatapp/screens/homeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class initpage extends StatefulWidget {
  const initpage({Key? key}) : super(key: key);

  @override
  State<initpage> createState() => _initpageState();
}

class _initpageState extends State<initpage> {

  @override
  void initState() {

    super.initState();
    Route _createRoute() {
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            homescreen(),
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

    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(_createRoute());
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(CupertinoIcons.chat_bubble, size: 50,color: CupertinoColors.lightBackgroundGray,),
          Center(child: Text(
            "ChatApp", style: TextStyle(color: CupertinoColors.lightBackgroundGray, fontSize: 50),)
          ),
        ],
      ),
    );
  }
}

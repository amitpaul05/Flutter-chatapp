import 'dart:async';

import 'package:animate_navigator_transition_do/animate_navigator_transition_do.dart';
import 'package:chatapp/screens/homeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_navigator_transition_do/animate_navigator_transition_do.dart';

class initpage extends StatefulWidget {
  const initpage({Key? key}) : super(key: key);

  @override
  State<initpage> createState() => _initpageState();
}

class _initpageState extends State<initpage> {

  @override
  void initState() {

    super.initState();

    Timer(Duration(seconds: 4), () {
      AnimateNavigationTrasitionDo(
          context: context, //BuildContext
          childPage: homescreen(), // Page to go
          animation: AnimationType.slideBottom);
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

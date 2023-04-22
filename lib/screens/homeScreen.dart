
import 'package:chatapp/widgets/category_selector.dart';
import 'package:chatapp/widgets/chatwidget.dart';
import 'package:chatapp/widgets/favorite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                          child: Text("ChatApp" ,style: TextStyle(fontSize: 30, color: CupertinoColors.extraLightBackgroundGray, fontWeight: FontWeight.bold),)
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: IconButton(
                          icon: Icon(
                            CupertinoIcons.photo_camera,
                            color: CupertinoColors.extraLightBackgroundGray,
                            size: 30,
                          ), onPressed: () {
                            // onpressed
                        },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: IconButton(
                          icon: Icon(
                            CupertinoIcons.search,
                            color: CupertinoColors.extraLightBackgroundGray,
                            size: 30,
                          ), onPressed: () {
                            // onpressed
                        },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: CupertinoColors.extraLightBackgroundGray,
                            size: 30,
                          ), onPressed: () {
                            // onpressed
                        },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: categorySelector(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

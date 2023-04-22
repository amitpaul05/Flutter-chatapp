import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chatwidget.dart';
import 'favorite.dart';

/*class categorySelector extends StatefulWidget {
  const categorySelector({Key? key}) : super(key: key);

  @override
  State<categorySelector> createState() => _categorySelectorState();
}

class _categorySelectorState extends State<categorySelector> {
  int selectedIndex = 0;
  final List categories = [
    CupertinoIcons.chat_bubble,
    CupertinoIcons.group,
    CupertinoIcons.person,
    CupertinoIcons.phone,
  ];

  final List<String> lebelz = ["Chats", "Groups", "Contacts", "Calls"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.maxFinite,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  Icon(categories[index],
                      color: index == selectedIndex
                          ? CupertinoColors.lightBackgroundGray
                          : Colors.white30,
                      size: 40,
                      shadows: index == selectedIndex
                          ? ([
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(3.0, 3.0)),
                            ])
                          : ([
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(0.0, 0.0)),
                            ])),
                  Text(lebelz[index],
                      style: TextStyle(
                          color: index == selectedIndex
                              ? CupertinoColors.lightBackgroundGray
                              : Colors.white30,
                          shadows: index == selectedIndex
                              ? ([
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(3.0, 3.0)),
                                ])
                              : ([
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0.0, 0.0)),
                                ])))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}*/

class categorySelector extends StatefulWidget {
  const categorySelector({Key? key}) : super(key: key);

  @override
  State<categorySelector> createState() => _categorySelectorState();
}

class _categorySelectorState extends State<categorySelector> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {

    TabController _tabcontroller = TabController(length: 4, vsync: this);
    return Container(
      child: Column(
        children: [
          Container(
            height: 80,
            child: TabBar(
              labelColor: CupertinoColors.lightBackgroundGray,
              unselectedLabelColor: Colors.white30,
              indicatorWeight: 0.1,
              isScrollable: true,
              controller: _tabcontroller,
                tabs: [
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Icon(CupertinoIcons.chat_bubble,
                              size: 40,
                              shadows:
                                   ([
                                BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(3.0, 3.0)),
                              ])),
                          Text("Chats",
                              style: TextStyle(
                                  shadows: ([
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(3.0, 3.0)),
                                  ]))),
                        ],
                      ),
                      SizedBox(width: 20,)
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Icon(CupertinoIcons.group,
                              size: 40,
                              shadows:
                              ([
                                BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(3.0, 3.0)),
                              ])),
                          Text("Groups",
                              style: TextStyle(
                                  shadows: ([
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(3.0, 3.0)),
                                  ]))),
                        ],
                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Icon(CupertinoIcons.person,
                              size: 40,
                              shadows:
                              ([
                                BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(3.0, 3.0)),
                              ])),
                          Text("Contacts",
                              style: TextStyle(
                                  shadows: ([
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(3.0, 3.0)),
                                  ]))),
                        ],
                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Icon(CupertinoIcons.phone,
                              size: 40,
                              shadows:
                              ([
                                BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(3.0, 3.0)),
                              ])),
                          Text("Calls",
                              style: TextStyle(
                                  shadows: ([
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(3.0, 3.0)),
                                  ]))),
                        ],
                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                ]
            ),
          ),
          Expanded(
            child: Container(
              child: TabBarView(
                controller: _tabcontroller,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)
                          )
                      ),
                      child: Column(
                        children: [
                          favorite(),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0)
                                  )
                              ),
                              child: chatWidget(),
                            ),
                          )
                        ],
                      ),

                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)
                          )
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)
                          )
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)
                          )
                      ),
                    ),
                    ]
              ),
            ),
          )
        ],
      ),
    );
  }
}


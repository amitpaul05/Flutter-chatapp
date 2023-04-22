import 'package:chatapp/models/messege_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/chatScreen.dart';

class favorite extends StatelessWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Favorite contacts",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
              ],
            ),
          ),
          Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (BuildContext context, int index) {
                  Route _createRoute() {
                    return PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          chatScreen(User: favorites[index]),
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                AssetImage(favorites[index].imageUrl),
                          ),
                          Text(favorites[index].name),
                        ],
                      ),
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}

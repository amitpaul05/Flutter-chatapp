
import 'package:chatapp/screens/init.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat UI',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 13, 13, 38),
        primaryColor: CupertinoColors.inactiveGray, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(
          0xFF63FFE2))

      ),
      home: initpage(),
    );
  }
}
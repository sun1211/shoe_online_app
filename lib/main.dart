import 'package:flutter/material.dart';
import 'package:shoe_online_app/screen/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoe shop online',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Averta',
      ),
      home: HomeScreen(),
    );
  }
}

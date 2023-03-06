import 'package:flutter/material.dart';
import 'package:greentick/Screens/AboutUs.dart';
import 'package:greentick/Screens/HomeScreen.dart';
import 'package:greentick/Screens/SearchScreen.dart';

import 'Screens/ItemScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Color.fromARGB(255, 113, 206, 123),
        secondary: Colors.white,
      )),
      initialRoute: 'splashRoute',
      home: HomeScreen(),
      routes: {
        'splashRoute': (context) => HomeScreen(),
        'searchRoute': (context) => SearchScreen(),
        'itemRoute':(context) => ItemScreen(),
        'aboutRoute':(context) => AboutusScreen(),
      },
    );
  }
}

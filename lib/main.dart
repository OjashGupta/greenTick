import 'package:flutter/material.dart';
import 'package:greentick/Screens/SwipeScreen.dart';
import '/Screens/AboutUs.dart';
import '/Screens/HomeScreen.dart';
import '/Screens/SearchScreen.dart';

import 'Screens/ItemScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const type = 1;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          // primary: Color.fromARGB(200, 63, 90, 39),
          primary: Color.fromARGB(255,171, 189, 114),
          secondary: Colors.white,
        ),
      ),
      initialRoute: 'swipeRoute',
      home: SwipeScreen(),
      routes: {
        'swipeRoute':(context) => SwipeScreen(),
        'splashRoute': (context) => HomeScreen(),
        'searchRoute': (context) => SearchScreen(),
        'itemRoute': (context) => ItemScreen(testData: [],),
        'aboutRoute': (context) => AboutusScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import '/Screens/AboutUs.dart';
import '/Screens/HomeScreen.dart';

class SwipeScreen extends StatefulWidget {
  @override
  State<SwipeScreen> createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      scrollDirection: Axis.vertical,
      children: [
        HomeScreen(),
        AboutusScreen(),
      ],
    );
  }
}

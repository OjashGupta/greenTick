// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:greentick/Screens/SearchScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/NewScreen2.png"),
            fit: BoxFit.fitHeight),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.only(top: 40, left: 15, right: 20,bottom: 20),
          child:
              Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 600,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 75,
                  width: 75,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'searchRoute');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 239, 252, 183),shape: CircleBorder(),),
                    child: Icon(
                      Icons.navigate_next_outlined,
                      size: 25,
                      color: Color.fromARGB(255, 97, 130, 61),
                    )
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

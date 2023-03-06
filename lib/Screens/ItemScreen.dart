// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:greentick/utils/Item.dart';

import '../utils/sample_data.dart';

class ItemScreen extends StatelessWidget {
  final Item item = DATA[0];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/BlankScreen.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.only(top: 75, left: 40, right: 30),
          child: Column(
            children: [
              Container(
                height: 350,
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 3,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Color.fromARGB(255, 70, 88, 70),
                  width: 2,
                )),
                width: double.infinity,
                child: Image.network(
                  item.imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                child: Text(
                  item.name,
                  style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 14, 113, 18)),
                  textAlign: TextAlign.center,
                ),
                height: 60,
                width: double.infinity,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

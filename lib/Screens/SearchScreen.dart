// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:greentick/Screens/ItemScreen.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool food = false;
  bool cosmetics = false;
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Design Page Test.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.only(top: 40, left: 40, right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  // ignore: prefer_const_constructors
                  Expanded(
                    child: TextField(
                      controller: textController,
                      decoration: InputDecoration(
                        labelText: 'Search',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Category',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Food',
                    style: TextStyle(fontSize: 20),
                  ),
                  Switch(
                      value: food,
                      activeColor: Color.fromARGB(255, 113, 206, 123),
                      onChanged: (bool value) {
                        setState(() {
                          food = value;
                          print(food);
                        });
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cosmetics',
                    style: TextStyle(fontSize: 20),
                  ),
                  Switch(
                      value: cosmetics,
                      activeColor: Color.fromARGB(255, 113, 206, 123),
                      onChanged: (bool value) {
                        setState(() {
                          cosmetics = value;
                          print(food);
                        });
                      }),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ItemScreen()));
                },
                child: Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:greentick/Screens/ItemScreen.dart';
import 'package:greentick/utils/showData.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool food = true;
  bool cosmetics = false;
  // List<Widget> choice = <Widget>[Text('Food'),Text(data)];
  List<bool> _isSelected = [true, false];
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Design3.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.only(top: 40, left: 40, right: 30, bottom: 30),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
              Text(
                'Category',
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 63, 90, 39),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ToggleButtons(
                children: [
                  Text('Food'),
                  Text('Cosmetics'),
                ],
                isSelected: _isSelected,
                onPressed: (int index) {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < _isSelected.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        _isSelected[buttonIndex] = true;
                      } else {
                        _isSelected[buttonIndex] = false;
                      }
                    }
                    food = _isSelected[0];
                    cosmetics = _isSelected[1];
                  });
                },
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                selectedBorderColor: Color.fromARGB(200, 97, 130, 61),
                selectedColor: Colors.white,
                fillColor: Color.fromARGB(255,171, 189, 114),
                color: Color.fromARGB(255, 63, 90, 39),
                constraints: const BoxConstraints(
                  minHeight: 40.0,
                  minWidth: 125.0,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: TextField(
                  controller: textController,
                  decoration: InputDecoration(
                      labelText: 'Product',
                      labelStyle: TextStyle(fontSize: 23)),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: ButtonTheme(
                  height: 100,
                  child: SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemScreen(afterAPIcall,)));
                      },
                      child: Text(
                        'Search',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 248, 250, 242)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ShowData afterAPIcall = ShowData(0.67, "Food"); //TestData

import 'package:flutter/material.dart';

class AboutusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Design Page Test.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'About Us',
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 93, 179, 102)),
              ),
              Divider(
                color: Color.fromARGB(255, 143, 236, 152),
                height: 0,
                thickness: 2,
                indent: 20,
                endIndent: 150,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

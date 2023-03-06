import 'package:flutter/material.dart';
import 'package:greentick/Screens/SearchScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/BlankScreen.png"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.only(top: 40, left: 10, right: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              child:
                  Image(image: AssetImage("assets/images/GreenTickLogo.png")),
            ),
            const Divider(
              color: Color.fromARGB(255, 143, 236, 152),
              height: 0,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Image(
                  image: AssetImage("assets/images/Light green tree.png")),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  child: TextButton(
                    child: Text(
                      'About GreenTick',
                      style: TextStyle(
                          fontSize: 15, decoration: TextDecoration.underline),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(199, 251, 251, 251))),
                    onPressed: () {
                      Navigator.pushNamed(context, 'aboutRoute');
                    },
                  ),
                ),
                SizedBox(
                  height: 75,
                  width: 75,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'searchRoute');
                    },
                    child: Icon(
                      Icons.navigate_next_outlined,
                      size: 25,
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(200, 235, 235, 235))),
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

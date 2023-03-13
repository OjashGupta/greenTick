// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:greentick/utils/Item.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../utils/sample_data.dart';

class ItemScreen extends StatelessWidget {
  final Item item = DATA[0];

  @override
  Widget build(BuildContext context) {
    List<ShowData> testData = [
      ShowData(0.667, "Aquatic", Color.fromRGBO(6, 27, 167, 0.498)),
      ShowData(0.37, "Enviroment", Color.fromRGBO(121, 135, 89, 0.498))
    ];
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Blank2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Color.fromRGBO(171, 189, 114,0.6),),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          //image one
                          height: 100,
                          padding: EdgeInsets.symmetric(
                            vertical: 3,
                            horizontal: 3,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(100, 70, 88, 70),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          width: 100,
                          child: Image.network(
                            item.imageUrl,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20, bottom: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.name,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                item.category,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 2,
                  color: Color.fromARGB(150, 171, 189, 114),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, 'Jahnavi Screen'); //Jahnavi's Screen
                        },
                        child: Text(
                          'Details->',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 15),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(171, 189, 114, 0.3),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(68.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Color.fromRGBO(228, 236, 226, 0.2),
                            offset: Offset(1.1, 1.1),
                            blurRadius: 10.0)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            // aquatic part component
                            child: Row(
                              children: [
                                Container(
                                  //vertical line
                                  height: 48,
                                  width: 2,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(6, 27, 167, 0.498),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Aquatic'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '0.7777',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // aquatic part component
                            child: Row(
                              children: [
                                Container(
                                  //vertical line
                                  height: 48,
                                  width: 2,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(121, 135, 89, 0.498),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Enviroment'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '0.3377',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 220,
                        width: 220,
                        child: Expanded(
                          child: SfCircularChart(series: <CircularSeries>[
                            RadialBarSeries<ShowData, String>(
                                cornerStyle: CornerStyle.bothCurve,
                                innerRadius: '60%',
                                maximumValue: 1,
                                animationDelay: 1,
                                animationDuration: 2,
                                trackBorderColor:
                                    Theme.of(context).primaryColor,
                                pointColorMapper: (ShowData data, _) =>
                                    data.color,
                                dataSource: testData,
                                xValueMapper: (ShowData data, _) =>
                                    data.category,
                                yValueMapper: (ShowData data, _) => data.value),
                          ]),
                        ),
                      ), // for circular graph
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShowData {
  final double value;
  final String category;
  final Color color;

  ShowData(this.value, this.category, this.color);
}

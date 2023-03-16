// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:greentick/utils/Item.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
import "dart:math" as math;
import '../utils/ColorTheme.dart';
import '../utils/sample_data.dart';
import '../utils/showData.dart';

class ItemScreen extends StatelessWidget {
  final Item item = DATA[0];
  final ShowData testData;

  ItemScreen(this.testData);

  @override
  Widget build(BuildContext context) {
    ShowData useData = testData;
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Blank2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(171, 189, 114, 0.6),
        ),
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
                  child: Column(
                    children: [
                      Row(
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
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomPaint(
                                  painter: CurvePainter(colors: [
                                    GreenTickAppTheme.nearlyDarkBlue,
                                    Color.fromRGBO(138, 152, 232, 1),
                                    Color.fromRGBO(138, 152, 232, 1),
                                  ], angle: (360) * (testData.value)),
                                  child: SizedBox(
                                    width: 108,
                                    height: 108,
                                  ),
                                ),
                              ),
                          ), // for circular graph
                        ],
                      ),
                      SizedBox(height: 30,)
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

class CurvePainter extends CustomPainter {
  final double? angle;
  final List<Color>? colors;

  CurvePainter({this.colors, this.angle = 140});

  @override
  void paint(Canvas canvas, Size size) {
    List<Color> colorsList = [];
    if (colors != null) {
      colorsList = colors ?? [];
    } else {
      colorsList.addAll([Colors.white, Colors.white]);
    }

    final shdowPaint = new Paint()
      ..color = Colors.black.withOpacity(0.4)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 14;
    final shdowPaintCenter = new Offset(size.width / 2, size.height / 2);
    final shdowPaintRadius =
        math.min(size.width / 2, size.height / 2) - (14 / 2);
    canvas.drawArc(
        new Rect.fromCircle(center: shdowPaintCenter, radius: shdowPaintRadius),
        degreeToRadians(278),
        degreeToRadians(360 - (365 - angle!)),
        false,
        shdowPaint);

    shdowPaint.color = Colors.grey.withOpacity(0.3);
    shdowPaint.strokeWidth = 16;
    canvas.drawArc(
        new Rect.fromCircle(center: shdowPaintCenter, radius: shdowPaintRadius),
        degreeToRadians(278),
        degreeToRadians(360 - (365 - angle!)),
        false,
        shdowPaint);

    shdowPaint.color = Colors.grey.withOpacity(0.2);
    shdowPaint.strokeWidth = 20;
    canvas.drawArc(
        new Rect.fromCircle(center: shdowPaintCenter, radius: shdowPaintRadius),
        degreeToRadians(278),
        degreeToRadians(360 - (365 - angle!)),
        false,
        shdowPaint);

    shdowPaint.color = Colors.grey.withOpacity(0.1);
    shdowPaint.strokeWidth = 22;
    canvas.drawArc(
        new Rect.fromCircle(center: shdowPaintCenter, radius: shdowPaintRadius),
        degreeToRadians(278),
        degreeToRadians(360 - (365 - angle!)),
        false,
        shdowPaint);

    final rect = new Rect.fromLTWH(0.0, 0.0, size.width, size.width);
    final gradient = new SweepGradient(
      startAngle: degreeToRadians(268),
      endAngle: degreeToRadians(270.0 + 360),
      tileMode: TileMode.repeated,
      colors: colorsList,
    );
    final paint = new Paint()
      ..shader = gradient.createShader(rect)
      ..strokeCap = StrokeCap.round // StrokeCap.round is not recommended.
      ..style = PaintingStyle.stroke
      ..strokeWidth = 14;
    final center = new Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width / 2, size.height / 2) - (14 / 2);

    canvas.drawArc(
        new Rect.fromCircle(center: center, radius: radius),
        degreeToRadians(278),
        degreeToRadians(360 - (365 - angle!)),
        false,
        paint);

    final gradient1 = new SweepGradient(
      tileMode: TileMode.repeated,
      colors: [Colors.white, Colors.white],
    );

    var cPaint = new Paint();
    cPaint..shader = gradient1.createShader(rect);
    cPaint..color = Colors.white;
    cPaint..strokeWidth = 14 / 2;
    canvas.save();

    final centerToCircle = size.width / 2;
    canvas.save();

    canvas.translate(centerToCircle, centerToCircle);
    canvas.rotate(degreeToRadians(angle! + 2));

    canvas.save();
    canvas.translate(0.0, -centerToCircle + 14 / 2);
    canvas.drawCircle(new Offset(0, 0), 14 / 5, cPaint);

    canvas.restore();
    canvas.restore();
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  double degreeToRadians(double degree) {
    var redian = (math.pi / 180) * degree;
    return redian;
  }
}

//Earlier one

// SfCircularChart(series: <CircularSeries>[
//                             RadialBarSeries<ShowData, String>(
//                                 cornerStyle: CornerStyle.bothCurve,
//                                 innerRadius: "70%",
//                                 maximumValue: 1,
//                                 trackColor: Color.fromRGBO(89, 141, 193, 0.555),
//                                 trackOpacity: 0.2,
//                                 animationDelay: 1,
//                                 animationDuration: 2,
//                                 trackBorderColor:
//                                     Theme.of(context).primaryColor,
//                                 dataSource: useData,
//                                 xValueMapper: (ShowData data, _) =>
//                                     data.category,
//                                 yValueMapper: (ShowData data, _) => data.value),
//                           ]),
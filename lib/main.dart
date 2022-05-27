import 'dart:ffi';
import 'dart:math';

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60),
            ),
            Container(
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.only(left: 30, right: 30),
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border:
                          Border.all(width: 2.0, color: Colors.grey.shade300),
                    ),
                    child: Icon(BootstrapIcons.chevron_compact_left),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                      ),
                      Container(
                        height: 20,
                        width: 130,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 75),
                        child: Text(
                          'Amazon lnc',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3),
                      ),
                      Container(
                        height: 20,
                        width: 130,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 100),
                        child: Text(
                          'AMZN.USA',
                          style: TextStyle(fontSize: 14, color: Colors.black45),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(left: 34),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border:
                          Border.all(width: 2.0, color: Colors.grey.shade300),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Icon(BootstrapIcons.card_heading),
                        Positioned(
                          top: 10,
                          right: 5,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Container(
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.only(left: 30, right: 30),
              decoration: ShapeDecoration(
                color: Colors.grey.shade100,
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                      cornerRadius: 20, cornerSmoothing: 0.6),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.grey.shade100,
                      shape: SmoothRectangleBorder(
                        borderRadius: SmoothBorderRadius(
                            cornerRadius: 15, cornerSmoothing: 0.6),
                      ),
                    ),
                    child: Image.network(
                      'https://thumbs.dreamstime.com/b/amazon-logo-editor…-amazon-logo-editorial-illustrative-208329111.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                      ),
                      Container(
                        height: 20,
                        width: 70,
                        color: Colors.grey.shade100,
                        margin: EdgeInsets.only(left: 0),
                        child: Text(
                          'AMZN',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      Container(
                        height: 17,
                        width: 94,
                        color: Colors.grey.shade100,
                        margin: EdgeInsets.only(left: 22),
                        child: Text(
                          'Amazon.lnc',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      // color: Colors.grey.shade500,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Image.network(
                      'https://www.singlecare.com/blog/wp-content/uploads/2020/08/NormalHeartRate-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 20,
                        width: 70,
                        color: Colors.grey.shade100,
                        margin: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          '\$2,857.86',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 50,
                        color: Colors.grey.shade100,
                        margin: EdgeInsets.only(top: 5, left: 27),
                        child: Text(
                          '+0.05%',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Row(
              children: [
                Container(
                  width: 280,
                  color: Colors.white,
                  margin: EdgeInsets.only(
                    left: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: ShapeDecoration(
                          color: Colors.green.shade50,
                          shape: SmoothRectangleBorder(
                            borderRadius: SmoothBorderRadius(
                                cornerRadius: 10, cornerSmoothing: 0.6),
                          ),
                        ),
                        child: Text(
                          '1D',
                          style: TextStyle(
                              color: Colors.green.shade700,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Text(
                          '5D',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Text(
                          '1M',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Text(
                          '1Y',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Text(
                          'All',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  color: Colors.white,
                  margin: EdgeInsets.only(left: 60),
                  child: Icon(
                    BootstrapIcons.fullscreen,
                    size: 16,
                    color: Colors.green,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Row(
              children: [
                Container(
                  height: 260,
                  width: 280,
                  color: Colors.black,
                  margin: EdgeInsets.only(left: 30),
                  child: Image.network(
                    'https://cdn.stocktrader.com/uploads/f4s382s/Google-finance-stock-chart.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 260,
                  width: 65,
                  color: Colors.white,
                  margin: EdgeInsets.only(left: 22),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          '\$3,000,',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                      SizedBox(
                        height: 44,
                      ),
                      Container(
                        child: Text(
                          '\$2,800',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                      SizedBox(
                        height: 44,
                      ),
                      Container(
                        child: Text(
                          '\$2,600',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                      SizedBox(
                        height: 44,
                      ),
                      Container(
                        child: Text(
                          '\$2,400',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                      SizedBox(
                        height: 43,
                      ),
                      Container(
                        child: Text(
                          '\$2,200',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 30, right: 117),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Text(
                      '01PM',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text(
                      'O2PM',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text(
                      '03PM',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text(
                      '04PM',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 30, right: 0.5),
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Text(
                      'OverView',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      'MarketStats',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      'Financils',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text(
                      'Corporate A',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 2,
                  width: 75,
                  margin: EdgeInsets.only(top: 15, left: 35),
                  color: Colors.green,
                ),
                Container(
                  height: 2,
                  width: 318,
                  margin: EdgeInsets.only(top: 15, left: 0),
                  color: Colors.grey.shade300,
                ),
              ],
            ),
            Container(
              height: 150,
              margin: EdgeInsets.all(30),
              decoration: ShapeDecoration(
                shape: SmoothRectangleBorder(
                  side: BorderSide(width: 2, color: Colors.grey.shade400),
                  borderRadius: SmoothBorderRadius(
                      cornerRadius: 20, cornerSmoothing: 0.6),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 30),
                            child: Icon(
                              Icons.doorbell_rounded,
                              color: Colors.grey.shade500,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 5),
                            child: Text(
                              'Open Price',
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 20),
                            child: Icon(
                              BootstrapIcons.graph_up,
                              color: Colors.grey.shade500,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 5),
                            child: Text(
                              'Volume',
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                      ),
                      Text(
                        '2,169.22',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        width: 95,
                      ),
                      Text(
                        '\$6,720,000.67',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 30),
                            child: Icon(
                              BootstrapIcons.arrow_up,
                              color: Colors.grey.shade500,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              '24h High',
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 20),
                            child: Icon(
                              BootstrapIcons.arrow_down,
                              color: Colors.grey.shade500,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 5),
                            child: Text(
                              '24h Low',
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                        height: 30,
                      ),
                      Text(
                        '2,176.38',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        '+1.5%',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                      SizedBox(
                        width: 38,
                      ),
                      Text(
                        '2,176.38',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '-3.5%',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.red),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

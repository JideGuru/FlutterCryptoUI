import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class Wallet extends StatefulWidget {
  final String name;
  final String icon;
  final String rate;
  final charts.Color color;
  Wallet({
    Key key,
    this.name, this.icon, this.rate, this.color
  }) : super(key: key);


  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {

  static Random random = Random();
  final data = [
    LinearToken(0, random.nextInt(300)),
    LinearToken(1, random.nextInt(300)),
    LinearToken(2, random.nextInt(300)),
    LinearToken(3, random.nextInt(300)),
    LinearToken(4, random.nextInt(300)),
    LinearToken(5, random.nextInt(300)),
    LinearToken(6, random.nextInt(300)),
    LinearToken(7, random.nextInt(300)),
    LinearToken(8, random.nextInt(300)),
    LinearToken(9, random.nextInt(300)),
    LinearToken(10, random.nextInt(300)),
    LinearToken(11, random.nextInt(300)),
    LinearToken(12, random.nextInt(300)),
    LinearToken(13, random.nextInt(300)),
    LinearToken(14, random.nextInt(300)),
    LinearToken(15, random.nextInt(300)),
    LinearToken(16, random.nextInt(300)),
    LinearToken(17, random.nextInt(300)),
    LinearToken(18, random.nextInt(300)),
    LinearToken(19, random.nextInt(300)),
    LinearToken(20, random.nextInt(300)),
    LinearToken(21, random.nextInt(300)),
    LinearToken(22, random.nextInt(300)),
    LinearToken(23, random.nextInt(300)),
    LinearToken(24, random.nextInt(300)),
    LinearToken(25, random.nextInt(300)),
    LinearToken(26, random.nextInt(300)),
    LinearToken(27, random.nextInt(300)),
    LinearToken(28, random.nextInt(300)),
    LinearToken(29, random.nextInt(300)),
    LinearToken(30, random.nextInt(300)),
    LinearToken(31, random.nextInt(300)),
  ];


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Row(
                  children: <Widget>[
                    Image.asset(
                      "${widget.icon}",
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "${widget.name}",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),


                Text(
                  "${widget.rate}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Text(" "),

                Text(
                  r"(0.3%) $21.67",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.green[400],
                  ),
                ),
              ],
            ),
          ),


          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: charts.LineChart(
              <charts.Series<LinearToken, int>>[
                charts.Series<LinearToken, int>(
                  id: '${widget.name}',
                  colorFn: (_, __) => widget.color,
                  domainFn: (LinearToken sales, _) => sales.day,
                  measureFn: (LinearToken sales, _) => sales.value,
                  data: data,
                )
              ],
              defaultRenderer: charts.LineRendererConfig(
                includeArea: true,
                stacked: true,
              ),
              animate: false,
              primaryMeasureAxis: charts.NumericAxisSpec(
                renderSpec: charts.NoneRenderSpec(),
              ),
              domainAxis: charts.NumericAxisSpec(
//                showAxisLine: true,
                renderSpec: charts.NoneRenderSpec(),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
class LinearToken {
  final int day;
  final int value;

  LinearToken(this.day, this.value);
}
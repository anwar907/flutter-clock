import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _temperature = '';
  var _temperatureRange = '';
  var _condition = '';
  var _location = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Stack(
        children: <Widget>[
          Container(
              child: Center(
                  child: AnalogClock(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.black),
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    isLive: true,
                    hourHandColor: Colors.black,
                    minuteHandColor: Colors.black,
                    showSecondHand: true,
                    numberColor: Colors.black87,
                    textScaleFactor: 1.4,
                    showTicks: true,
                    datetime: DateTime.now(),
                    tickColor: Colors.blue,
                    showDigitalClock: false,
                  )
              )
          ),
        ],
      ),
    );
  }
}

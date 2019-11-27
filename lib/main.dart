import 'package:analog_clock/analog_clock.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_clock/theme/Theme.dart';

void main() async {
//  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Brightness brightness;

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Widget child;
  final MyThemeKey initialTheme;

  const MyHomePage({
    Key key,
    this.initialTheme,
    this.child,
}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Brightness brightness;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCCCCCC),
      body: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 300),
            child: Center(
              child: AnalogClock(
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.black),
                    color: Colors.transparent,
                    shape: BoxShape.circle),
                width: 80.0,
                isLive: true,
                hourHandColor: Colors.black,
                minuteHandColor: Colors.black,
                showSecondHand: true,
                numberColor: Colors.black87,
                showNumbers: true,
                textScaleFactor: 1.4,
                showTicks: true,
                showDigitalClock: false,
                datetime: DateTime.now()
              ),
            )
          ),
          FlareActor(
            "assets/coding.flr",
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: "coding",
          )
        ],
      ),
    );
  }
}

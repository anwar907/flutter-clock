import 'package:app_clock/widget/Home.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen.navigate(
      name: "assets/splash.flr",
      next: (context) => MyHomePage(),
      startAnimation: "time",
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      backgroundColor: Colors.white,
      until: () => Future.delayed(Duration(seconds: 5)),
    );
  }
}

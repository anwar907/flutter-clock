import 'package:app_clock/widget/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.blue, brightness: Brightness.dark),
    home: Splash(),
  ));
}

import 'package:flutter/material.dart';

enum MyThemeKey{LIGHT, DARK}

class MyTheme{
  static final ThemeData light = ThemeData(
    primaryColor: Colors.blue,
    brightness: Brightness.light
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.white,
    brightness: Brightness.dark
  );

  static ThemeData getThemeFromKey(MyThemeKey themeKey){
    switch(themeKey){
      case MyThemeKey.LIGHT:
        return light;
      case MyThemeKey.DARK:
        return darkTheme;
      default:
        return light;
    }
  }
}
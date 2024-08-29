import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        primary: Color(0xffF7F9FB),
        onPrimary: Color(0xff87959F),
        secondary: Color(0xff87959F),
        onSecondary: Color(0xff242D31),
        surface: Color(0xff0B141B),
        onPrimaryContainer: Color(0xff144D36),
        onInverseSurface: Color(0xffF6F8FA),
        //user for bottomnavigationSelectedIndex Color
        inverseSurface: Color(0xff103528),
        //used at bottomnavigationIcon
        inversePrimary: Color(0xffDAFDD3)),
    textTheme: ThemeData().textTheme.apply(
          bodyColor: Colors.grey.shade700,
          displayColor: Colors.white,
        ));

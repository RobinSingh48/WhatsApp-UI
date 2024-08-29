import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        primary: Color(0xff1CAA61),
        onPrimary: Color(0xff8D959A),
        secondary: Color(0xff5B6368),
        onSecondary: Color(0xffF5F5F2),
        surface: Color(0xffFFFFFF),
        onPrimaryContainer: Color(0xffD9FDD3),

        //used in Status bar page in floating action Edit button pencil color
        onInverseSurface: Color(0xff0D141B),
        //user for bottomnavigationSelectedIndex Color
        inverseSurface: Color(0xffD9FDD3),

        //used at bottomnavigationIcon
        inversePrimary: Color(0xff14613F)),
    textTheme: ThemeData().textTheme.apply(
          bodyColor: Colors.grey.shade700,
          displayColor: Colors.black,
        ));

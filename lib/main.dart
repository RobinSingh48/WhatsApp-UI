import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:whatsapp_ui/theme/darktheme.dart';
import 'package:whatsapp_ui/theme/lighttheme.dart';
import 'package:whatsapp_ui/widgets/navigator.dart';

import 'package:whatsapp_ui/widgets/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ScreenNavigator(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: NavigatorScreen(),
      ),
    );
  }
}

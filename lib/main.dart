import 'package:bmi_calculator/screens/bmihome.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:bmi_calculator/widgets/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bmihome(),
      routes: {
        'result' :(context) => result_page(), 
      },
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xFF090C22),
          appBarTheme: const AppBarTheme(color: Color(0xFF0A0E21)),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: kAccentColor )),
    );
  }
}

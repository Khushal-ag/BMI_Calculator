import 'package:bmi_calculator/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class result_page extends StatefulWidget {
  const result_page({Key? key}) : super(key: key);

  @override
  State<result_page> createState() => _result_pageState();
}

class _result_pageState extends State<result_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
                color: Color(0xFFE1BEE7),
                fontFamily: 'RubikMoonrocks',
                fontSize: 30,
                letterSpacing: 2,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: const Center(
          child: Text(
        'Your BMI',
        style: kLabelTextStyle,
      )),
    );
  }
}

import 'package:bmi_calculator/widgets/constants.dart';
import 'package:flutter/material.dart';

class propertyicon extends StatefulWidget {
  const propertyicon(this.textdata, this.data);

  final String textdata;
  final String data;

  @override
  State<propertyicon> createState() => _propertyiconState();
}

class _propertyiconState extends State<propertyicon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: kActiveBoxColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.textdata,
            style: kLabelTextStyle,
          ),
          Text(
            widget.data,
            style: kNumberTextStyle,
          ),
        ],
      ),
    );
  }
}

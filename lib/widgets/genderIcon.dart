import 'package:bmi_calculator/widgets/constants.dart';
import 'package:flutter/material.dart';

class genderIcon extends StatelessWidget {
  final String textdata;
  final IconData iconname;

  const genderIcon(@required this.textdata, this.iconname);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconname,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          textdata,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}

import 'package:bmi_calculator/widgets/constants.dart';
import 'package:bmi_calculator/widgets/genderIcon.dart';
import 'package:bmi_calculator/widgets/myBox.dart';
import 'package:bmi_calculator/widgets/propertyicon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
  none,
}

class bmihome extends StatefulWidget {
  @override
  State<bmihome> createState() => _bmihomeState();
}

class _bmihomeState extends State<bmihome> {
  Gender? selectedGender;
  Color maleColor = kInactiveBoxColor;
  Color femaleColor = kInactiveBoxColor;
  int height = 180;
  int weight = 60;
  int age = 16;

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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: myBox(
                        selectedGender == Gender.male
                            ? kActiveBoxColor
                            : kInactiveBoxColor,
                        const genderIcon(
                          'MALE',
                          FontAwesomeIcons.mars,
                        ), () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    }),
                  ),
                  Expanded(
                    child: myBox(
                        selectedGender == Gender.female
                            ? kActiveBoxColor
                            : kInactiveBoxColor,
                        const genderIcon(
                          'FEMALE',
                          FontAwesomeIcons.venus,
                        ), () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    }),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: kActiveBoxColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30),
                      thumbColor: const Color(0xFFEA1556),
                      overlayColor: const Color(0x29EA1556),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: kTextColor,
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100,
                      max: 250,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: propertyicon(
                      'WEIGHT',
                      weight.toString(),
                    ),
                  ),
                  Expanded(
                    child: propertyicon(
                      'AGE',
                      age.toString(),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'result');
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                color: kAccentColor,
                height: kBottomContainerHeight,
                width: double.infinity,
                child: const Center(
                    child: Text(
                  'Calculate your BMI',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

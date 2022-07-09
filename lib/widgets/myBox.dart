import 'package:flutter/material.dart';

class myBox extends StatelessWidget {
  const myBox(@required this.colour, this.boxChild,this.onPress);

  final Color colour;
  final Widget boxChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: boxChild,
      ),
    );
  }
}

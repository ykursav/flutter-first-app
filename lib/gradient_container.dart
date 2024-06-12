import 'dart:math';

import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colors, {super.key});

  GradientContainer.purple({super.key})
      : colors = const [Colors.deepPurple, Colors.indigo];

  GradientContainer.blue({super.key})
      : colors = const [
          Color.fromARGB(255, 120, 219, 244),
          Color.fromARGB(255, 25, 18, 209)
        ];

  final List<Color> colors;

  var activeDiceImage = "assets/images/dice-2.png";

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

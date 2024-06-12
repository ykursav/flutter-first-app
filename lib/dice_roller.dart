import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

final randomizer = Random();

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        const SizedBox(
          height: 100,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                foregroundColor: const Color.fromARGB(255, 110, 43, 43),
                textStyle: const TextStyle(fontSize: 28)),
            onPressed: rollDice,
            child: const Text('Roll Dice'))
      ],
    );
  }
}

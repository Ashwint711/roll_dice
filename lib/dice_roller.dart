import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  // Description of Definition of rollDice function
  void rollDice() {
    setState(() {
      int num = randomizer.nextInt(6) + 1;
      activeImagePath = "assets/images/dice-$num.png";
    });
  }

  //Image Path variable
  var activeImagePath = "assets/images/dice-1.png";
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImagePath,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          onPressed: rollDice,
          child: const Text(
            "Roll Dice",
          ),
        ),
      ],
    );
  }
}

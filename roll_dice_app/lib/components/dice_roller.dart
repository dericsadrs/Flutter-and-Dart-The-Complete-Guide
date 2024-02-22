import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
   var currentDiceRoll = 2;
   void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
    //activeDiceImage = "assets/images/dice-3.png";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset("assets/images/dice-$currentDiceRoll.png",width: 200,),
          TextButton(onPressed: rollDice , 
          style: TextButton.styleFrom( 
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white, 
            textStyle: const TextStyle(fontSize: 28)
            ),
          child: const Text("Roll Dice"))
     ],);
  }
}
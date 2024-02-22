import 'package:flutter/material.dart';
import 'package:roll_dice_app/components/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  final AlignmentGeometry startAlignment;
  final AlignmentGeometry endAlignment;
 
  const GradientContainer({
    Key? key,
    required this.colors,
    this.startAlignment = Alignment.topLeft,
    this.endAlignment = Alignment.bottomRight,
  }) : super(key: key);

    GradientContainer.purple()
      : colors = [
          Color.fromARGB(255, 33, 5, 109),
          Color.fromARGB(255, 68, 21, 149),
        ],
        startAlignment = Alignment.topLeft,
        endAlignment = Alignment.bottomRight;
    


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child:  Center(
        child: DiceRoller()
       ),
    );
  }
}

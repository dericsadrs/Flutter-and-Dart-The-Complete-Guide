import 'package:flutter/material.dart';
import 'package:first_app/componenets/child_text.dart';


var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
          colors:colors,
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          ),
        ),
        child:  const Center(
        child: ChildText("Hello World")
      ),);
}
}
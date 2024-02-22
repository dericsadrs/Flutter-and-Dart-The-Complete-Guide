import 'package:flutter/material.dart';

class ChildText extends StatelessWidget {
  const ChildText(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  const Text('Hello World',
        style: TextStyle(color: Colors.white, fontSize: 28),);
  }
}
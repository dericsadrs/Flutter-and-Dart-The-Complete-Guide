import 'package:flutter/material.dart';

class ChildText extends StatefulWidget {
  const ChildText({super.key});

  @override
  State<ChildText> createState() => _ChildTextState();
}

class _ChildTextState extends State<ChildText> {
  @override
  Widget build(BuildContext context) {
    return  const Text('Hello World',
        style: TextStyle(color: Colors.white, fontSize: 28),);
  }
}
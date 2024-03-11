
import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
  Expense(
    title: "Flutter Course",
    amount: 19.99,
    date: DateTime.now(),
    category: InputCategory.work,
  ),
  Expense(
    title: "Cinema",
    amount: 15.99,
    date: DateTime.now(),
    category: InputCategory.leisure,
  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            Text("data"),
            
      ], ),
    );
  }
}
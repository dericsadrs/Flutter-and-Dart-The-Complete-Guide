import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';


final formatter = DateFormat.yMd();
const uuid = Uuid();

enum InputCategory {
    food,
    travel,
    leisure,
    work
}

const categoryIcons = {
    InputCategory.food : Icons.lunch_dining,
    InputCategory.travel : Icons.travel_explore,
    InputCategory.leisure : Icons.movie,
    InputCategory.work : Icons.work
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final InputCategory category;

  String get formattedDate {
    return formatter.format(date);
  }
}

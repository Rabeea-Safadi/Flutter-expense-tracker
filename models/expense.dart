import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

final DateFormat formatter = DateFormat.yMd();

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Icon get getIcon {
    switch (category) {
      case Category.food:
        return const Icon(Icons.lunch_dining);
      case Category.travel:
        return const Icon(Icons.flight_takeoff);
      case Category.work:
        return const Icon(Icons.work);
      case Category.leisure:
        return const Icon(Icons.movie);
    }
  }

  String get formattedDate {
    return formatter.format(date);
  }
}

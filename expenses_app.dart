import 'package:expense_app/widgets/expenses_list/expenses.dart';
import 'package:flutter/material.dart';

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Expenses(),
    );
  }
}

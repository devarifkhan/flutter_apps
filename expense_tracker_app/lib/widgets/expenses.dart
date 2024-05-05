import "package:expense_tracker_app/widgets/expenses_list/expenses_list.dart";
import "package:flutter/material.dart";
import "package:expense_tracker_app/models/expense.dart";
import 'package:expense_tracker_app/widgets/expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Groceries",
      amount: 50.0,
      date: DateTime.now(),
      category: "food",
    ),
    Expense(
      title: "Taxi",
      amount: 30.0,
      date: DateTime.now(),
      category: "travel",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const Text("The chart"),
          Expanded( child: ExpensesList(expenses: _registeredExpenses)),

        ],
      ),
    );
  }
}

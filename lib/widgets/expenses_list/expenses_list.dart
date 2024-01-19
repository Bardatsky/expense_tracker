import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder( // allow us to make visible only active items on the screen
      itemCount: expenses.length, // number of expenses list items
      itemBuilder: (ctx, index) => ExpenseItem(expenses[index]), // itemBuilder build item
    );
  }
}

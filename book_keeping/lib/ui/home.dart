import 'package:book_keeping/control/check.dart';
import 'package:book_keeping/control/sum.dart';
import 'package:book_keeping/data/appData.dart';
import 'package:book_keeping/ui/goToAddExpFAB.dart';
import 'package:flutter/material.dart';

// List<Expense> expl = [];

// ignore: camel_case_types
class listExpense extends StatefulWidget {
  const listExpense({Key? key}) : super(key: key);

  @override
  State<listExpense> createState() => _listExpenseState();
}

class _listExpenseState extends State<listExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                'Expenses',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              check_heading(),
              check_items(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Total'),
                  Text(sum(Appdata.getExps()).toString())
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: GoToAddExpFAB(),
    );
  }
}

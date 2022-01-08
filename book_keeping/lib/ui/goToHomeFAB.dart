import 'package:book_keeping/data/Expense.dart';
import 'package:book_keeping/data/appData.dart';
import 'package:book_keeping/main.dart';
import 'package:book_keeping/ui/addExpPage.dart';
import 'package:book_keeping/ui/home.dart';
import 'package:flutter/material.dart';

class GoToHomeFAB extends StatelessWidget {
  const GoToHomeFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        if (name.isNotEmpty & (cost != 0)) {
          Appdata.addExps(Expense(name: name, cost: cost));
          name = '';
          cost = 0;
        }
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => MyApp()));
      },
      child: Icon(Icons.save),
    );
  }
}

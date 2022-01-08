import 'package:book_keeping/ui/addExpPage.dart';
import 'package:flutter/material.dart';

class GoToAddExpFAB extends StatelessWidget {
  const GoToAddExpFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => AddExp()));
      },
      child: Icon(Icons.add),
    );
  }
}

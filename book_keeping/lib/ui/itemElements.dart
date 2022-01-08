import 'package:book_keeping/data/Expense.dart';
import 'package:book_keeping/data/appData.dart';
import 'package:flutter/material.dart';

class expElements extends StatefulWidget {
  const expElements({Key? key, required this.exp, required this.index})
      : super(key: key);

  final Expense exp;
  final int index;

  @override
  _expElementsState createState() => _expElementsState();
}

class _expElementsState extends State<expElements> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.exp.name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
        Spacer(),
        Text(widget.exp.cost.toString()),
        Spacer(),
        GestureDetector(
          child: Icon(Icons.delete),
          onTap: () {
            Appdata.delExps(widget.index);
          },
        ),
      ],
    ));
  }
}

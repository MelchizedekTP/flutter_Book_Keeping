import 'package:flutter/material.dart';
import 'package:book_keeping/ui/goToHomeFAB.dart';

String name = '';
double cost = 0;

class AddExp extends StatefulWidget {
  const AddExp({Key? key}) : super(key: key);

  @override
  _AddExpState createState() => _AddExpState();
}

class _AddExpState extends State<AddExp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
        child: Align(
          alignment: Alignment(0, 0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Add Expenses',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Type item name here'),
                onChanged: (str) {
                  name = str;
                },
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Type cost here'),
                onChanged: (str) {
                  cost = double.parse(str);
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: GoToHomeFAB(),
    );
  }
}

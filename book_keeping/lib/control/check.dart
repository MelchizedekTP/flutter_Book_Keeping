import 'package:book_keeping/data/appData.dart';
import 'package:book_keeping/ui/itemElements.dart';
import 'package:flutter/cupertino.dart';

Expanded check_items() {
  if (Appdata.getExps().isNotEmpty) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return expElements(exp: Appdata.getExps()[index], index: index);
        },
        itemCount: Appdata.getExps().length,
      ),
    );
  } else {
    return Expanded(child: Text('No Expenses'));
  }
}

Row check_heading() {
  if (Appdata.getExps().isNotEmpty) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Items',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          'Cost',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          'Action',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  } else {
    return Row(
      children: [
        SizedBox(height: 0),
      ],
    );
  }
}

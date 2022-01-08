import 'package:book_keeping/data/Expense.dart';

double sum(List<Expense> ls) {
  double sum = 0;
  for (var i = 0; i < ls.length; i++) {
    sum = sum + ls[i].cost;
  }

  return sum;
}

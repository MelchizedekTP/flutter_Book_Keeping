import 'dart:convert';
import 'package:book_keeping/data/Expense.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Appdata {
  static List<Expense> _expList = [];
  static late SharedPreferences _sharedPreferences;
  static List<String> _jsonExpList = [];

  static Future<void> initExps() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    final _tempJsoneventList = _sharedPreferences.getStringList('expList');
    if (_tempJsoneventList != null) {
      _jsonExpList = _tempJsoneventList;
      _expList = _tempJsoneventList
          .map((e) => Expense.fromJson(jsonDecode(e)))
          .toList();
    }
  }

  static List<Expense> getExps() {
    return _expList;
  }

  static Future<void> addExps(Expense exp) async {
    _expList.add(exp);
    _jsonExpList.add(jsonEncode(exp));
    await _sharedPreferences.setStringList('expList', _jsonExpList);
  }

  static Future<void> saveExps() async {
    _jsonExpList = _expList.map((exp) => jsonEncode(exp)).toList();
    await _sharedPreferences.setStringList('expList', _jsonExpList);
  }

  static Future<void> delExps(int index) async {
    _expList.removeAt(index);
    _jsonExpList.removeAt(index);
    await _sharedPreferences.setStringList('expList', _jsonExpList);
  }
}

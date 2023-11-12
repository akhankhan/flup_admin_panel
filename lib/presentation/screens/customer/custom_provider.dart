import 'package:flutter/material.dart';

class CustomerProvider with ChangeNotifier {
  DateTime? date;

  Future<void> selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != date) {
      date = picked;
      notifyListeners();
    }
  }
}

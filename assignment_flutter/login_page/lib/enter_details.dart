import 'package:flutter/material.dart';

class Details with ChangeNotifier {
  var details = {'name': '', 'age': '', 'gender': '', 'status': ''};

  void addDetails(name, age, gender, status) {
    details['name'] = name;
    details['age'] = age;
    details['gender'] = gender;
    details['status'] = status;
  }
}

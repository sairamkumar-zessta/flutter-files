import 'package:flutter/cupertino.dart';

class PatientDetails {
  final String id;
  final String name;
  String patientId;
  final DateTime date;
  final String gender;
  final int age;
  final String status;

  PatientDetails(
      {required this.id,
      required this.name,
      this.patientId = 'PAT-PN00508',
      required this.date,
      required this.gender,
      required this.age,
      required this.status});
}

class Patients with ChangeNotifier {
  final List<PatientDetails> _patients = [
    PatientDetails(
        id: 'p1',
        name: 'Abhinav kanukuntla',
        patientId: 'PAT-PN00508',
        date: DateTime.now(),
        gender: 'M',
        age: 22,
        status: '-ve'),
    PatientDetails(
        id: 'p2',
        name: 'Raju kanukuntla',
        patientId: 'PAT-PN00508',
        date: DateTime.now(),
        gender: 'M',
        age: 22,
        status: '+ve'),
    PatientDetails(
        id: 'p3',
        name: 'Teju kanukuntla',
        patientId: 'PAT-PN00508',
        date: DateTime.now(),
        gender: 'F',
        age: 22,
        status: '-ve'),
    PatientDetails(
        id: 'p4',
        name: 'Ramesh kanukuntla',
        patientId: 'PAT-PN00508',
        date: DateTime.now(),
        gender: 'M',
        age: 22,
        status: '-ve')
  ];

  List<PatientDetails> get patients {
    return [..._patients];
  }

  void addPatientDeatails(name, gender, age, status) {
    _patients.insert(
        0,
        PatientDetails(
            id: DateTime.now().toString(),
            name: name,
            date: DateTime.now(),
            gender: gender,
            age: int.parse(age),
            status: status));
    notifyListeners();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
  List<PatientDetails> _patients = [
    // PatientDetails(
    //     id: 'p1',
    //     name: 'Abhinav kanukuntla',
    //     patientId: 'PAT-PN00508',
    //     date: DateTime.now(),
    //     gender: 'M',
    //     age: 22,
    //     status: '-ve'),
    // PatientDetails(
    //     id: 'p2',
    //     name: 'Raju kanukuntla',
    //     patientId: 'PAT-PN00508',
    //     date: DateTime.now(),
    //     gender: 'M',
    //     age: 22,
    //     status: '-ve'),
    // PatientDetails(
    //     id: 'p3',
    //     name: 'Teju kanukuntla',
    //     patientId: 'PAT-PN00508',
    //     date: DateTime.now(),
    //     gender: 'F',
    //     age: 22,
    //     status: '-ve'),
    // PatientDetails(
    //     id: 'p4',
    //     name: 'Ramesh kanukuntla',
    //     patientId: 'PAT-PN00508',
    //     date: DateTime.now(),
    //     gender: 'M',
    //     age: 22,
    //     status: '-ve')
  ];

  List<PatientDetails> get patients {
    return [..._patients].where((det) => det.status == '+ve').toList();
  }

  Future<void> fetchAndSetProducts() async {
    final url = Uri.https(
        'health-monitor-a603c-default-rtdb.firebaseio.com', '/patientdet.json');
    try {
      final response = await http.get(url);
      // print(json.decode(response.body));
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final List<PatientDetails> loadedDetails = [];
      extractedData.forEach((detId, detData) {
        loadedDetails.add(PatientDetails(
            id: detId,
            name: detData['name'],
            age: detData['age'],
            date: DateTime.parse(detData['date']),
            gender: detData['gender'],
            status: detData['status']));
      });
      _patients = loadedDetails;
      // _items.where((prod) => prod.isFavorite).toList();
      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }

  Future<void> addDetails(PatientDetails details) async {
    final url = Uri.https(
        'health-monitor-a603c-default-rtdb.firebaseio.com', '/patientdet.json');
    try {
      final response = await http.post(
        url,
        body: json.encode(
          {
            'name': details.name,
            'age': details.age,
            'date': DateTime.now().toString(),
            'gender': details.gender,
            'status': details.status,
            'patientId': details.patientId
          },
        ),
      );
      final newDet = PatientDetails(
          id: json.decode(response.body)['name'],
          name: details.name,
          date: DateTime.now(),
          gender: details.gender,
          age: details.age,
          status: details.status);
      _patients.insert(0, newDet);
      notifyListeners();
    } catch (error) {
      // print(error);
      rethrow;
    }
    // print(json.decode(response.body));
  }
}

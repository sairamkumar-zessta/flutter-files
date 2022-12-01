import 'package:flutter/material.dart';

void main() {
  runApp(const Center(
    child: Text(
      'Hello Flutter!!!',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: Colors.blue,
        backgroundColor: Colors.grey,
        fontSize: 50,
        fontWeight: FontWeight.bold,
        fontFamily: 'Courier',
        fontStyle: FontStyle.italic,
      ),
      textAlign: TextAlign.center,
    ),
  ));
}

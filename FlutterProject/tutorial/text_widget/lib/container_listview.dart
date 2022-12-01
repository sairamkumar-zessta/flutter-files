import 'package:flutter/material.dart';

void main() {
  runApp(Directionality(
    textDirection: TextDirection.ltr,
    //EdgeInsets.symmetric(vertical: 50, horizontal: 50),
    child: ListView(children: [
      // ignore: prefer_const_constructors
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border.all(color: Colors.white, width: 10),
        ),
        child: const Text(
          '1',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 100),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          border: Border.all(color: Colors.white, width: 10),
        ),
        child: const Text(
          '2',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 100),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border.all(color: Colors.white, width: 10),
        ),
        child: const Text(
          '3',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 100),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          border: Border.all(color: Colors.white, width: 10),
        ),
        child: const Text(
          '4',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 100),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border.all(color: Colors.white, width: 10),
        ),
        child: const Text(
          '5',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 100),
          textAlign: TextAlign.center,
        ),
      ),
      // Expanded(
      //     child: Text(
      //   '6',
      //   textDirection: TextDirection.ltr,
      //   style: TextStyle(fontSize: 100),
      // )),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border.all(color: Colors.black, width: 10),
        ),
        child: const Text(
          '6',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 100),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border.all(color: Colors.black, width: 10),
        ),
        child: const Text(
          '7',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 100),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border.all(color: Colors.black, width: 10),
        ),
        child: const Text(
          '8',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 100),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border.all(color: Colors.black, width: 10),
        ),
        child: const Text(
          '9',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 100),
          textAlign: TextAlign.center,
        ),
      ),
    ]),
  ));
}

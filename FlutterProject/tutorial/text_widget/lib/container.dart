import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Container')),
          body: Center(
            widthFactor: 10,
            heightFactor: 30,
            child: Container(
                decoration: BoxDecoration(
                    // color: Colors.red,
                    border: Border.all(
                        color: Colors.black,
                        width: 3,
                        style: BorderStyle.solid),
                    // borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.red, blurRadius: 4.0, spreadRadius: 2)
                    ],
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.blue, Colors.white]),
                    shape: BoxShape.circle),

                // transform: Matrix4.rotationZ(0.5),
                width: 200,
                height: 200,
                alignment: Alignment.center,
                // constraints: BoxConstraints.expand(),
                // constraints: BoxConstraints(minWidth: 100, maxWidth: 150),
                // color: Colors.red,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Hi This is sai',
                  style: TextStyle(fontSize: 30),
                )),
          )),
    );
  }
}

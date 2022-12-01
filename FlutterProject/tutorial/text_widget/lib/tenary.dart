import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String req = 'first';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('chnging in between screens'),
        ),
        body: req == 'first'
            ? Center(
                child: Column(
                  children: [
                    const Text('HI'),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            req = 'sec';
                          });
                        },
                        child: const Text('Change')),
                  ],
                ),
              )
            : req == 'sec'
                ? Center(
                    child: Column(
                    children: [
                      const Text('Hello'),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              req = 'third';
                            });
                          },
                          child: const Text('Change')),
                    ],
                  ))
                : Center(
                    child: Column(
                    children: [
                      const Text('Hey'),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              req = 'first';
                            });
                          },
                          child: const Text('Change')),
                    ],
                  )),
      ),
    );
  }
}

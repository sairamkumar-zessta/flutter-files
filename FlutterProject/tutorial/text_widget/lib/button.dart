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
        appBar: AppBar(title: const Text('Buttons')),
        body: SizedBox(
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    // ignore: avoid_print
                    print('Text button pressed');
                  },
                  child: const Text(
                    'Text Button',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    foregroundColor: Colors.blue,
                    padding: const EdgeInsets.all(25),
                    alignment: Alignment.centerLeft,
                    elevation: 5,
                    shadowColor: Colors.blue,
                  ),
                  onPressed: () {
                    // ignore: avoid_print
                    print('Elevated button pressed');
                  },
                  child: const Text('Text Button'),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.pinkAccent,
                  foregroundColor: Colors.orange,
                  onPressed: () {
                    // ignore: avoid_print
                    print('Floating button pressed');
                  },
                  child: const Text('Floating'),
                ),
              ]),
        ),
      ),
    );
  }
}

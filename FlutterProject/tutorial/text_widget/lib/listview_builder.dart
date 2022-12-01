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
        appBar: AppBar(title: const Text('listview builder')),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
                leading: const Icon(Icons.person),
                trailing: const Icon(Icons.call),
                title: Text('Person ${index + 1}'));
          },
          itemCount: 40,
        ),
      ),
    );
  }
}

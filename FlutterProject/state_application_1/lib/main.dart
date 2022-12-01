import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_application_1/providers/counter_provider.dart';
import 'package:state_application_1/screens/first_screens.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (ctx) => Counter())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyFirstScreen(),
      },
    );
  }
}

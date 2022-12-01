import 'package:flutter/material.dart';
import 'package:login_page/selection.dart';
import 'package:login_page/tab_bar_screen.dart';
import './doctor_list.dart';
import './splash.dart';
import './login.dart';
import 'package:provider/provider.dart';
import './patient_details.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Patients(),
        )
      ],
      child: MaterialApp(
        title: 'Health Moniter',
        initialRoute: '/',
        routes: {
          '/': (context) => const Splash(),
          // '/login-page': (ctx) => const MyLogin(),
          MySelection.routeName: (ctx) => const MySelection(),
          MyLogin.routeName: (ctx) => const MyLogin(),
          MyDoctor.routeName: (ctx) => const MyDoctor(),
          MyStepper.routeName: (ctx) => const MyStepper(),
        },
      ),
    );
  }
}

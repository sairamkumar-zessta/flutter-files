import 'package:flutter/material.dart';
import 'package:login_page/add_patient_address.dart';
import 'package:login_page/add_patient_consent.dart';
import 'package:login_page/add_patient_details.dart';
import 'package:login_page/enter_details.dart';
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
        ),
        ChangeNotifierProvider(
          create: (ctx) => Details(),
        ),
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
          TabBarScreen.routeName: (ctx) => const TabBarScreen(),
          AddPatientDetails.routeName: (ctx) => const AddPatientDetails(),
          AddPatientConsentDetails.routeName: (ctx) =>
              AddPatientConsentDetails(),
          AddressDetails.routeName: (ctx) => const AddPatientDetails(),
        },
      ),
    );
  }
}

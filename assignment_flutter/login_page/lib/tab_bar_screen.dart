import 'package:flutter/material.dart';
import 'package:login_page/add_patient_address.dart';
import 'package:login_page/add_patient_consent.dart';
import 'package:login_page/add_patient_details.dart';

class TabBarScreen extends StatefulWidget {
  static const routeName = '/tab-screen';
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF002780),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Health Monitor',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF002780),
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Patient\nDetails',
                  style: TextStyle(
                      color: Color(0xFF002780),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Contact\nDetails',
                  style: TextStyle(
                      color: Color(0xFF002780),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Consent Declaration',
                  style: TextStyle(
                      color: Color(0xFF002780),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          const AddPatientDetails(),
          const AddressDetails(),
          AddPatientConsentDetails(),
        ]),
      ),
    );
  }
}

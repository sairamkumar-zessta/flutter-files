// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:login_page/enter_details.dart';
import 'package:login_page/patient_details.dart';

import 'package:provider/provider.dart';
import 'package:flutter_switch/flutter_switch.dart';

class AddPatientConsentDetails extends StatefulWidget {
  static const routeName = 'patient-cons';
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;

  AddPatientConsentDetails({super.key});

  @override
  State<AddPatientConsentDetails> createState() =>
      _AddPatientConsentDetailsState();
}

class _AddPatientConsentDetailsState extends State<AddPatientConsentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'As a part of screening the household\ncontact, Have you done the following',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0D0D0D),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 250,
                      child: Text(
                        'Explained about the study and taken consent',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0D0D0D),
                        ),
                      ),
                    ),
                    FlutterSwitch(
                      padding: 0,
                      activeTextColor: Colors.black,
                      inactiveTextColor: Colors.black,
                      activeText: 'Yes',
                      inactiveText: 'No',
                      activeToggleColor: const Color(0xFF002780),
                      inactiveToggleColor: const Color(0xFF002780),
                      activeSwitchBorder:
                          Border.all(color: const Color(0xFF002780)),
                      inactiveSwitchBorder:
                          Border.all(color: const Color(0xFF002780)),
                      inactiveColor: Colors.white,
                      activeColor: Colors.white,
                      width: 80.0,
                      height: 30.0,
                      valueFontSize: 15.0,
                      toggleSize: 30.0,
                      value: widget.value1,
                      borderRadius: 30.0,
                      showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          widget.value1 = val;
                        });
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 250,
                      child: Text(
                        'Provided educational video',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0D0D0D),
                        ),
                      ),
                    ),
                    FlutterSwitch(
                      padding: 0,
                      activeTextColor: Colors.black,
                      inactiveTextColor: Colors.black,
                      activeText: 'Yes',
                      inactiveText: 'No',
                      activeToggleColor: const Color(0xFF002780),
                      inactiveToggleColor: const Color(0xFF002780),
                      activeSwitchBorder:
                          Border.all(color: const Color(0xFF002780)),
                      inactiveSwitchBorder:
                          Border.all(color: const Color(0xFF002780)),
                      inactiveColor: Colors.white,
                      activeColor: Colors.white,
                      width: 80.0,
                      height: 30.0,
                      valueFontSize: 15.0,
                      toggleSize: 30.0,
                      value: widget.value2,
                      borderRadius: 30.0,
                      showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          widget.value2 = val;
                        });
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 250,
                      child: Text(
                        'Provided labelled kit to each family member',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0D0D0D),
                        ),
                      ),
                    ),
                    FlutterSwitch(
                      padding: 0,
                      activeTextColor: Colors.black,
                      inactiveTextColor: Colors.black,
                      activeText: 'Yes',
                      inactiveText: 'No',
                      activeToggleColor: const Color(0xFF002780),
                      inactiveToggleColor: const Color(0xFF002780),
                      activeSwitchBorder:
                          Border.all(color: const Color(0xFF002780)),
                      inactiveSwitchBorder:
                          Border.all(color: const Color(0xFF002780)),
                      inactiveColor: Colors.white,
                      activeColor: Colors.white,
                      width: 80.0,
                      height: 30.0,
                      valueFontSize: 15.0,
                      toggleSize: 30.0,
                      value: widget.value3,
                      borderRadius: 30.0,
                      showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          widget.value3 = val;
                        });
                      },
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  'Please enter the kit number provided\nto family',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0D0D0D),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(top: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'kit Number',
                    hintStyle: const TextStyle(
                        color: Color(0xFF727272),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5)),
                    filled: true,
                    fillColor: const Color(0xFFF0F0F0),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        DefaultTabController.of(context)!.animateTo(1);
                      },
                      child: const Text('Previous')),
                  ElevatedButton(
                      onPressed: () {
                        final details =
                            Provider.of<Details>(context, listen: false)
                                .details;
                        final add =
                            Provider.of<Patients>(context, listen: false);
                        add.addPatientDeatails(
                            details['name'],
                            details['gender'],
                            details['age'],
                            details['status']);
                        Navigator.of(context).pop();
                      },
                      child: const Text('Next'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

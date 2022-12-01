import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      
      padding: 0,
      activeTextColor: Colors.black,
      inactiveTextColor: Colors.black,
      activeText: 'Yes',
      inactiveText: 'No',
      activeToggleColor: const Color(0xFF002780),
      inactiveToggleColor: const Color(0xFF002780),
      activeSwitchBorder: Border.all(color: const Color(0xFF002780)),
      inactiveSwitchBorder: Border.all(color: const Color(0xFF002780)),
      inactiveColor: Colors.white,
      activeColor: Colors.white,
      width: 80.0,
      height: 30.0,
      valueFontSize: 15.0,
      toggleSize: 30.0,
      value: status,
      borderRadius: 30.0,
      showOnOff: true,
      onToggle: (val) {
        setState(() {
          status = val;
        });
      },
    );
  }
}

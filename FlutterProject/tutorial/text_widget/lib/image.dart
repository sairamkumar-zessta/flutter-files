import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SizedBox(
            height: double.infinity,
            child: Image.asset(
              'images/background.png',
              fit: BoxFit.cover,
              // height:
              // width:
              // color: Colors.red,
              // colorBlendMode: BlendMode.darken,
              semanticLabel: 'corona image',
              matchTextDirection: true,
            ),
          ),
        ),
      ),
    );
  }
}

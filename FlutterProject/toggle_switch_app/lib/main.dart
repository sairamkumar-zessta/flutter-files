import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}











// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   _State createState() => _State();
// }

// class _State extends State<MyApp> {
//   bool isSwitched = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter - tutorialkart.com'),
//         ),
//         body: Center(
//           child: Switch(
//             value: isSwitched,
//             onChanged: (value) {
//               setState(() {
//                 isSwitched = value;
//                 print(isSwitched);
//               });
//             },
//             activeTrackColor: Colors.lightGreenAccent,
//             activeColor: Colors.green,
//           ),
//         ));
//   }
// }

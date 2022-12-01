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
        appBar: AppBar(
          title: const Text('Text Field'),
        ),
        body: const Center(
          child: TextField(
            keyboardType: TextInputType.number,
            autofocus: true,
            // enabled: false,
            // readOnly: true,
            decoration: InputDecoration(
              /*border: InputBorder.none*/ labelText: "First Name",
              filled: true,
              fillColor: Colors.orange,
              // border: OutlineInputBorder(
              //     borderSide: BorderSide.none,
              //     borderRadius: BorderRadius.circular(30)),
              hintText: 'Amount',
              hintStyle: TextStyle(color: Colors.white, fontSize: 20),
              helperText: 'in rupee or dollar',
              helperStyle: TextStyle(color: Colors.white, fontSize: 20),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple)),
              icon: Icon(Icons.person),
              prefix: CircularProgressIndicator(),
              //Icon(Icons.person),
              // suffix: Icon(
              //   Icons.person,
              //   color: Colors.white,
              //   size: 30,
              // ),
              suffixText: 'hi',
            ),
            cursorColor: Colors.white,
            cursorWidth: 10,
            cursorHeight: 50,
            showCursor: true,
            maxLines: 1,
            maxLength: 4,
            obscureText: true,
            obscuringCharacter: '#',
            toolbarOptions: ToolbarOptions(
              copy: true,
              cut: true,
            ),
          ),
        ),
      ),
    );
  }
}

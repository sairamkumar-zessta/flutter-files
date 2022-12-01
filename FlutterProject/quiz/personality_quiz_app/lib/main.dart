import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Personnel Quiz', home: MyHome());
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  int reqIndex = 0;
  void questionAnswer() {
    setState(() {
      reqIndex += 1;
      if (reqIndex == questions.length) {
        reqIndex = 0;
      }
    });
  }

  var questions = [
    {
      'que': 'What\'s Your Favourite Place?',
      'answ': ['nirmal', 'Warangal', 'Vizag', 'Hyderabad']
    },
    {
      'que': 'What\'s Your Favourite Color?',
      'answ': ['White', 'Red', 'Green', "Blue"]
    },
    {
      'que': 'What\'s Your Favourite Animal?',
      'answ': ['Lion', 'Rabbit', 'Cat', 'Dog']
    },
  ];
  var answer = [
    ['nirmal', 'Warangal', 'Vizag', 'Hyderabad'],
    ['White', 'Red', 'Green', "Blue"],
    ['Lion', 'Rabbit', 'Cat', 'Dog']
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Personnel Quiz')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questions[reqIndex]['que'] as String,
              style: const TextStyle(fontSize: 25),
            ),
            // (answer[reqIndex]).forEach((element) {
            //   ElevatedButton(onPressed: questionAnswer, child: Text(element));
            // })
            ElevatedButton(
              onPressed: questionAnswer,
              style: ElevatedButton.styleFrom(minimumSize: const Size(100, 40)),
              child: Text(answer[reqIndex][0]),
            ),
            ElevatedButton(
                onPressed: questionAnswer,
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(100, 40)),
                child: Text(answer[reqIndex][1])),
            ElevatedButton(
                onPressed: questionAnswer,
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(100, 40)),
                child: Text(answer[reqIndex][2])),
            ElevatedButton(
                onPressed: questionAnswer,
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(100, 40)),
                child: Text(answer[reqIndex][3])),
          ],
        ));
  }
}

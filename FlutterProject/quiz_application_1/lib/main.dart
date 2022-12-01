import 'package:flutter/material.dart';
import './question_answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'QuizApp',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int index = 0;
  int total = 0;
  void home() {
    setState(() {
      index = 0;
      total = 0;
    });
  }

  void change(int marks) {
    setState(() {
      index += 1;
      total += marks;
      // print(total);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quiz App')),
      body: index > quesAnsw.length - 1
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Game Over \n your score is :$total'),
                  ElevatedButton(onPressed: home, child: const Text('Home'))
                ],
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    quesAnsw[index].question,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      change(quesAnsw[index].answer1['marks']);
                    },
                    child: Text(quesAnsw[index].answer1['answ'])),
                ElevatedButton(
                    onPressed: () {
                      change(quesAnsw[index].answer2['marks']);
                    },
                    child: Text(quesAnsw[index].answer2['answ'])),
                ElevatedButton(
                    onPressed: () {
                      change(quesAnsw[index].answer3['marks']);
                    },
                    child: Text(quesAnsw[index].answer3['answ'])),
                ElevatedButton(
                    onPressed: () {
                      change(quesAnsw[index].answer4['marks']);
                    },
                    child: Text(quesAnsw[index].answer4['answ']))
              ],
            ),
    );
  }
}

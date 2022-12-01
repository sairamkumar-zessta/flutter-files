import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Personnel Quiz App', home: MyHome());
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var _reqIndex = 0;
  int _score = 0;
  void _questionAnswer(int sc) {
    _score += sc;
    setState(() {
      _reqIndex += 1;
    });
  }

  void _reset() {
    setState(() {
      _reqIndex = 0;
      _score = 0;
    });
  }

  final List _questions = [
    {
      'que': 'What\'s your Favourite Place?',
      'answ': [
        {'text': 'Hyderabad', 'score': 3},
        {'text': 'Nirmal', 'score': 1},
        {'text': 'Warangal', 'score': 5},
        {'text': 'Vizag', 'score': 10}
      ]
    },
    {
      'que': 'What\'s your Favourite Animal?',
      'answ': [
        {'text': 'Cat', 'score': 3},
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Dear', 'score': 5},
        {'text': 'Lion', 'score': 10}
      ]
    },
    {
      'que': 'What\'s your Favourite Colour?',
      'answ': [
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
        {'text': 'Red', 'score': 5},
        {'text': 'Black', 'score': 10}
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personnel Quiz'),
      ),
      body: _reqIndex < _questions.length
          ? Quiz(
              questions: _questions,
              reqIndex: _reqIndex,
              questionAnswer: _questionAnswer)
          : Result(_reset, _score),
    );
  }
}

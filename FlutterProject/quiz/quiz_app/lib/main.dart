import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _reqIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _reqIndex = 0;
      _totalScore = 0;
    });
  }

  static const _questions = [
    {
      'questionText': 'What\'s your favourite place?',
      'answers': [
        {'text': 'Vizag', 'score': 5},
        {'text': 'Nirmal', 'score': 1},
        {'text': 'Hyderabad', 'score': 3},
        {'text': 'Warangal', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Fox', 'score': 3},
        {'text': 'Lion', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 5},
        {'text': 'White', 'score': 1},
        {'text': 'Green', 'score': 3},
        {'text': 'Black', 'score': 10}
      ]
    },
  ];
  void _questionAnswer(int score) {
    setState(() {
      _reqIndex += 1;
      _totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Personal Quiz App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Personnel Quiz'),
          ),
          body: _reqIndex < _questions.length
              ? Quiz(
                  questionAnswer: _questionAnswer,
                  questions: _questions,
                  reqIndex: _reqIndex)
              : Result(_totalScore, _resetQuiz),
        ));
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback reset;
  final int score;
  const Result(this.reset, this.score, {super.key});
  String get resultPhrase {
    var resultText = '';
    if (score <= 5) {
      resultText = 'You are awesome and innocent!';
    } else if (score <= 12) {
      resultText = 'Pretty likable!';
    } else if (score <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'your score:$score \n $resultPhrase',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        TextButton(
            onPressed: reset,
            child: const Text(
              'Reset Quiz!',
              style: TextStyle(color: Colors.orange),
            ))
      ]),
    );
  }
}

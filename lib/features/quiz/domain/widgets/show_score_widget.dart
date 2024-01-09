import 'package:flutter/material.dart';

class ShowScore extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final Function() onRestart;
  final Function() onBack;

  const ShowScore(
      {super.key,
      required this.score,
      required this.totalQuestions,
      required this.onRestart,
      required this.onBack});

  @override
  Widget build(BuildContext context) {
    bool isPassed = score >= totalQuestions * 0.6;
    String title = isPassed ? 'Passed' : 'Failed';
    return AlertDialog(
      title: Text(
        '$title | Score is $score',
        style: TextStyle(
          color: isPassed ? Colors.green : Colors.redAccent,
        ),
      ),
      content: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: onRestart, child: const Text('Restart')),
          ElevatedButton(onPressed: onBack, child: const Text('Back'))
        ],
      ),
    );
  }
}

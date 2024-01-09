import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/quiz/domain/widgets/show_score_widget.dart';
import 'package:flutter_learn_app/features/theory/ui/screens/theory_screen.dart';

class NextButtonWidget extends StatelessWidget {
  final bool isLastQuestion;
  final VoidCallback onNextPressed;
  final int score;
  final int totalQuestions;
  final VoidCallback onRestart;
  final VoidCallback onBack;

  const NextButtonWidget({
    Key? key,
    required this.isLastQuestion,
    required this.onNextPressed,
    required this.score,
    required this.totalQuestions,
    required this.onRestart,
    required this.onBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.5,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue.shade900,
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          if (isLastQuestion) {
            showDialog(
              context: context,
              builder: (_) => ShowScore(
                score: score,
                totalQuestions: totalQuestions,
                onRestart: () {
                  onRestart();
                },
                onBack: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TheoryScreen(),
                    ),
                  );
                },
              ),
            );
          } else {
            onNextPressed();
          }
        },
        child: const Text('Next'),
      ),
    );
  }
}

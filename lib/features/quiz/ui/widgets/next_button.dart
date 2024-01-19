import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/features/quiz/ui/cubit/quiz_cubit.dart';
import 'package:flutter_learn_app/features/quiz/ui/widgets/show_score_widget.dart';

class NextButtonWidget extends StatelessWidget {
  final bool isLastQuestion;

  const NextButtonWidget({
    Key? key,
    required this.isLastQuestion,
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
            _showScoreDialog(context);
          } else {}
        },
        child: const Text('Next'),
      ),
    );
  }

  void _showScoreDialog(BuildContext context) {
    final quizState = context.read<QuizCubit>().state;
    final bloc = context.watch<QuizCubit>();
    showDialog(
      context: context,
      builder: (_) => ShowScore(
        score: quizState.score,
        totalQuestions: quizState.questionList.length,
        onRestart: () {
          Navigator.of(context).pop();
          bloc.onRestart(); // Закрыть диалоговое окно
        },
        onBack: () {
          Navigator.of(context).pop(); // Закрыть диалоговое окно
          // Выполнить другое действие при нажатии "Back"
        },
      ),
    );
  }
}

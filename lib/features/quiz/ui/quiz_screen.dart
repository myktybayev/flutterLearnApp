import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/features/quiz/ui/widgets/answer_list_widget.dart';
import 'package:flutter_learn_app/features/quiz/ui/widgets/next_button.dart';
import 'package:flutter_learn_app/features/quiz/ui/widgets/question_widget.dart';

import 'cubit/quiz_cubit.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  QuizCubit get bloc => context.read<QuizCubit>();
  @override
  Widget build(BuildContext context) {
    final state = context.watch<QuizCubit>().state;
    final questionList = state.questionList;
    var currentQuestionIndex = state.currentQuestionIndex;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Quiz App',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            QuestionWidget(
              question: questionList[currentQuestionIndex].questionText,
              questionIndex: currentQuestionIndex,
              totalQuestions: questionList.length,
            ),
            Column(
              children: questionList[currentQuestionIndex]
                  .answerList
                  .map((answer) => AnswerListWidget(
                      answer: answer,
                      isSelected: answer == state.selectedAnswer,
                      onTap: (selectedAnswer) {
                        bloc.onTapAnswer(selectedAnswer);
                      }))
                  .toList(),
            ),
            NextButtonWidget(
              isLastQuestion: currentQuestionIndex == questionList.length - 1,
            )
          ],
        ),
      ),
    );
  }
}

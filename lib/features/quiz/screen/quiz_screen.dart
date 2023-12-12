import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/quiz/model/quiz.dart';
import 'package:flutter_learn_app/features/quiz/widgets/answer_list_widget.dart';
import 'package:flutter_learn_app/features/quiz/widgets/next_button.dart';
import 'package:flutter_learn_app/features/quiz/widgets/question_widget.dart';
import 'package:flutter_learn_app/features/quiz/widgets/show_score_widget.dart';
import 'package:flutter_learn_app/features/theory/screens/theory_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;
  bool isAnswerCorrect = false;
  @override
  Widget build(BuildContext context) {
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
                      isSelected: answer == selectedAnswer,
                      onTap: (selectedAnswer) {
                        setState(() {
                          if (this.selectedAnswer == null) {
                            this.selectedAnswer = selectedAnswer;
                            if (selectedAnswer.isCorrect) {
                              score++;
                            }
                          } else {
                            if (this.selectedAnswer != selectedAnswer) {
                              if (selectedAnswer.isCorrect) {
                                score++;
                              }
                              this.selectedAnswer = selectedAnswer;
                            } else {
                              // Deselecting the answer
                              this.selectedAnswer = null;
                              if (selectedAnswer.isCorrect) {
                                score--;
                              }
                            }
                          }
                        });
                      }))
                  .toList(),
            ),
            NextButtonWidget(
              isLastQuestion: currentQuestionIndex == questionList.length - 1,
              onNextPressed: () {
                setState(() {
                  selectedAnswer = null;
                  currentQuestionIndex++;
                });
              },
              score: score,
              totalQuestions: questionList.length,
              onRestart: () {
                Navigator.pop(context);
                setState(() {
                  currentQuestionIndex = 0;
                  score = 0;
                  selectedAnswer = null;
                });
              },
              onBack: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TheoryScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

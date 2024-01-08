import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/quiz/model/quiz.dart';

class AnswerListWidget extends StatelessWidget {
  final Answer answer;
  final bool isSelected;
  final Function(Answer) onTap;

  const AnswerListWidget({
    Key? key,
    required this.answer,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected ? Colors.white : Colors.black,
          backgroundColor: isSelected ? Colors.orangeAccent : Colors.grey.shade500,
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          onTap(answer); // Pass the selected answer to the onTap function
        },
        child: Text(answer.answerText),
      ),
    );
  }
}

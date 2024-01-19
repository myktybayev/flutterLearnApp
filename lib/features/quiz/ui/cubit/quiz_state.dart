import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_learn_app/features/quiz/data/quiz.dart';

part 'quiz_state.freezed.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    @Default(0) int currentQuestionIndex,
    @Default(0) int score,
    Answer? selectedAnswer,
    required List<Question> questionList,
  }) = QuizStateLoaded;
}

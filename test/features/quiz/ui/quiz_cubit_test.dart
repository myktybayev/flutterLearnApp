import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_learn_app/features/quiz/data/quiz.dart';
import 'package:flutter_learn_app/features/quiz/ui/cubit/quiz_cubit.dart';
import 'package:flutter_learn_app/features/quiz/ui/cubit/quiz_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late QuizCubit quizCubit;

  setUp(() {
    quizCubit = QuizCubit();
  });

  blocTest<QuizCubit, QuizState>(
    'emits [QuizState.questionList = getQuestions()] _initializeQuiz()',
    build: () => quizCubit,
    act: (quizCubit) => quizCubit.initializeQuiz(),
    expect: () => [
      getQuestions(),
    ],
  );
}

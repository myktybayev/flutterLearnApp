import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_learn_app/features/quiz/ui/cubit/quiz_cubit.dart';
import 'package:flutter_learn_app/features/quiz/ui/cubit/quiz_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late QuizCubit quizCubit;

  setUp(() {
    quizCubit = QuizCubit();
  });

  // Testing initialization
  blocTest<QuizCubit, QuizState>(
    'emits state with initialized question list on quiz start',
    build: () => quizCubit,
    act: (cubit) => cubit.initializeQuiz(),
    expect: () => [
      isA<QuizState>()
          .having((state) => state.questionList, 'questionList', isNotEmpty),
    ],
  );

  // Testing answer selection
  blocTest<QuizCubit, QuizState>(
    'emits state with selected answer and updated score for correct answer',
    build: () => quizCubit,
    act: (cubit) async {
      await cubit.initializeQuiz();
      cubit.onTapAnswer(cubit.state.questionList[0]
          .answerList[1]); // Assuming this is the correct answer
    },
    expect: () => [
      isA<QuizState>(),
      isA<QuizState>().having((state) => state.score, 'score', 1),
    ],
  );

  // Testing navigation to the next question
  blocTest<QuizCubit, QuizState>(
    'emits state with next question index',
    build: () => quizCubit,
    act: (cubit) async {
      await cubit.initializeQuiz();
      cubit.nextPressed();
    },
    expect: () => [
      isA<QuizState>(),
      isA<QuizState>().having(
          (state) => state.currentQuestionIndex, 'currentQuestionIndex', 1),
    ],
  );

  // Testing quiz restart
  blocTest<QuizCubit, QuizState>(
    'emits initial state on quiz restart',
    build: () => quizCubit,
    act: (cubit) async {
      await cubit.initializeQuiz();
      cubit.onTapAnswer(
          cubit.state.questionList[0].answerList[1]); // Select correct answer
      cubit.nextPressed();
      cubit.onRestart();
    },
    expect: () => [
      isA<QuizState>(),
      isA<QuizState>(),
      isA<QuizState>(),
      isA<QuizState>()
          .having(
              (state) => state.currentQuestionIndex, 'currentQuestionIndex', 0)
          .having((state) => state.score, 'score', 0)
          .having((state) => state.selectedAnswer, 'selectedAnswer', null),
    ],
  );

  tearDown(() {
    quizCubit.close();
  });
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/features/quiz/data/quiz.dart';
import 'package:flutter_learn_app/features/quiz/ui/cubit/quiz_state.dart';

class QuizCubit extends Cubit<QuizState> {
  QuizCubit() : super(const QuizState(questionList: [])) {
    initializeQuiz();
  }
  Future<void> initializeQuiz() async {
    List<Question> questions = getQuestions();
    emit(QuizState(questionList: questions));
  }

  void onTapAnswer(Answer? answer) {
    if (answer != null && answer != state.selectedAnswer) {
      emit(state.copyWith(selectedAnswer: answer));
      if (answer.isCorrect) {
        emit(state.copyWith(score: state.score + 1));
      }
    } else if (answer == state.selectedAnswer) {
      if (answer!.isCorrect) {
        emit(state.copyWith(score: state.score - 1));
      }
      answer = null;
    }
  }

  void nextPressed() {
    emit(state.copyWith(
        selectedAnswer: null,
        currentQuestionIndex: state.currentQuestionIndex + 1));
  }

  void onRestart() {
    emit(state.copyWith(
        currentQuestionIndex: 0, score: 0, selectedAnswer: null));
  }
}

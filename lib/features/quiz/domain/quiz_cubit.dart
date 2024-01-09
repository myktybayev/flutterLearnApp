import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/features/quiz/domain/quiz_state.dart';

class QuizCubit extends Cubit<QuizState> {
  QuizCubit() : super(const QuizState());
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_state.freezed.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState() = _QuizState;
}

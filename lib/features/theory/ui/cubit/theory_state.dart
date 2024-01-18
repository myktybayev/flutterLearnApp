import 'package:flutter_learn_app/features/theory/domain/models/theories_topic_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theory_state.freezed.dart';

@freezed
class TheoryState with _$TheoryState {
  const factory TheoryState({
    @Default([]) List<TheoryList> theoryList,
    @Default([]) List<TheoryList> filteredTheoryList,
  }) = _TheoryState;
}

import 'package:flutter_learn_app/features/courses/domain/models/course.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_state.freezed.dart';

@freezed
class SavedState with _$SavedState {
  const factory SavedState.loading({
    @Default([]) List<Course> list,
  }) = SavedStateLoading;
}

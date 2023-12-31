import 'package:flutter_learn_app/features/courses/domain/models/course.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses_state.freezed.dart';

@freezed
class CoursesState with _$CoursesState {
  const factory CoursesState({
    required List<Course> courses,
  }) = _CoursesState;
}

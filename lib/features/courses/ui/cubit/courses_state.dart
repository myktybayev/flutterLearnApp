import 'package:flutter_learn_app/features/courses/domain/models/course.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses_state.freezed.dart';

@freezed
class CoursesState with _$CoursesState {
  const factory CoursesState.loading() = CoursesStateLoading;

  const factory CoursesState.loaded({
    required List<Course> courses,
  }) = CoursesStateIdle;

  const factory CoursesState.error({String? message}) = CoursesStateError;
}

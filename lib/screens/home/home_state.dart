import 'package:flutter_learn_app/screens/home/models/course.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<Course> courses,
  }) = _HomeState;
}

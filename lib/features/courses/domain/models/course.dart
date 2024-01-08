import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required String title,
    required int progress,
    required String imageUrl,
    @Default(false) bool isSaved,
  }) = _Course;
}

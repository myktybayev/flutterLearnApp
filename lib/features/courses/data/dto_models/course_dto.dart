import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_dto.g.dart';

@JsonSerializable()
class CourseDto {
  @JsonKey(name: '_id')
  final String id;

  final String title;

  const CourseDto({
    required this.id,
    required this.title,
  });

  factory CourseDto.fromJson(Map<String, dynamic> json) =>
      _$CourseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CourseDtoToJson(this);
}

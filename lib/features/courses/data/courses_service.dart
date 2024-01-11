import 'package:flutter_learn_app/features/courses/data/dto_models/course_dto.dart';

abstract class CoursesService {
  Future<List<CourseDto>> getCourses();
}

import 'package:flutter_learn_app/features/courses/domain/models/course.dart';

abstract class CoursesRepository {
  Future<List<Course>> getAllCourses();
}

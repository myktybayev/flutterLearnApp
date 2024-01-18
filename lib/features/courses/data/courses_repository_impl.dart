import 'package:flutter_learn_app/features/courses/data/courses_repository.dart';
import 'package:flutter_learn_app/features/courses/data/courses_service.dart';
import 'package:flutter_learn_app/features/courses/data/dto_models/course_dto.dart';
import 'package:flutter_learn_app/features/courses/domain/models/course.dart';

class CoursesRepositoryImpl implements CoursesRepository {
  final CoursesService coursesService;

  CoursesRepositoryImpl({required this.coursesService});

  @override
  Future<List<Course>> getAllCourses() async {
    try {
      List<CourseDto> courseDtos = await coursesService.getCourses();
      return courseDtos
          .map((e) => Course(title: e.title, progress: 0, imageUrl: 'imageUrl'))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}

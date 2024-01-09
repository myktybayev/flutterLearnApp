import 'package:flutter_learn_app/features/courses/data/courses_repository.dart';
import 'package:flutter_learn_app/features/courses/data/courses_service.dart';

class CoursesRepositoryImpl implements CoursesRepository {
  final CoursesService coursesService;

  CoursesRepositoryImpl({required this.coursesService});

  @override
  Future<void> getAllCourses() async {
    throw UnimplementedError();
  }
}

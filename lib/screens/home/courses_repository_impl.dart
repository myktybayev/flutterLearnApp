import 'package:flutter_learn_app/screens/home/courses_repository.dart';
import 'package:flutter_learn_app/screens/home/courses_service.dart';

class CoursesRepositoryImpl implements CoursesRepository {
  final CoursesService coursesService;

  CoursesRepositoryImpl({required this.coursesService});

  @override
  Future<void> getAllCourses() async {
    final courses = await coursesService.getCourses();
    
    throw UnimplementedError();
  }
}

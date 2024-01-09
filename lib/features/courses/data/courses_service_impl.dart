import 'package:dio/dio.dart';
import 'package:flutter_learn_app/features/courses/data/courses_service.dart';

class CoursesServiceImpl implements CoursesService {
  final Dio dio;

  CoursesServiceImpl({required this.dio});

  @override
  Future<void> getCourses() async {
    try {
      final response = await dio.get('/courses');
      response.data;
    } on Object catch (_) {
      rethrow;
    }
  }
}

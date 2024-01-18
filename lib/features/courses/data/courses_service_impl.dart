import 'package:dio/dio.dart';
import 'package:flutter_learn_app/features/courses/data/courses_service.dart';
import 'package:flutter_learn_app/features/courses/data/dto_models/course_dto.dart';

class CoursesServiceImpl implements CoursesService {
  final Dio dio;

  CoursesServiceImpl({required this.dio});

  @override
  Future<List<CourseDto>> getCourses() async {
    try {
      final response = await dio.get(
        '/assignments',
        options: Options(
          headers: {
            'Authorization':
                'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySW5mbyI6eyJlbWFpbCI6InRlc3QwMDJAZ21haWwuY29tIiwiZmlyc3ROYW1lIjoidGVzdDAwMiIsInJvbGUiOiJhZG1pbiIsImxhc3ROYW1lIjoidGVzdDAwMiJ9LCJpYXQiOjE3MDQ5Nzk1MjYsImV4cCI6MTcwNDk4MzEyNn0.SAQtE8Vlrf-yFadDFspgP3LRkx5HGtFs4-98BNyc_lg'
          },
        ),
      );

      final data = response.data as Map<String, dynamic>;
      final jsonList = data['data'] as List;
      return jsonList.map((e) => CourseDto.fromJson(e)).toList();
    } on Object catch (_) {
      rethrow;
    }
  }
}

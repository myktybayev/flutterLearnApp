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
        '/assignment',
        options: Options(
          headers: {
            'Authorization':
                'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySW5mbyI6eyJlbWFpbCI6InJhdWFuMDAxQGdtYWlsLmNvbSIsImZpcnN0TmFtZSI6IlJhdWFuMSIsInJvbGUiOiJhZG1pbiIsImxhc3ROYW1lIjoiUmF1YW4gTGFzdDEifSwiaWF0IjoxNzA0OTc1MTIzLCJleHAiOjE3MDQ5Nzg3MjN9.KRUDr4mXWzM2oNs1fygDF5QeDpPDN1wipdMU6NcugCo'
          },
        ),
      );

      final jsonList = response.data as List;

      return jsonList.map((e) => CourseDto.fromJson(e)).toList();
    } on Object catch (_) {
      rethrow;
    }
  }
}

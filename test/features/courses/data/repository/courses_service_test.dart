import 'package:dio/dio.dart';
import 'package:flutter_learn_app/features/courses/data/courses_service_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_learn_app/features/courses/data/dto_models/course_dto.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'courses_service_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;
  late CoursesServiceImpl coursesService;

  setUp(() {
    mockDio = MockDio();
    coursesService = CoursesServiceImpl(dio: mockDio);
  });
  group('CoursesServiceImpl', () {
    test('getCourses returns a list of CourseDto on successful call', () async {
      when(mockDio.get(any, options: anyNamed('options'))).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: '/assignments'),
          data: {
            'data': [
              {
                '_id': '1',
                'title': 'Course 1',
              },
            ],
          },
          statusCode: 200,
        ),
      );
      final result = await coursesService.getCourses();

      expect(result, isA<List<CourseDto>>());
      expect(result.length, 1);
      expect(result.first.id, '1');
    });

    test('getCourses throws an exception when Dio returns null', () async {
      when(mockDio.get(any, options: anyNamed('options'))).thenAnswer(
        (_) async => throw DioError(
          requestOptions: RequestOptions(path: '/assignments'),
          error: 'Error occurred',
        ),
      );

      expect(coursesService.getCourses(), throwsA(isA<DioError>()));
    });

    test('getCourses throws exception on failed call', () {
      when(mockDio.get(any, options: anyNamed('options'))).thenThrow(
        // ignore: deprecated_member_use
        DioError(
          requestOptions: RequestOptions(path: '/assignments'),
          error: 'Error',
        ),
      );

      expect(coursesService.getCourses(), throwsException);
    });
  });
}

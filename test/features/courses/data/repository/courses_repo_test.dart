import 'package:flutter_learn_app/features/courses/data/courses_repository.dart';
import 'package:flutter_learn_app/features/courses/data/courses_repository_impl.dart';
import 'package:flutter_learn_app/features/courses/data/courses_service.dart';
import 'package:flutter_learn_app/features/courses/data/dto_models/course_dto.dart';
import 'package:flutter_learn_app/features/courses/domain/models/course.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'courses_repo_test.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<CoursesService>()])
void main() {
  late CoursesService coursesService;
  late CoursesRepository coursesRepository;
  setUp(
    () => {
      coursesService = MockCoursesService(),
      coursesRepository = CoursesRepositoryImpl(coursesService: coursesService)
    },
  );
  test('getAllCourses returns List of Courses', () async {
    var testCoursesDtoList = [const CourseDto(id: '1', title: 'Test Dto')];

    when(coursesService.getCourses())
        .thenAnswer((_) async => testCoursesDtoList);

    var result = await coursesRepository.getAllCourses();

    expect(result, isA<List<Course>>());
    expect(result.length, 1);
    expect(result[0].title, 'Test Dto');

    verify(coursesService.getCourses()).called(1);
  });
}

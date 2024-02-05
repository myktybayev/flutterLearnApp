import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_learn_app/features/courses/data/courses_repository.dart';
import 'package:flutter_learn_app/features/courses/domain/models/course.dart';
import 'package:flutter_learn_app/features/courses/ui/cubit/courses_cubit.dart';
import 'package:flutter_learn_app/features/courses/ui/cubit/courses_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'courses_cubit_test.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<CoursesRepository>()])
void main() {
  late CoursesCubit coursesCubit;
  late CoursesRepository coursesRepository;

  setUp(() {
    coursesRepository = MockCoursesRepository();
    coursesCubit = CoursesCubit(coursesRepository);
  });

// **** Searching test ****
  blocTest(
    'emits [CoursesState.loaded] and pushes filtered courses list when called searchQuery()',
    build: () {
      when(coursesRepository.getAllCourses()).thenAnswer((_) async => [
            const Course(
              title: 'Основы программирования(Python)',
              progress: 40,
              imageUrl:
                  'https://it-cube48.ru/wp-content/uploads/2020/08/Chto-takoe-Python_1000-0.jpg',
            ),
          ]);
      return coursesCubit;
    },
    act: (coursesCubit) async {
      coursesCubit.init();
      coursesCubit.searchQuery('Python');
    },
    expect: () => [
      const CoursesState.loaded(
        courses: [
          Course(
            title: 'Основы программирования(Python)',
            progress: 40,
            imageUrl:
                'https://it-cube48.ru/wp-content/uploads/2020/08/Chto-takoe-Python_1000-0.jpg',
          ),
        ],
      ),
    ],
  );

// **** When searchQuery returns [] ****

  blocTest<CoursesCubit, CoursesState>(
    'emits [CoursesState.loaded] with an empty list when getAllCourses()',
    build: () {
      when(coursesRepository.getAllCourses()).thenAnswer((_) async => []);
      return coursesCubit;
    },
    act: (coursesCubit) => coursesCubit.init(),
    expect: () => [
      const CoursesState.loaded(
        courses: [],
      ),
    ],
  );

// **** Exception Test ****
  blocTest<CoursesCubit, CoursesState>(
    'emits [CoursesState.error] when getAllCourses[] throws exception',
    build: () {
      when(coursesRepository.getAllCourses())
          .thenThrow(Exception('Failed to load courses'));
      return coursesCubit;
    },
    act: (coursesCubit) => coursesCubit.init(),
    expect: () => [
      const CoursesState.loading(),
      const CoursesState.error(message: 'Failed to load courses')
    ],
  );

// **** Init test ****

  blocTest<CoursesCubit, CoursesState>(
    'emits [CoursesState.loading, CoursesState.loaded]',
    build: () {
      when(coursesRepository.getAllCourses())
          .thenAnswer((_) async => [/* список курсов */]);
      return coursesCubit;
    },
    act: (cubit) => cubit.init(),
    expect: () => [
      isA<CoursesStateLoading>(),
      isA<CoursesStateIdle>(),
    ],
  );
  tearDown(() {
    coursesCubit.close();
  });
}

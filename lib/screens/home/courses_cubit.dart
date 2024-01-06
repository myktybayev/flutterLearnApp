import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/screens/home/courses_state.dart';
import 'package:flutter_learn_app/screens/home/models/course.dart';

class CoursesCubit extends Cubit<CoursesState> {
  CoursesCubit() : super(const CoursesState(courses: courses));

  static const List<Course> courses = [
    Course(
      title: 'Основы веб разработки и создания сайта',
      progress: 60,
      imageUrl:
          'https://media.proglib.io/posts/2020/07/19/6bfa435a69336cd0808fa7267b246c60.png',
    ),
    Course(
      title: 'Основы программирования(Python)',
      progress: 40,
      imageUrl:
          'https://it-cube48.ru/wp-content/uploads/2020/08/Chto-takoe-Python_1000-0.jpg',
    ),
    Course(
      title: 'Основы разработки приложения(Android)',
      progress: 20,
      imageUrl:
          'https://www.antis.kz/upload/iblock/b2f/c217hfbfnokovdaj7hkf89fd1bgs4l2n.png',
    ),
    Course(
      title: 'Основы веб разработки и создания сайта',
      progress: 60,
      imageUrl:
          'https://media.proglib.io/posts/2020/07/19/6bfa435a69336cd0808fa7267b246c60.png',
    ),
    Course(
      title: 'Основы программирования(Python)',
      progress: 40,
      imageUrl:
          'https://it-cube48.ru/wp-content/uploads/2020/08/Chto-takoe-Python_1000-0.jpg',
    ),
    Course(
      title: 'Основы разработки приложения(Android)',
      progress: 20,
      imageUrl:
          'https://www.antis.kz/upload/iblock/b2f/c217hfbfnokovdaj7hkf89fd1bgs4l2n.png',
    ),
  ];

  void searchQuery(String query) {
    final filteredCourses = courses
        .where((course) =>
            course.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
        emit(CoursesState(courses: filteredCourses));
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_learn_app/screens/home/courses_repository.dart';
import 'package:flutter_learn_app/screens/home/courses_repository_impl.dart';
import 'package:flutter_learn_app/screens/home/courses_service.dart';
import 'package:flutter_learn_app/screens/home/courses_service_impl.dart';
import 'package:flutter_learn_app/screens/home/courses_cubit.dart';
import 'package:get_it/get_it.dart';

class DiResolver {
  static final _di = GetIt.instance;

  static Future<void> register() async {
    _registerNetworking();
    _registerServices();
    _registerRepositories();
    _registerCubits();
  }

  static void _registerCubits() {
    _di.registerFactory<CoursesCubit>(() => CoursesCubit());
  }

  static void _registerNetworking() {
    final options = BaseOptions(
      baseUrl: 'http://api.pub.dev',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    );
    final dio = Dio(options);

    _di.registerLazySingleton<Dio>(() => dio);
  }

  static void _registerServices() {
    _di.registerLazySingleton<CoursesService>(
        () => CoursesServiceImpl(dio: _di.get<Dio>()));
  }

  static void _registerRepositories() {
    _di.registerLazySingleton<CoursesRepository>(() => CoursesRepositoryImpl(coursesService: _di.get<CoursesService>()));
  }
}

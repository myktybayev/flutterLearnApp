import 'package:dio/dio.dart';
import 'package:flutter_learn_app/features/courses/data/courses_repository.dart';
import 'package:flutter_learn_app/features/courses/data/courses_repository_impl.dart';
import 'package:flutter_learn_app/features/courses/data/courses_service.dart';
import 'package:flutter_learn_app/features/courses/data/courses_service_impl.dart';
import 'package:flutter_learn_app/features/courses/ui/cubit/courses_cubit.dart';

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

  static void _registerGoogleNetwork() {
    final options = BaseOptions(
      baseUrl: 'http://api.google.com',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    );
    final dio = Dio(options);
    _di.registerLazySingleton<Dio>(() => dio, instanceName: 'Google');
  }

  static void _registerServices() {
    _di.registerLazySingleton<CoursesService>(
        () => CoursesServiceImpl(dio: _di.get<Dio>()));
  }

  static void _registerRepositories() {
    _di.registerLazySingleton<CoursesRepository>(
        () => CoursesRepositoryImpl(coursesService: _di.get<CoursesService>()));
  }
}

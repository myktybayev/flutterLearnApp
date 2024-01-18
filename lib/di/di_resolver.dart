import 'package:dio/dio.dart';
import 'package:flutter_learn_app/features/courses/data/courses_repository.dart';
import 'package:flutter_learn_app/features/courses/data/courses_repository_impl.dart';
import 'package:flutter_learn_app/features/courses/data/courses_service.dart';
import 'package:flutter_learn_app/features/courses/data/courses_service_impl.dart';
import 'package:flutter_learn_app/features/courses/ui/cubit/courses_cubit.dart';
import 'package:flutter_learn_app/features/profile/ui/cubit/profile_cubit.dart';
import 'package:flutter_learn_app/features/quiz/ui/cubit/quiz_cubit.dart';
import 'package:flutter_learn_app/features/theory/ui/cubit/theory_cubit.dart';
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
    _di.registerFactory<CoursesCubit>(
        () => CoursesCubit(_di.get<CoursesRepository>()));
    _di.registerFactory<QuizCubit>(() => QuizCubit());
    _di.registerFactory<ProfileCubit>(() => ProfileCubit());
    _di.registerFactory<TheoryCubit>(() => TheoryCubit());
  }

  static void _registerNetworking() {
    final options = BaseOptions(
      baseUrl: 'https://smavybe-production.up.railway.app',
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

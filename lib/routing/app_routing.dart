import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/features/courses/domain/courses_cubit.dart';
import 'package:flutter_learn_app/features/courses/ui/courses_screen.dart';
import 'package:get_it/get_it.dart';

class AppRoutes {
  static const home = '/home';
  static const signIn = '/sign_in';
  static const login = '/login';
  static const settings = '/settings';
  static const profile = '/profile';
  static const theory = '/theory';
  static const uiKits = '/uiKits';

  static final _di = GetIt.instance;

  static Route<Object?>? generateRoute(RouteSettings settings) {
    final routeName = settings.name;
    switch (routeName) {
      case CoursesScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (_) => _di.get<CoursesCubit>(),
            child: const CoursesScreen(),
          ),
        );
    }
    return null;
  }
}

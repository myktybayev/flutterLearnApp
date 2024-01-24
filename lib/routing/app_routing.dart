import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/features/authentication/ui/auth/cubit/auth_cubit.dart';
import 'package:flutter_learn_app/features/authentication/ui/auth/screen/authentication.dart';
import 'package:flutter_learn_app/features/courses/ui/courses_screen.dart';
import 'package:flutter_learn_app/features/courses/ui/cubit/courses_cubit.dart';
import 'package:flutter_learn_app/features/profile/ui/cubit/profile/profile_cubit.dart';
import 'package:flutter_learn_app/features/profile/ui/cubit/profile_settings/profile_settings_cubit.dart';
import 'package:flutter_learn_app/features/profile/ui/screen/profile_screen.dart';
import 'package:flutter_learn_app/features/profile/ui/screen/profile_settings_screen.dart';
import 'package:flutter_learn_app/features/theory/ui/cubit/theory_cubit.dart';
import 'package:flutter_learn_app/features/theory/ui/screens/theory_screen.dart';
import 'package:get_it/get_it.dart';

class AppRouting {
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
          settings: settings,
        );
      case ProfileScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (_) => _di.get<ProfileCubit>(),
            child: const ProfileScreen(),
          ),
          settings: settings,
        );
      case ProfileSettingsScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (_) => _di.get<ProfileSettingsCubit>(),
            child: const ProfileSettingsScreen(),
          ),
          settings: settings,
        );
      case AuthenticationPage.routeName:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (_) => _di.get<AuthCubit>(),
            child: const AuthenticationPage(),
          ),
          settings: settings,
        );
      case TheoryScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (_) => _di.get<TheoryCubit>(),
            child: const TheoryScreen(),
          ),
          settings: settings,
        );
    }

    return null;
  }
}

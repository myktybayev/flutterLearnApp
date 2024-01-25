import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/di/di_resolver.dart';
import 'package:flutter_learn_app/features/authentication/ui/cubit/auth_cubit.dart';
import 'package:flutter_learn_app/features/courses/ui/courses_screen.dart';
import 'package:flutter_learn_app/features/courses/ui/cubit/courses_cubit.dart';
import 'package:flutter_learn_app/features/profile/ui/cubit/profile/profile_cubit.dart';
import 'package:flutter_learn_app/features/profile/ui/screen/profile_screen.dart';
import 'package:flutter_learn_app/features/theory/ui/cubit/theory_cubit.dart';
import 'package:flutter_learn_app/features/theory/ui/screens/theory_screen.dart';
import 'package:flutter_learn_app/features/theory/ui/ui_screen.dart';
import 'package:flutter_learn_app/features/video/ui/saved_screen.dart';
import 'package:flutter_learn_app/routing/app_routing.dart';
import 'package:get_it/get_it.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DiResolver.register();
  // final theoriesDir = await getApplicationDocumentsDirectory();
  // Hive.init(theoriesDir.path);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final _di = GetIt.instance;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouting.home,
      onGenerateRoute: AppRouting.generateRoute,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => _di.get<CoursesCubit>()),
          BlocProvider(create: (context) => _di.get<AuthCubit>()),
          BlocProvider(create: (context) => _di.get<TheoryCubit>()),
          BlocProvider(create: (context) => _di.get<ProfileCubit>()),
        ],
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const CoursesScreen(),
    TheoryScreen(),
    const SavedScreen(),
    const ProfileScreen(),
    const UIScreen(),
  ];
  List<String> pageNames = [
    "Курсы",
    "Теорий",
    "Сохраненные",
    "Профиль",
    "Ui Kit",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
              color: Colors.deepPurple,
            ),
            label: pageNames[0],
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.plagiarism,
              color: Colors.deepPurple,
            ),
            label: pageNames[1],
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.favorite,
              color: Colors.deepPurple,
            ),
            label: pageNames[2],
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.person,
              color: Colors.deepPurple,
            ),
            label: pageNames[3],
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.abc_sharp,
              color: Colors.deepPurple,
            ),
            label: pageNames[4],
          ),
        ],
        selectedItemColor: const Color(0xFF4B3FBB),
      ),
    );
  }
}

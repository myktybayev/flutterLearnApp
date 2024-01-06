import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/di/di_resolver.dart';
import 'package:flutter_learn_app/features/theory/screens/theory_screen.dart';
import 'package:flutter_learn_app/features/theory/screens/ui_screen.dart';
import 'package:flutter_learn_app/screens/courses_screen.dart';
import 'package:flutter_learn_app/screens/home/courses_cubit.dart';
import 'package:get_it/get_it.dart';

import 'screens/saved_screen.dart';

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
      home: MultiBlocProvider(providers: [
        BlocProvider(create: (context) => _di.get<CoursesCubit>())
      ], child: const MyHomePage()),
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
    SavedScreen(),
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

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/profile/screen/profile_screen.dart';
import 'package:flutter_learn_app/features/theory/screens/theory_screen.dart';
import 'package:flutter_learn_app/features/theory/screens/ui_screen.dart';
import 'package:flutter_learn_app/screens/home_screen.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

import 'screens/saved_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final theoriesDir = await getApplicationDocumentsDirectory();
  Hive.init(theoriesDir.path);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    TheoryScreen(),
    SavedScreen(),
    ProfileScreen(),
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
        selectedItemColor: Color(0xFF4B3FBB),
      ),
    );
  }
}

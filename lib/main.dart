import 'package:flutter/material.dart';
import 'package:flutter_learn_app/screens/Home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    SavedScreen(),
    ProfileScreen(),
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
            icon: Icon(Icons.home),
            label: 'Курсы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save_alt),
            label: 'Сохраненные',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
        selectedItemColor: Color(0xFF4B3FBB),
      ),
    );
  }
}

class SavedScreen extends StatelessWidget {
  static List<Course> savedCourses = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: savedCourses.isEmpty
            ? Text('No Saved Courses')
            : ListView.builder(
                itemCount: savedCourses.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(savedCourses[index].title),
                    subtitle: Text('${savedCourses[index].progress}% Completed'),
                  );
                },
              ),
      ),
    );
  }
}


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen'),
    );
  }
}
List<Course> savedCourses = [];



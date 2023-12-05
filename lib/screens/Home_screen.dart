import 'package:flutter/material.dart';
import 'package:flutter_learn_app/main.dart';

class Course {
  final String title;
  final int progress;
  bool isSaved; 

  Course(this.title, this.progress, {this.isSaved = false});
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Course> courses = [
    Course('Основы веб разработки и создания сайта', 60),
    Course('Основы программирования(Python)', 40),
    Course('Основы разработки приложения(Android)', 20),
    Course('Основы веб разработки и создания сайта', 60),
    Course('Основы программирования(Python)', 40),
    Course('Основы разработки приложения(Android)', 20),
  ];

  List<Course> filteredCourses = [];

  @override
  void initState() {
    super.initState();
    filteredCourses.addAll(courses);
  }

  void filterSearchResults(String query) {
    List<Course> searchResults = [];
    searchResults.addAll(courses);

    if (query.isNotEmpty) {
      searchResults.retainWhere((course) => course.title.toLowerCase().contains(query.toLowerCase()));
    }

    setState(() {
      filteredCourses.clear();
      filteredCourses.addAll(searchResults);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              decoration: InputDecoration(
                hintText: 'Поиск курса...',
                prefixIcon: Icon(Icons.search, color: Color(0xFF4B3FBB)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF4B3FBB)),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
              cursorColor: Color(0xFF4B3FBB),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredCourses.length,
              itemBuilder: (context, index) {
                return CourseItem(
                  course: filteredCourses[index],
                  onSavePressed: () {
                    setState(() {
                      filteredCourses[index].isSaved = !filteredCourses[index].isSaved;
                    });

                    if (filteredCourses[index].isSaved) {
                      SavedScreen.savedCourses.add(filteredCourses[index]);
                    } else {
                      SavedScreen.savedCourses.remove(filteredCourses[index]);
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  final Course course;
  final VoidCallback onSavePressed;

  CourseItem({required this.course, required this.onSavePressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.save_alt),
                color: course.isSaved ? Color(0xFF4B3FBB) : null,
                onPressed: onSavePressed,
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            course.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 20.0),
          LinearProgressIndicator(
            value: course.progress / 100,
            backgroundColor: Colors.white60,
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF4B3FBB)),
          ),
        ],
      ),
    );
  }
}

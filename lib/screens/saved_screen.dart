import 'package:flutter/material.dart';
import 'package:flutter_learn_app/screens/home/models/course.dart';

class SavedScreen extends StatefulWidget {
  static List<Course> savedCourses = [];

  @override
  _SavedScreenState createState() => _SavedScreenState();

  static void toggleSaved(Course filteredCourse) {
    if (!savedCourses.contains(filteredCourse)) {
      savedCourses.add(filteredCourse);
    } else {
      savedCourses.remove(filteredCourse);
    }
  }
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SavedCoursesList(),
    );
  }
}

class SavedCoursesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: SavedScreen.savedCourses.length,
      itemBuilder: (context, index) {
        return SavedCourseItem(course: SavedScreen.savedCourses[index]);
      },
    );
  }
}

class SavedCourseItem extends StatelessWidget {
  final Course course;

  SavedCourseItem({required this.course});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(course.title),
      subtitle: Text('Progress: ${course.progress}%'),
    );
  }
}

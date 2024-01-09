import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/courses/domain/models/course.dart';

class SavedScreen extends StatefulWidget {
  static List<Course> savedCourses = [];

  const SavedScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
    return const Scaffold(
      body: SavedCoursesList(),
    );
  }
}

class SavedCoursesList extends StatelessWidget {
  const SavedCoursesList({super.key});

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

  const SavedCourseItem({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(course.title),
      subtitle: Text('Progress: ${course.progress}%'),
    );
  }
}

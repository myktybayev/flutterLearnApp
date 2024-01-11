import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/features/courses/domain/models/course.dart';
import 'package:flutter_learn_app/features/courses/ui/cubit/courses_cubit.dart';
import 'package:flutter_learn_app/features/video/ui/home_screens.dart';

class CoursesScreen extends StatefulWidget {
  static const routeName = 'home';
  const CoursesScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  CoursesCubit get bloc => context.read<CoursesCubit>();

  @override
  void initState() {
    bloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CoursesCubit>().state;

    return Scaffold(
      body: SafeArea(
        child: state.map(
          loading: (loading) => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (loaded) {
            final courses = loaded.courses;

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
                  child: TextField(
                    onChanged: (value) {
                      // filterSearchResults(value);
                      bloc.searchQuery(value);
                    },
                    decoration: const InputDecoration(
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
                    cursorColor: const Color(0xFF4B3FBB),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: courses.length,
                    itemBuilder: (context, index) {
                      return CourseItem(
                        course: courses[index],
                        onSavePressed: () {
                          // setState(() {
                          //   courses[index].isSaved = !courses[index].isSaved;
                          // });
                        },
                        onCoursePressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreens(
                                  // course: filteredCourses[index],
                                  ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  final Course course;
  final VoidCallback onSavePressed;
  final VoidCallback onCoursePressed;

  const CourseItem({
    required this.course,
    required this.onSavePressed,
    required this.onCoursePressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCoursePressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(course.imageUrl),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.3),
                    BlendMode.lighten,
                  ),
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 8.0,
                    right: 8.0,
                    child: IconButton(
                      icon: const Icon(Icons.favorite_border),
                      color: course.isSaved ? Color(0xFF4B3FBB) : Colors.white,
                      onPressed: onSavePressed,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              course.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10.0),
            LinearProgressIndicator(
              value: course.progress / 100,
              backgroundColor: Colors.grey,
              valueColor:
                  const AlwaysStoppedAnimation<Color>(Color(0xFF4B3FBB)),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final Course course;

  const CourseDetailsScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: course.isSaved ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 50.0),
              Text(
                course.title,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              LinearProgressIndicator(
                value: course.progress / 100,
                backgroundColor: Colors.grey,
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Color(0xFF4B3FBB)),
              ),
              const SizedBox(height: 16.0),
              const SizedBox(height: 8.0),
            ]),
          ),
        ],
      ),
    );
  }
}

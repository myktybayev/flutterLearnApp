import 'package:flutter/material.dart';
import 'package:flutter_learn_app/screens/home_screens.dart';

class Course {
  final String title;
  final int progress;
  bool isSaved;
  final String imageUrl;

  Course(this.title, this.progress, this.imageUrl, {this.isSaved = false});
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Course> courses = [
    Course('Основы веб разработки и создания сайта', 60,
        'https://media.proglib.io/posts/2020/07/19/6bfa435a69336cd0808fa7267b246c60.png'),
    Course('Основы программирования(Python)', 40,
        'https://it-cube48.ru/wp-content/uploads/2020/08/Chto-takoe-Python_1000-0.jpg'),
    Course(
        'Основы разработки приложения(Android)',
        20,
        'https://www.antis.kz/upload/iblock/b2f/c217hfbfnokovdaj7hkf89fd1bgs4l2n.png'),
            Course('Основы веб разработки и создания сайта', 60,
        'https://media.proglib.io/posts/2020/07/19/6bfa435a69336cd0808fa7267b246c60.png'),
    Course('Основы программирования(Python)', 40,
        'https://it-cube48.ru/wp-content/uploads/2020/08/Chto-takoe-Python_1000-0.jpg'),
    Course(
        'Основы разработки приложения(Android)',
        20,
        'https://www.antis.kz/upload/iblock/b2f/c217hfbfnokovdaj7hkf89fd1bgs4l2n.png'),
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
      searchResults.retainWhere(
          (course) => course.title.toLowerCase().contains(query.toLowerCase()));
    }

    searchResults.sort((a, b) {
      List<String> priorityCourses = [
        'Основы веб разработки и создания сайта',
        'Основы программирования(Python)',
        'Основы разработки приложения(Android)',
      ];

      if (priorityCourses.contains(a.title) && !priorityCourses.contains(b.title)) {
        return -1;
      } else if (!priorityCourses.contains(a.title) && priorityCourses.contains(b.title)) {
        return 1;
      } else {
        return b.progress.compareTo(a.progress);
      }
    });

    setState(() {
      filteredCourses.clear();
      filteredCourses.addAll(searchResults);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                        filteredCourses[index].isSaved =
                            !filteredCourses[index].isSaved;
                      });
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
        ),
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  final Course course;
  final VoidCallback onSavePressed;
  final VoidCallback onCoursePressed;

  CourseItem({
    required this.course,
    required this.onSavePressed,
    required this.onCoursePressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCoursePressed,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2),
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
                      icon: Icon(Icons.favorite_border),
                      color: course.isSaved ? Color(0xFF4B3FBB) : Colors.white,
                      onPressed: onSavePressed,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              course.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.0),
            LinearProgressIndicator(
              value: course.progress / 100,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF4B3FBB)),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final Course course;

  CourseDetailsScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: course.isSaved ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.0),
                Text(
                  course.title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                LinearProgressIndicator(
                  value: course.progress / 100,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF4B3FBB)),
                ),
                SizedBox(height: 16.0),
              
                SizedBox(height: 8.0),
          ]
            ),
          ),
        ],
      ),
    );
  }
}


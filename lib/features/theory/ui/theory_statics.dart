import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class StaticsScreen extends StatefulWidget {
  StaticsScreen({super.key});

  @override
  State<StaticsScreen> createState() => _StaticsScreenState();
}

class _StaticsScreenState extends State<StaticsScreen> {
  Box? _theoryBox;

  @override
  void initState() {
    super.initState();
    Hive.openBox("theory_box").then((_box) {
      setState(() {
        _theoryBox = _box;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Point of Exams",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        leading: const BackButton(
          color: Colors.white,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),
      body: _buildUi(),
    );
  }

  Widget _buildUi() {
    if (_theoryBox == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return ValueListenableBuilder(
        valueListenable: _theoryBox!.listenable(),
        builder: (context, box, widget) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                "$index exam's point is - ${index + 5}",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                );
              },
            ),
          );
        });
  }
}

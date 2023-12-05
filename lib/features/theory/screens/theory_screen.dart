import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/theory/screens/selected_theory.dart';
import 'package:get/get.dart';

import '../models/theories_model.dart';

class TheoryScreen extends StatefulWidget {
  const TheoryScreen({super.key});

  @override
  State<TheoryScreen> createState() => _TheoryScreenState();
}

class _TheoryScreenState extends State<TheoryScreen> {
  List<theoryList> _theory = [];

  @override
  void initState() {
    // TODO: implement initState
    _theory = theoriesList;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<theoryList> results = [];
    if (enteredKeyword.isEmpty) {
      results = theoriesList;
    } else {
      results = theoriesList
          .where((topic) => topic.theory_topic
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _theory = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 15, right: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: 'Search Theory',
                labelStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 35,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _theory.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => SelectedTheory());
                        },
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            title: Text(_theory[index].theory_topic),
                            trailing: const Icon(
                              Icons.favorite,
                              color: Colors.deepPurple,
                            ),
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
            ),
          ],
        ),
      ),
    );
  }
}

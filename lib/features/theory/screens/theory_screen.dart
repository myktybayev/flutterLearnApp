import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn_app/features/theory/screens/selected_theory.dart';

import '../models/theories_topic_model.dart';

class TheoryScreen extends StatefulWidget {
  const TheoryScreen({super.key});

  @override
  State<TheoryScreen> createState() => _TheoryScreenState();
}

class _TheoryScreenState extends State<TheoryScreen> {
  List theoryInfo = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('json/theories_topic.json');
    final data = await json.decode(response);
    setState(() {
      theoryInfo = data["items"];
    });
  }
  // "json/theories_topic.json"

  List<TheoryList> _theory = [];

  @override
  void initState() {
    _theory = theoriesList;
    super.initState();
    readJson();
  }

  void _runFilter(String enteredKeyword) {
    List<TheoryList> results = [];
    if (enteredKeyword.isEmpty) {
      results = theoriesList;
    } else {
      results = theoriesList
          .where((topic) => topic.theoryTopic
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
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Theories",
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
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Column(
          children: [
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
                itemCount: theoryInfo.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            title: Text(
                              theoryInfo[index]["theory_name"],
                            ),
                            trailing: const Icon(
                              Icons.favorite,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelectedTheory(
                                        theory: theoryInfo[index]
                                            ["theory_name"],
                                        topicList:
                                            theoryInfo[index]["topics"] as List,
                                      )));
                        },
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

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_learn_app/features/theory/data/theories_topic_model.dart';
import 'package:flutter_learn_app/features/theory/ui/selected_theory.dart';
import 'package:flutter_learn_app/features/theory/ui/theory_statics.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TheoryScreen extends StatefulWidget {
  TheoryScreen({super.key});

  @override
  State<TheoryScreen> createState() => _TheoryScreenState();
}

class _TheoryScreenState extends State<TheoryScreen> {
  late List<TheoryList> theoryList;
  List<TheoryList> filteredTheoryList = [];

  @override
  void initState() {
    super.initState();

    readJson().then((loadedData) {
      setState(() {
        theoryList = loadedData;
        filteredTheoryList = theoryList;
      });
    });
  }

  List theoryInfo = [];

  Future<List<TheoryList>> readJson() async {
    final String response =
        await rootBundle.loadString('json/theories_topic.json');
    final data = await json.decode(response)["items"];
    return data.map<TheoryList>((json) => TheoryList.fromJson(json)).toList();
  }

  void _runFilter(String enteredKeyword) {
    List<TheoryList> results = [];
    if (enteredKeyword.isEmpty) {
      results = theoryList;
    } else {
      results = theoryList
          .where((theory) => theory.theoryName!
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      filteredTheoryList = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Theories",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
          ),
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
                itemCount: filteredTheoryList.length,
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
                                  filteredTheoryList[index].theoryName ?? '',
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                                leading: InkWell(
                                  onTap: () {
                                    print("asdasdasda");
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                StaticsScreen()));
                                  },
                                  child: CircularPercentIndicator(
                                    circularStrokeCap: CircularStrokeCap.round,
                                    radius: 20.0,
                                    lineWidth: 5.0,
                                    percent: 0.75,
                                    center: const Text(
                                      "75%",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    progressColor: Colors.deepPurple,
                                    backgroundColor:
                                        Colors.deepPurple.withOpacity(0.2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelectedTheory(
                                        theory: filteredTheoryList[index]
                                            .theoryName as String,
                                        topicList: filteredTheoryList[index]
                                            .topics as List,
                                        topicsPharagraph:
                                            filteredTheoryList[index]
                                                .topicsPharagraph as List,
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

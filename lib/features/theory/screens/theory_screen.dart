import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_learn_app/features/theory/screens/selected_theory.dart';

import '../models/theories_topic_model.dart';

class TheoryScreen extends StatefulWidget {
  const TheoryScreen({super.key});

  @override
  State<TheoryScreen> createState() => _TheoryScreenState();
}

class _TheoryScreenState extends State<TheoryScreen> {
  late List<TheoryList> theoryList;
  late List<TheoryList> filteredTheoryList;

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

  // Future<List<TheoryList>> readJson() async {
  //   final String response =
  //       await rootBundle.loadString('json/theories_topic.json');
  //   final data = await json.decode(response);
  //
  //   setState(() {
  //     theoryInfo = data["items"];
  //   });
  //   List<TheoryList> items =
  //       data.map((json) => TheoryList.fromJson(json)).toList();
  //   return items;
  // }

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
          .where((theory) => theory.theory_name!
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
          padding: const EdgeInsets.only(left: 10),
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
              // onChanged: (value) {
              //   setState(() {
              //     filteredTheoryList = theoryList
              //         .where((theory) => theory.theory_name!
              //             .toLowerCase()
              //             .contains(value.toLowerCase()))
              //         .toList();
              //   });
              // },
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
                          child: ListTile(
                            title: Text(
                              filteredTheoryList[index].theory_name ?? '',
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelectedTheory(
                                        theory: filteredTheoryList[index]
                                            .theory_name as String,
                                        topicList: filteredTheoryList[index]
                                            .topics as List,
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

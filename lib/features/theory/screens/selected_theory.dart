import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/theory/models/theories_topic_model.dart';
import '../models/theory_topic_model.dart';
import 'only_indicator.dart';

class SelectedTheory extends StatefulWidget {
  final TheoryList theory;

  SelectedTheory({super.key, required this.theory});

  @override
  State<SelectedTheory> createState() => _SelectedTheoryState();
}

class _SelectedTheoryState extends State<SelectedTheory> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.theory.theoryTopic,
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        leading: const BackButton(
          color: Colors.white,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                theoryTopicList.length,
                (index) => Indicator(
                  isActive: _selectedIndex == index ? true : false,
                ),
              )
            ],
          ),
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              controller: PageController(viewportFraction: 1),
              itemCount: theoryTopicList.length,
              itemBuilder: (BuildContext context, int index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(
                        bottom: 150, top: 80, left: 15, right: 15),
                    child: Column(
                      children: [
                        Text(
                          theoryTopicList[index].topic.toUpperCase(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          theoryTopicList[index].theory,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

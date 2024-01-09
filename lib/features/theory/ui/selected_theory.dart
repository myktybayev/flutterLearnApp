import 'package:flutter/material.dart';

import 'only_indicator.dart';

class SelectedTheory extends StatefulWidget {
  final String theory;
  final List topicList;
  final List topicsPharagraph;

  const SelectedTheory({
    super.key,
    required this.theory,
    required this.topicList,
    required this.topicsPharagraph,
  });

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
          widget.theory,
          style: const TextStyle(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                widget.topicList.length,
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
              itemCount: widget.topicList.length,
              itemBuilder: (BuildContext context, int index) {
                // final isLastItem = index == theoryTopicList.length - 1;
                return DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(top: 50, left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.topicList[index].toUpperCase().toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Text(
                              widget.topicsPharagraph[index]
                                  .toUpperCase()
                                  .toString(),
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        // if (isLastItem)
                        //   ElevatedButton(
                        //       onPressed: () {
                        //         Navigator.push(
                        //             context,
                        //             MaterialPageRoute(
                        //                 builder: (context) =>
                        //                     const QuizScreen()));
                        //       },
                        //       child: const Text('Проверь себя (тест)'))
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

import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/theory/screens/theory_screen.dart';
import 'package:get/get.dart';

import '../models/theory_data_model.dart';
import 'only_indicator.dart';

class SelectedTheory extends StatefulWidget {
  const SelectedTheory({super.key});

  @override
  State<SelectedTheory> createState() => _SelectedTheoryState();
}

class _SelectedTheoryState extends State<SelectedTheory> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 50),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => TheoryScreen());
                  },
                  child: Icon(Icons.arrow_back),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
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
            child: SizedBox(
              height: screenSize.height,
              width: screenSize.width,
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
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 150, top: 50, left: 15, right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            theoryTopicList[index].topic.toUpperCase(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
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
          ),
        ],
      ),
    );
  }
}

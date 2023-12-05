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
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Get.to(() => TheoryScreen());
            },
            child: Container(
              margin: const EdgeInsets.only(left: 15, top: 50),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                theoryTopic.length,
                (index) => Indicator(
                  isActive: _selectedIndex == index ? true : false,
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                controller: PageController(viewportFraction: 1),
                itemCount: theoryTopic.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                theoryTopic[index].topic.toUpperCase(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                theoryTopic[index].theory,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          padding: EdgeInsets.only(bottom: 150, top: 50),
                        ),
                      ],
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

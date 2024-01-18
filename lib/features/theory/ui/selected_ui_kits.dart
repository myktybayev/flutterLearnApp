import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/theory/data/ui_kit_topic.dart';
import 'package:flutter_learn_app/features/theory/data/ui_kits_topic.dart';
import 'package:flutter_learn_app/features/theory/ui/ui_kits_example/custom_scroll_view.dart';

import 'screens/only_indicator.dart';

class SelectedUIKit extends StatefulWidget {
  final UIKitList uiKit;

  SelectedUIKit({Key? key, required this.uiKit}) : super(key: key);

  @override
  State<SelectedUIKit> createState() => _SelectedUIKitState();
}

class _SelectedUIKitState extends State<SelectedUIKit> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.uiKit.uiKitTopic,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
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
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                uiKitsTopicList.length,
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
              itemCount: uiKitsTopicList.length,
              itemBuilder: (BuildContext context, int index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 15,
                        top: 15,
                        left: 15,
                        right: 15,
                      ),
                      child: Column(
                        children: [
                          Text(
                            uiKitsTopicList[index].topic.toUpperCase(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            uiKitsTopicList[index].theory,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CustomScrollViewExampleApp()),
                  );
                },
                child: const Text(
                  "Пример",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/theory/data/ui_kits_topic.dart';
import 'package:flutter_learn_app/features/theory/ui/selected_ui_kits.dart';

class UIScreen extends StatefulWidget {
  const UIScreen({super.key});

  @override
  State<UIScreen> createState() => _UIScreen();
}

class _UIScreen extends State<UIScreen> {
  List<UIKitList> _uiKit = [];

  @override
  void initState() {
    // TODO: implement initState
    _uiKit = uiKitList;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<UIKitList> results = [];
    if (enteredKeyword.isEmpty) {
      results = uiKitList;
    } else {
      results = uiKitList
          .where((topic) => topic.uiKitTopic
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _uiKit = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "UI kits",
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
      body: Padding(
        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: 'Search UI',
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
                itemCount: _uiKit.length,
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
                            title: Text(_uiKit[index].uiKitTopic),
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
                                  builder: (context) =>
                                      SelectedUIKit(uiKit: _uiKit[index])));
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

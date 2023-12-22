import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class StaticsScreen extends StatefulWidget {
  StaticsScreen({super.key});

  @override
  State<StaticsScreen> createState() => _StaticsScreenState();
}

class _StaticsScreenState extends State<StaticsScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  Box? _theoryBox;

  @override
  void initState() {
    super.initState();
    Hive.openBox("theory_box").then((_box) {
      setState(() {
        _theoryBox = _box;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Point of Exams",
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
      body: _buildUi(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _displayTextInputTheory(context),
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildUi() {
    if (_theoryBox == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return ValueListenableBuilder(
        valueListenable: _theoryBox!.listenable(),
        builder: (context, box, widget) {
          final theoyrKeys = box.keys.toList();
          return SizedBox(
            child: ListView.builder(
                itemCount: theoyrKeys.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      index.toString(),
                    ),
                  );
                }),
          );
        });
  }

  Future<void> _displayTextInputTheory(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("jomart"),
            content: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(hintText: "theory..."),
            ),
            actions: [
              MaterialButton(
                color: Colors.deepPurple,
                textColor: Colors.white,
                onPressed: () {},
                child: Text("OK"),
              ),
            ],
          );
        });
  }
}

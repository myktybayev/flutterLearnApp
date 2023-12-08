import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/theory/screens/theory_screen.dart';

class TheoryMain extends StatefulWidget {
  const TheoryMain({super.key});

  @override
  State<TheoryMain> createState() => _TheoryMainState();
}

class _TheoryMainState extends State<TheoryMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ulbosyn's code"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TheoryScreen(),
                  ),
                );
              },
              child: Text("Theory"),
            )
          ],
        ),
      ),
    );
  }
}

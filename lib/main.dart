import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/authentication/authentication.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthenticationPage(),
    );
  }
}


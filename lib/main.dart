import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/authentication/authentication.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthenticationPage(),
    );
  }
}


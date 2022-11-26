import 'package:flutter/material.dart';
import 'package:meu_barbeiro/screens/intro_first_step.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroFirstStep(),
    );
  }
}

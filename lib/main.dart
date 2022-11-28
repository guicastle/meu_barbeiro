import 'package:flutter/material.dart';
import 'package:meu_barbeiro/screens/intro_first_step.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: Scaffold(
        body: const IntroFirstStep(),
      ),
    );
  }
}

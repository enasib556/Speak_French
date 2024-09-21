import 'package:SpeakFrench/screens/HomePage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(FrenchLearningApp());
}

class FrenchLearningApp extends StatelessWidget {
  const FrenchLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
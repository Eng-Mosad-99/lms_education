import 'package:flutter/material.dart';

void main() {
  runApp(const LmsEducation());
}

class LmsEducation extends StatelessWidget {
  const LmsEducation({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("LMS"),
        ),
        body: const Center(
          child: Text("Welcome to LMS"),
        ),
      ),
    );
  }
}


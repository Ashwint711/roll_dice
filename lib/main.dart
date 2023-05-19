import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 23, 1, 101),
            Color.fromARGB(255, 4, 64, 154),
            Colors.blue,
            Color.fromARGB(255, 71, 3, 139),
          ],
        ),
      ),
    );
  }
}
